/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 07_Create_Views.sql
 * Module            : Database
 * Purpose           : Creates views to compute derived/aggregated data
 *                      (running balances, budget variance, group/cycle
 *                      balances, pending settlements) directly from the
 *                      underlying transactional tables, avoiding the
 *                      storage of any duplicated or derivable values.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 06_Create_Triggers.sql
 *
 * Execution Order   : 07
 *
 * Notes             :
 *  - Execute this script only after 06_Create_Triggers.sql has been run
 *    successfully.
 *  - These views are the authoritative way to read any derived value
 *    (e.g. current balance) - no derived value is ever stored directly
 *    on a base table.
 *  - Verify successful view creation before proceeding.
 **************************************************************************/


-- Create a view that joins 'budget' against actual spending aggregated from
-- 'financial_transaction' for the same budget period, category, and
-- sub_category, to compare planned vs actual and surface the variance

create or replace view vw_budget_vs_actual as
select
    b.budget_month,
    b.budget_year,
    c.category_name,
    sc.sub_category_name,
    b.planned_amount,
    coalesce(actuals.actual_amount, 0) as actual_amount,
    b.planned_amount - coalesce(actuals.actual_amount, 0) as variance,
    b.remarks
from budget b
join category c
    on c.category_id = b.category_id
join sub_category sc
    on sc.sub_category_id = b.sub_category_id
left join (
    select
        budget_month,
        budget_year,
        category_id,
        sub_category_id,
        sum(
            case when lower(transaction_type) = 'debit' then amount
                 else -amount
            end
        ) as actual_amount
    from financial_transaction
    group by budget_month, budget_year, category_id, sub_category_id
) actuals
    on actuals.budget_month = b.budget_month
    and actuals.budget_year = b.budget_year
    and actuals.category_id = b.category_id
    and actuals.sub_category_id = b.sub_category_id;



-- Create a view on 'bike_fuel_log' joined with 'financial_transaction' to
-- show the distance covered per liter of fuel for each refill

create or replace view vw_bike_fuel_efficiency as
select
    bfl.bike_fuel_log_id,
    ft.transaction_date,
    bfl.trip_km,
    bfl.fuel_quantity,
    bfl.fuel_type,
    round(bfl.trip_km / bfl.fuel_quantity, 2) as km_per_liter,
    ft.amount as fuel_amount
from bike_fuel_log bfl
join financial_transaction ft
    on ft.transaction_id = bfl.transaction_id;



-- Create a view on 'milk_purchase_log' to show the monthly totals of
-- quantity and amount for each milk/curd type, aggregated across all
-- unsettled daily entries (transaction_id is null), to support the
-- monthly lump-sum settlement to the milk vendor

create or replace view vw_milk_purchase_pending_settlement as
select
    extract(year from purchase_date)::int  as purchase_year,
    extract(month from purchase_date)::int as purchase_month,
    sum(buffalo_milk_qty)    as total_buffalo_milk_qty,
    sum(buffalo_milk_amount) as total_buffalo_milk_amount,
    sum(cow_milk_qty)        as total_cow_milk_qty,
    sum(cow_milk_amount)     as total_cow_milk_amount,
    sum(curd_qty)            as total_curd_qty,
    sum(curd_amount)         as total_curd_amount,
    sum(buffalo_milk_amount + cow_milk_amount + curd_amount) as total_amount_due
from milk_purchase_log
where transaction_id is null
group by extract(year from purchase_date), extract(month from purchase_date)
order by purchase_year, purchase_month;



-- Create a view on 'financial_transaction' to compute the running balance
-- for each account, ordered by transaction_date and then transaction_id
-- (the agreed tiebreaker for same-day transactions), so no balance is
-- ever stored directly and it is always derived fresh from the ledger

create or replace view vw_account_running_balance as
select
    ft.transaction_id,
    ft.account_id,
    a.account_name,
    ft.transaction_date,
    ft.transaction_type,
    ft.amount,
    sum(
        case when lower(ft.transaction_type) = 'credit' then ft.amount
             else -ft.amount
        end
    ) over (
        partition by ft.account_id
        order by ft.transaction_date, ft.transaction_id
        rows between unbounded preceding and current row
    ) as running_balance
from financial_transaction ft
join account a
    on a.account_id = ft.account_id;



-- Create a view on 'hard_cash_transaction' joined with 'financial_transaction'
-- to compute the running balance within each hard cash logical group
-- (hardcash_cycle_no), ordered by transaction_date and transaction_id

create or replace view vw_hard_cash_group_balance as
select
    hct.hard_cash_transaction_id,
    hct.hardcash_cycle_no,
    hct.is_withdrawal,
    ft.transaction_id,
    ft.transaction_date,
    ft.transaction_type,
    ft.amount,
    sum(
        case when lower(ft.transaction_type) = 'credit' then ft.amount
             else -ft.amount
        end
    ) over (
        partition by hct.hardcash_cycle_no
        order by ft.transaction_date, ft.transaction_id
        rows between unbounded preceding and current row
    ) as group_running_balance
from hard_cash_transaction hct
join financial_transaction ft
    on ft.transaction_id = hct.transaction_id;



-- Create a view on 'reserve_transaction' joined with 'financial_transaction'
-- to compute the running balance within each reserve cycle
-- (reserve_cycle_no), ordered by transaction_date and transaction_id

create or replace view vw_reserve_cycle_balance as
select
    rt.reserve_transaction_id,
    rt.reserve_cycle_no,
    ft.transaction_id,
    ft.transaction_date,
    ft.transaction_type,
    ft.amount,
    sum(
        case when lower(ft.transaction_type) = 'credit' then ft.amount
             else -ft.amount
        end
    ) over (
        partition by rt.reserve_cycle_no
        order by ft.transaction_date, ft.transaction_id
        rows between unbounded preceding and current row
    ) as cycle_running_balance
from reserve_transaction rt
join financial_transaction ft
    on ft.transaction_id = rt.transaction_id;