/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 05_Create_Indexes.sql
 * Module            : Database
 * Purpose           : Creates indexes on the PostgreSQL tables required
 *                      for PFMS to support efficient querying and to
 *                      enforce rules that constraints alone cannot
 *                      express (e.g. partial uniqueness).
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 04_Create_Constraints.sql
 *
 * Execution Order   : 05
 *
 * Notes             :
 *  - Execute this script only after 04_Create_Constraints.sql has been
 *    run successfully.
 *  - Includes the partial unique index enforcing a single primary
 *    account, deferred from the constraints script since PostgreSQL
 *    does not support a WHERE clause on ALTER TABLE ... ADD CONSTRAINT.
 *  - Master Tables, Financial Planning Tables, and Operational Activity
 *    Log Tables are intentionally NOT indexed beyond their PK/UNIQUE
 *    constraints, as they are expected to remain small and slow-growing.
 *  - Verify successful index creation before proceeding.
 **************************************************************************/


-- Create a partial unique index on the 'account' table to ensure only one account can be marked as primary at a time

create unique index uq_account_is_primary
    on account (is_primary)
    where is_primary = true;


-- Create an index on the 'financial_transaction' table on transaction_date to support ordering and date-range filtering

create index ix_financial_transaction_transaction_date
    on financial_transaction (transaction_date);


-- Create an index on the 'financial_transaction' table on account_id to support running balance calculation per account

create index ix_financial_transaction_account_id
    on financial_transaction (account_id);


-- Create an index on the 'financial_transaction' table on category_id to support budget vs actual reporting

create index ix_financial_transaction_category_id
    on financial_transaction (category_id);


-- Create a composite index on the 'financial_transaction' table on budget_month and budget_year
-- to support budget period based filtering and reporting

create index ix_financial_transaction_budget_month_budget_year
    on financial_transaction (budget_month, budget_year);


-- Create an index on the 'financial_transaction' table on insurance_id to support retrieving
-- the full payment history for a given insurance policy

create index ix_financial_transaction_insurance_id
    on financial_transaction (insurance_id);


-- Create an index on the 'financial_transaction' table on investment_id to support retrieving
-- the full payment history for a given investment

create index ix_financial_transaction_investment_id
    on financial_transaction (investment_id);


-- Create an index on the 'financial_transaction' table on loan_id to support retrieving
-- the full payment history for a given loan

create index ix_financial_transaction_loan_id
    on financial_transaction (loan_id);


-- Create an index on the 'financial_transaction' table on utility_id to support retrieving
-- the full payment history for a given utility

create index ix_financial_transaction_utility_id
    on financial_transaction (utility_id);


-- Create an index on the 'hard_cash_transaction' table on hardcash_cycle_no to support
-- retrieving all transactions belonging to a specific hard cash group

create index ix_hard_cash_transaction_hardcash_cycle_no
    on hard_cash_transaction (hardcash_cycle_no);


-- Create an index on the 'reserve_transaction' table on reserve_cycle_no to support
-- retrieving all transactions belonging to a specific reserve cycle

create index ix_reserve_transaction_reserve_cycle_no
    on reserve_transaction (reserve_cycle_no);