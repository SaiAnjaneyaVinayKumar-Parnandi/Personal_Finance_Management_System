/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 06_Create_Triggers.sql
 * Module            : Database
 * Purpose           : Creates trigger functions and triggers to enforce
 *                      rules that cannot be expressed through PK, FK,
 *                      UNIQUE, or CHECK constraints alone - specifically
 *                      append-only immutability across PFMS tables, the
 *                      one deliberate exception for milk_purchase_log
 *                      settlement, and the account running balance
 *                      protection on financial_transaction.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 05_Create_Indexes.sql
 *
 * Execution Order   : 06
 *
 * Notes             :
 *  - Execute this script only after 05_Create_Indexes.sql has been run
 *    successfully.
 *  - fn_prevent_update_delete() is a single shared trigger function
 *    reused across every append-only table.
 *  - milk_purchase_log is the one deliberate, named exception to the
 *    immutability rule - only the transaction_id column may ever be
 *    updated on this table, and only via the monthly settlement
 *    operation. No other column may change once inserted.
 *  - Verify successful trigger creation before proceeding.
 **************************************************************************/


-- =========================================================================
-- SECTION 1: Generic immutability enforcement
-- =========================================================================

-- Create a shared trigger function that unconditionally rejects any
-- UPDATE or DELETE attempted against an append-only table

create or replace function fn_prevent_update_delete()
returns trigger as $$
begin
    raise exception 'Records in table % are immutable. UPDATE and DELETE are not permitted.', tg_table_name;
end;
$$ language plpgsql;


-- Attach the immutability trigger to every append-only table

create trigger trg_account_prevent_update_delete
    before update or delete on account
    for each row execute function fn_prevent_update_delete();

create trigger trg_category_prevent_update_delete
    before update or delete on category
    for each row execute function fn_prevent_update_delete();

create trigger trg_sub_category_prevent_update_delete
    before update or delete on sub_category
    for each row execute function fn_prevent_update_delete();

create trigger trg_payment_mode_prevent_update_delete
    before update or delete on payment_mode
    for each row execute function fn_prevent_update_delete();

create trigger trg_merchant_prevent_update_delete
    before update or delete on merchant
    for each row execute function fn_prevent_update_delete();

create trigger trg_budget_prevent_update_delete
    before update or delete on budget
    for each row execute function fn_prevent_update_delete();

create trigger trg_insurance_prevent_update_delete
    before update or delete on insurance
    for each row execute function fn_prevent_update_delete();

create trigger trg_investment_prevent_update_delete
    before update or delete on investment
    for each row execute function fn_prevent_update_delete();

create trigger trg_loan_prevent_update_delete
    before update or delete on loan
    for each row execute function fn_prevent_update_delete();

create trigger trg_utility_prevent_update_delete
    before update or delete on utility
    for each row execute function fn_prevent_update_delete();

create trigger trg_gas_cylinder_log_prevent_update_delete
    before update or delete on gas_cylinder_log
    for each row execute function fn_prevent_update_delete();

create trigger trg_bike_fuel_log_prevent_update_delete
    before update or delete on bike_fuel_log
    for each row execute function fn_prevent_update_delete();

create trigger trg_engine_oil_log_prevent_update_delete
    before update or delete on engine_oil_log
    for each row execute function fn_prevent_update_delete();

create trigger trg_bike_maintenance_log_prevent_update_delete
    before update or delete on bike_maintenance_log
    for each row execute function fn_prevent_update_delete();

create trigger trg_hard_cash_transaction_prevent_update_delete
    before update or delete on hard_cash_transaction
    for each row execute function fn_prevent_update_delete();

create trigger trg_financial_transaction_prevent_update_delete
    before update or delete on financial_transaction
    for each row execute function fn_prevent_update_delete();

create trigger trg_reserve_transaction_prevent_update_delete
    before update or delete on reserve_transaction
    for each row execute function fn_prevent_update_delete();


-- =========================================================================
-- SECTION 2: milk_purchase_log - the one deliberate exception
-- =========================================================================

-- Create a trigger function that allows UPDATE on milk_purchase_log only
-- when the sole change being made is to the transaction_id column
-- (the monthly settlement operation). Any change to any other column
-- is rejected.

create or replace function fn_restrict_milk_settlement_update()
returns trigger as $$
begin
    if  new.purchase_date        is distinct from old.purchase_date
        or new.buffalo_milk_qty      is distinct from old.buffalo_milk_qty
        or new.buffalo_milk_amount   is distinct from old.buffalo_milk_amount
        or new.cow_milk_qty          is distinct from old.cow_milk_qty
        or new.cow_milk_amount       is distinct from old.cow_milk_amount
        or new.curd_qty               is distinct from old.curd_qty
        or new.curd_amount            is distinct from old.curd_amount
    then
        raise exception 'Only transaction_id may be updated on milk_purchase_log (settlement only). All other columns are immutable.';
    end if;

    if old.transaction_id is not null then
        raise exception 'This milk_purchase_log row has already been settled and cannot be re-settled.';
    end if;

    return new;
end;
$$ language plpgsql;


create trigger trg_milk_purchase_log_restrict_update
    before update on milk_purchase_log
    for each row execute function fn_restrict_milk_settlement_update();


-- Milk purchase logs are still never deleted - reuse the generic function
-- for DELETE protection only

create trigger trg_milk_purchase_log_prevent_delete
    before delete on milk_purchase_log
    for each row execute function fn_prevent_update_delete();


-- =========================================================================
-- SECTION 3: financial_transaction - prevent negative account balance
-- =========================================================================

-- Create a trigger function that computes the running balance for the
-- account on the incoming row (existing transactions plus this one) and
-- rejects the insert if the resulting balance would be negative

create or replace function fn_prevent_negative_balance()
returns trigger as $$
declare
    v_current_balance numeric(12, 2);
    v_new_balance      numeric(12, 2);
begin
    select coalesce(sum(
        case when lower(transaction_type) = 'credit' then amount
             else -amount
        end
    ), 0)
    into v_current_balance
    from financial_transaction
    where account_id = new.account_id;

    v_new_balance := v_current_balance +
        case when lower(new.transaction_type) = 'credit' then new.amount
             else -new.amount
        end;

    if v_new_balance < 0 then
        raise exception 'This transaction would result in a negative balance (%) for account_id %.', v_new_balance, new.account_id;
    end if;

    return new;
end;
$$ language plpgsql;


create trigger trg_financial_transaction_prevent_negative_balance
    before insert on financial_transaction
    for each row execute function fn_prevent_negative_balance();