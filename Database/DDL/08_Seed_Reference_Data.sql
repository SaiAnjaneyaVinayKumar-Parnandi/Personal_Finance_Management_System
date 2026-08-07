/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 08_Seed_Reference_Data.sql
 * Module            : Database
 * Purpose           : Populates the Master Tables (account, category,
 *                      sub_category, payment_mode, merchant) with the
 *                      initial reference data required before any real
 *                      financial_transaction rows can be inserted, since
 *                      every downstream table depends on these via
 *                      foreign key.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 07_Create_Views.sql
 *
 * Execution Order   : 08
 *
 * Notes             :
 *  - Execute this script only after 07_Create_Views.sql has been run
 *    successfully.
 *  - Master Tables are immutable once inserted (see 06_Create_Triggers.sql),
 *    so review and finalize this list before running - correcting a
 *    mistake later requires is_active = false plus a fresh row, not an
 *    edit, per PFMS's append-only rule.
 *  - Category / sub_category / merchant lists below are a reasonable
 *    starting point - review and adjust to match actual spending
 *    patterns before running.
 *  - Merchant rows may alternatively be left out entirely and allowed
 *    to grow organically through the application as real transactions
 *    are entered.
 **************************************************************************/


-- =========================================================================
-- SECTION 1: account
-- =========================================================================

insert into account (account_name, account_type, is_primary, is_active)
values
    ('HDFC', 'salary + savings', true, true),
    ('SBI', 'savings', false, true),
    ('Indian Post', 'savings', false, true);


-- =========================================================================
-- SECTION 2: payment_mode
-- =========================================================================

insert into payment_mode (payment_mode_name, is_active)
values
    ('UPI', true),
    ('Debit Card', true),
    ('Bank Transfer', true),
    ('Cash', true),
    ('Cheque', true);


-- =========================================================================
-- SECTION 3: category
-- =========================================================================

insert into category (category_name, is_active)
values
    ('Groceries', true),
    ('Medical', true),
    ('Fuel', true),
    ('Household', true),
    ('Bike Maintenance', true),
    ('Shopping', true),
    ('Utilities', true),
    ('Entertainment', true),
    ('Income', true),
    ('Investment', true),
    ('Insurance', true),
    ('Loan Payment', true);


-- =========================================================================
-- SECTION 4: sub_category
-- =========================================================================

insert into sub_category (category_id, sub_category_name, is_active)
select category_id, v.sub_category_name, true
from category c
join (values
    ('Groceries', 'Milk'),
    ('Groceries', 'Fruits'),
    ('Groceries', 'Vegetables'),
    ('Groceries', 'Staples'),
    ('Medical', 'Medicines'),
    ('Medical', 'Doctor Visit'),
    ('Fuel', 'Petrol'),
    ('Household', 'Gas Cylinder'),
    ('Household', 'Electricity'),
    ('Household', 'Maintenance'),
    ('Bike Maintenance', 'Engine Oil'),
    ('Bike Maintenance', 'Servicing'),
    ('Shopping', 'Clothing'),
    ('Shopping', 'Electronics'),
    ('Utilities', 'Mobile Recharge'),
    ('Utilities', 'Subscriptions'),
    ('Income', 'Salary'),
    ('Income', 'Bonus')
) as v(category_name, sub_category_name)
    on c.category_name = v.category_name;


-- =========================================================================
-- SECTION 5: merchant
-- =========================================================================

insert into merchant (merchant_name, is_active)
values
    ('Dmart', true),
    ('Amazon', true),
    ('HP Petroleum', true);