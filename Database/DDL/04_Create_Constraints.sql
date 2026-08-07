/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 04_Create_Constraints.sql
 * Module            : Database
 * Purpose           : Adds primary key, unique, and check constraints to
 *                      the PostgreSQL tables required for PFMS.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 03_Create_Tables.sql
 *
 * Execution Order   : 04
 *
 * Notes             :
 *  - Execute this script only after 03_Create_Tables.sql has been run
 *    successfully.
 *  - Foreign key constraints, indexes, and triggers are handled in
 *    their respective dedicated scripts, not here.
 *  - Verify successful constraint creation before proceeding.
 **************************************************************************/


-- Create a primary key constraint on the 'account' table on the column 'account_id'

alter table account
add constraint pk_account primary key (account_id);


-- Create a unique key constraint on the 'account' table on the column 'account_name'

alter table account
add constraint uq_account_account_name unique (account_name);


-- Create a check constraint on the 'account' table on the column 'account_type' to remove freehand text
-- lower() ensures the check accepts any casing (UPPER, lower, MiXeD) as long as the value matches
-- one of the allowed types case-insensitively

alter table account
add constraint ck_account_account_type
    check (lower(account_type) in
    (
        'salary + savings',
        'savings',
        'hard cash',
        'upi wallet'
    ));


-- Create a primary key constraint on the 'category' table on the column 'category_id'

alter table category
add constraint pk_category primary key(category_id);


-- Create a unique key constraint on the 'category' table on the column 'category_name'

alter table category
add constraint uq_category_category_name unique(category_name);


-- Create a primary key constraint on the 'sub_category' table on the column 'sub_category_id'

alter table sub_category
add constraint pk_sub_category primary key(sub_category_id);


-- Create a unique key constraint on the table 'sub_category' combination of 'category_id' & 'sub_category_name'

alter table sub_category
add constraint uq_sub_category_category_id_name unique (category_id, sub_category_name);



-- Create foreign key constraint on the 'sub_category' table referencing the 'category' table

alter table sub_category
add constraint fk_sub_category_category foreign key (category_id) references category(category_id);


-- Create Primary Key Constraint on the 'payment_mode' table

alter table payment_mode
add constraint pk_payment_mode primary key (payment_mode_id);


-- Create unique constraint on the 'payment_mode' table for payment_mode_name

alter table payment_mode
add constraint uq_payment_mode_payment_mode_name unique (payment_mode_name);


-- Create a check constraint on the 'payment_mode' table on the column 'payment_mode_name'
-- to restrict values to a known, fixed set of payment modes (case-insensitive)

alter table payment_mode
add constraint ck_payment_mode_payment_mode_name
    check (lower(payment_mode_name) in
    (
        'upi',
        'debit card',
        'bank transfer',
        'cash',
        'cheque'
    ));



-- Create Primary Key Constraint on the 'merchant' table

alter table merchant
add constraint pk_merchant primary key (merchant_id);


-- Create unique constraint on the 'merchant' table for merchant_name

alter table merchant
add constraint uq_merchant_merchant_name unique (merchant_name);




-- Create Primary Key Constraint on the 'budget' table

alter table budget
add constraint pk_budget primary key (budget_id);


/* Create unique constraint on the 'budget' table for 
combination of 'category_id', 'sub_category_id', budget_month, and budget_year */

alter table budget
add constraint uq_budget_period_category_sub_category unique 
(budget_month, budget_year, category_id, sub_category_id);


-- Create foreign key constraint on the 'budget' table referencing the 'category' table

alter table budget
add constraint fk_budget_category 
foreign key (category_id) 
references category(category_id);


-- Create foreign key constraint on the 'budget' table referencing the 'sub_category' table

alter table budget
add constraint fk_budget_sub_category 
foreign key (sub_category_id) 
references sub_category(sub_category_id);


-- Create check constraint on the 'budget' table to ensure planned_amount is not negative

alter table budget
add constraint ck_budget_planned_amount
    check (planned_amount >= 0);


-- Create check constraint on the 'budget' table to ensure budget_month is a valid calendar month

alter table budget
add constraint ck_budget_budget_month
    check (budget_month between 1 and 12);


-- Create check constraint on the 'budget' table to ensure budget_year is within a reasonable range

alter table budget
add constraint ck_budget_budget_year
    check (budget_year >= 2020);




-- Create Primary Key Constraint on the 'insurance' table

alter table insurance
add constraint pk_insurance primary key (insurance_id);


-- Create unique constraint on the 'insurance' table on 'policy_number'

alter table insurance
add constraint uq_insurance_policy_number unique (policy_number);


-- Create Check Constraint on the 'insurance' table to ensure expected_premium_amount is greater than or equal to 0

alter table insurance
add constraint ck_insurance_expected_premium_amount
    check (expected_premium_amount >= 0);


-- Create Check Constraint on the 'insurance' table to ensure grace_period_days is Null or greater than or equal to 0

alter table insurance
add constraint ck_insurance_grace_period_days
    check (grace_period_days is null or grace_period_days >= 0);


-- Create Check Constraint on the 'insurance' table to restrict premium_frequency to a known, fixed set

alter table insurance
add constraint ck_insurance_premium_frequency
    check (lower(premium_frequency) in
    (
        'monthly',
        'quarterly',
        'half-yearly',
        'yearly',
        'one-time'
    ));


-- Create Check Constraint on the 'insurance' table to ensure premium_end_date is not before start_date

alter table insurance
add constraint ck_insurance_premium_end_date
    check (premium_end_date is null or premium_end_date > start_date);


-- Create Check Constraint on the 'insurance' table to ensure maturity_date is not before premium_end_date

alter table insurance
add constraint ck_insurance_maturity_date
    check (maturity_date is null or premium_end_date is null or maturity_date >= premium_end_date);


-- Create Check Constraint on the 'insurance' table to ensure next_due_date is not before last_payment_date

alter table insurance
add constraint ck_insurance_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date > last_payment_date);



-- Create Primary Key Constraint on the 'investment' table

alter table investment
add constraint pk_investment primary key (investment_id);


-- Create Check Constraint on the 'investment' table to ensure expected_contribution_amount is greater than or equal to 0

alter table investment
add constraint ck_investment_expected_contribution_amount
    check (expected_contribution_amount >= 0);


-- Create Check Constraint on the 'investment' table to restrict contribution_frequency to a known, fixed set

alter table investment
add constraint ck_investment_contribution_frequency
    check (contribution_frequency is null or lower(contribution_frequency) in
    (
        'daily',
        'monthly',
        'quarterly',
        'half-yearly',
        'yearly',
        'one-time'
    ));


-- Create Check Constraint on the 'investment' table to ensure maturity_date is not before start_date

alter table investment
add constraint ck_investment_maturity_date
    check (maturity_date is null or maturity_date > start_date);


-- Create Check Constraint on the 'investment' table to ensure next_due_date is not before last_payment_date

alter table investment
add constraint ck_investment_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date > last_payment_date);




-- Create Primary Key Constraint on the 'loan' table

alter table loan
add constraint pk_loan primary key (loan_id);


-- Create Check Constraint on the 'loan' table to ensure loan_amount is greater than or equal to 0

alter table loan
add constraint ck_loan_loan_amount
    check (loan_amount >= 0);


-- Create Check Constraint on the 'loan' table to ensure expected_emi_amount is greater than or equal to 0

alter table loan
add constraint ck_loan_expected_emi_amount
    check (expected_emi_amount >= 0);


-- Create Check Constraint on the 'loan' table to restrict payment_frequency to a known, fixed set

alter table loan
add constraint ck_loan_payment_frequency
    check (lower(payment_frequency) in
    (
        'monthly',
        'quarterly',
        'half-yearly',
        'yearly'
    ));


-- Create Check Constraint on the 'loan' table to ensure end_date is strictly after start_date

alter table loan
add constraint ck_loan_end_date
    check (end_date is null or end_date > start_date);


-- Create Check Constraint on the 'loan' table to ensure next_due_date is not before last_payment_date

alter table loan
add constraint ck_loan_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date >= last_payment_date);



-- Create Primary Key Constraint on the 'utility' table 

alter table utility
add constraint pk_utility primary key (utility_id);


-- Create Check Constraint on the 'utility' table to ensure expected_amount is greater than or equal to 0

alter table utility
add constraint ck_utility_expected_amount
    check (expected_amount >= 0);


-- Create Check Constraint on the 'utility' table to ensure expiry_date is strictly after start_date

alter table utility
add constraint ck_utility_expiry_date
    check (expiry_date > start_date);


-- Create Check Constraint on the 'utility' table to ensure next_due_date is not before last_payment_date

alter table utility
add constraint ck_utility_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date >= last_payment_date);




-- Create Primary Key Constraint on the 'milk_purchase_log' table

alter table milk_purchase_log
add constraint pk_milk_purchase_log primary key (milk_purchase_log_id);


-- Create unique constraint on the 'milk_purchase_log' table on purchase_date

alter table milk_purchase_log
add constraint uq_milk_purchase_log_purchase_date unique (purchase_date);


-- Create foreign key constraint on the 'milk_purchase_log' table referencing the 'financial_transaction' table

alter table milk_purchase_log
add constraint fk_milk_purchase_log_transaction 
foreign key (transaction_id) 
references financial_transaction(transaction_id);


-- Create Check Constraint on the 'milk_purchase_log' table to ensure buffalo_milk_qty is greater than or equal to 0

alter table milk_purchase_log
add constraint ck_milk_buffalo_milk_qty
    check (buffalo_milk_qty >= 0);


-- Create Check Constraint on the 'milk_purchase_log' table to ensure cow_milk_qty is greater than or equal to 0

alter table milk_purchase_log
add constraint ck_milk_cow_milk_qty
    check (cow_milk_qty >= 0);


-- Create Check Constraint on the 'milk_purchase_log' table to ensure curd_qty is greater than or equal to 0

alter table milk_purchase_log
add constraint ck_milk_curd_qty   
    check (curd_qty >= 0);


-- Create Check Constraint on the 'milk_purchase_log' table to ensure buffalo_milk_amount is greater than or equal to 0

alter table milk_purchase_log
add constraint ck_milk_buffalo_milk_amount
    check (buffalo_milk_amount >= 0);


-- Create Check Constraint on the 'milk_purchase_log' table to ensure cow_milk_amount is greater than or equal to 0

alter table milk_purchase_log
add constraint ck_milk_cow_milk_amount 
    check (cow_milk_amount >= 0);


-- Create Check Constraint on the 'milk_purchase_log' table to ensure curd_amount is greater than or equal to 0

alter table milk_purchase_log
add constraint ck_milk_curd_amount 
    check (curd_amount >= 0);




-- Create Primary Key Constraint on the 'gas_cylinder_log' table

alter table gas_cylinder_log
add constraint pk_gas_cylinder_log primary key (gas_cylinder_log_id);


-- Create foreign key constraint on the 'gas_cylinder_log' table referencing the 'financial_transaction' table

alter table gas_cylinder_log
add constraint fk_gas_cylinder_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);


-- Create Check Constraint on the 'gas_cylinder_log' table to ensure arrival_date is not before change_date

alter table gas_cylinder_log
add constraint ck_gas_cylinder_log_change_date
    check (arrival_date >= change_date);




-- Create Primary Key Constraint on the 'bike_fuel_log' table

alter table bike_fuel_log
add constraint pk_bike_fuel_log primary key (bike_fuel_log_id);


-- Create foreign key constraint on the 'bike_fuel_log' table referencing the 'financial_transaction' table

alter table bike_fuel_log
add constraint fk_bike_fuel_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);


-- Create Check Constraint on the 'bike_fuel_log' table to ensure trip_km > 0

alter table bike_fuel_log
add constraint ck_bike_fuel_log_trip_km
    check (trip_km > 0);


-- Create Check Constraint on the 'bike_fuel_log' table to ensure fuel_quantity > 0

alter table bike_fuel_log
add constraint ck_bike_fuel_log_fuel_quantity
    check (fuel_quantity > 0);


-- Create Check Constraint on the 'bike_fuel_log' table to ensure fuel_type is either 'Normal' or 'Premium'

alter table bike_fuel_log
add constraint ck_bike_fuel_log_fuel_type   
    check (lower(fuel_type) in ('normal', 'premium'));




-- Create Primary Key Constraint on the 'engine_oil_log' table

alter table engine_oil_log
add constraint pk_engine_oil_log primary key (engine_oil_log_id);


-- Create foreign key constraint on the 'engine_oil_log' table referencing the 'financial_transaction' table

alter table engine_oil_log
add constraint fk_engine_oil_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);


-- Create Check Constraint on the 'engine_oil_log' table to ensure odometer_reading > 0

alter table engine_oil_log
add constraint ck_engine_oil_log_odometer_reading
    check (odometer_reading > 0);


-- Create Check Constraint on the 'engine_oil_log' table to ensure oil_change_interval_km is null or greater than 0

alter table engine_oil_log
add constraint ck_engine_oil_log_oil_change_interval_km
    check (oil_change_interval_km is null or oil_change_interval_km > 0);




-- Create Primary Key Constraint on the 'bike_maintenance_log' table

alter table bike_maintenance_log
add constraint pk_bike_maintenance_log primary key (bike_maintenance_log_id);


-- Create foreign key constraint on the 'bike_maintenance_log' table referencing the 'financial_transaction' table

alter table bike_maintenance_log
add constraint fk_bike_maintenance_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);



-- Create Primary Key Constraint on the 'hard_cash_transaction' table

alter table hard_cash_transaction
add constraint pk_hard_cash_transaction primary key (hard_cash_transaction_id);


-- Create foreign key constraint on the 'hard_cash_transaction' table referencing the 'financial_transaction' table

alter table hard_cash_transaction
add constraint fk_hard_cash_transaction_financial_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);


-- Create unique constraint on the 'hard_cash_transaction' table to enforce a 1:1 relationship with 'financial_transaction'

alter table hard_cash_transaction
add constraint uq_hard_cash_transaction_transaction_id unique (transaction_id);


-- Create Check Constraint on the 'hard_cash_transaction' table to ensure hardcash_cycle_no is greater than 0

alter table hard_cash_transaction
add constraint ck_hard_cash_transaction_hardcash_cycle_no
    check (hardcash_cycle_no > 0);



-- Create Primary Key Constraint on the 'financial_transaction' table

alter table financial_transaction
add constraint pk_financial_transaction primary key (transaction_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'account' table

alter table financial_transaction
add constraint fk_financial_transaction_account
    foreign key (account_id) references account(account_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'category' table

alter table financial_transaction
add constraint fk_financial_transaction_category
    foreign key (category_id) references category(category_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'sub_category' table

alter table financial_transaction
add constraint fk_financial_transaction_sub_category
    foreign key (sub_category_id) references sub_category(sub_category_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'payment_mode' table

alter table financial_transaction
add constraint fk_financial_transaction_payment_mode
    foreign key (payment_mode_id) references payment_mode(payment_mode_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'merchant' table

alter table financial_transaction
add constraint fk_financial_transaction_merchant
    foreign key (merchant_id) references merchant(merchant_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'insurance' table

alter table financial_transaction
add constraint fk_financial_transaction_insurance
    foreign key (insurance_id) references insurance(insurance_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'investment' table

alter table financial_transaction
add constraint fk_financial_transaction_investment
    foreign key (investment_id) references investment(investment_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'loan' table

alter table financial_transaction
add constraint fk_financial_transaction_loan
    foreign key (loan_id) references loan(loan_id);


-- Create foreign key constraint on the 'financial_transaction' table referencing the 'utility' table

alter table financial_transaction
add constraint fk_financial_transaction_utility
    foreign key (utility_id) references utility(utility_id);


-- Create Check Constraint on the 'financial_transaction' table to ensure amount is strictly greater than 0

alter table financial_transaction
add constraint ck_financial_transaction_amount
    check (amount > 0);


-- Create Check Constraint on the 'financial_transaction' table to restrict transaction_type to credit or debit

alter table financial_transaction
add constraint ck_financial_transaction_transaction_type
    check (lower(transaction_type) in ('credit', 'debit'));


-- Create Check Constraint on the 'financial_transaction' table to ensure budget_month is a valid calendar month

alter table financial_transaction
add constraint ck_financial_transaction_budget_month
    check (budget_month between 1 and 12);


-- Create Check Constraint on the 'financial_transaction' table to ensure budget_year is within a reasonable range

alter table financial_transaction
add constraint ck_financial_transaction_budget_year
    check (budget_year >= 2020);



-- Create Primary Key Constraint on the 'reserve_transaction' table

alter table reserve_transaction
add constraint pk_reserve_transaction primary key (reserve_transaction_id);


-- Create foreign key constraint on the 'reserve_transaction' table referencing the 'financial_transaction' table

alter table reserve_transaction
add constraint fk_reserve_transaction_financial_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);


-- Create unique constraint on the 'reserve_transaction' table to enforce a 1:1 relationship with 'financial_transaction'

alter table reserve_transaction
add constraint uq_reserve_transaction_transaction_id unique (transaction_id);


-- Create Check Constraint on the 'reserve_transaction' table to ensure reserve_cycle_no is greater than 0

alter table reserve_transaction
add constraint ck_reserve_transaction_reserve_cycle_no
    check (reserve_cycle_no > 0);