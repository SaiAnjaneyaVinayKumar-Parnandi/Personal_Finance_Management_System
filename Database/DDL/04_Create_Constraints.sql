/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 04_Create_Constraints.sql
 * Module            : Database
 * Purpose           : Adds all database constraints in a structured order.
 *
 * Execution Order:
 *   1. Primary Key Constraints
 *   2. Unique Constraints
 *   3. Foreign Key Constraints
 *   4. Check Constraints
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 **************************************************************************/

 /**************************************************************************
 * =========================================================================
 * SECTION 1 : PRIMARY KEY CONSTRAINTS
 * =========================================================================
 */

-- =============================================================================
-- Master Tables
-- =============================================================================

-- Account

alter table account
add constraint pk_account primary key (account_id);


-- Category

alter table category
add constraint pk_category primary key(category_id);


-- Sub Category

alter table sub_category
add constraint pk_sub_category primary key(sub_category_id);


-- Payment Mode

alter table payment_mode
add constraint pk_payment_mode primary key (payment_mode_id);

-- Merchant

alter table merchant
add constraint pk_merchant primary key (merchant_id);


-- =============================================================================
-- Financial Planning Tables
-- =============================================================================

-- Budget

alter table budget
add constraint pk_budget primary key (budget_id);


-- Insurance

alter table insurance
add constraint pk_insurance primary key (insurance_id);


-- Investment

alter table investment
add constraint pk_investment primary key (investment_id);


-- Loan

alter table loan
add constraint pk_loan primary key (loan_id);


-- Utility

alter table utility
add constraint pk_utility primary key (utility_id);


-- =============================================================================
-- Operational Activity Log Tables
-- =============================================================================

-- Milk Purchase Log

alter table milk_purchase_log
add constraint pk_milk_purchase_log primary key (milk_purchase_log_id);


-- Gas Cylinder Log

alter table gas_cylinder_log
add constraint pk_gas_cylinder_log primary key (gas_cylinder_log_id);


-- Bike Fuel Log

alter table bike_fuel_log
add constraint pk_bike_fuel_log primary key (bike_fuel_log_id);


-- Engine Oil Log

alter table engine_oil_log
add constraint pk_engine_oil_log primary key (engine_oil_log_id);


-- Bike Maintenance Log

alter table bike_maintenance_log
add constraint pk_bike_maintenance_log primary key (bike_maintenance_log_id);


-- =============================================================================
-- Core Financial Tables
-- =============================================================================


-- Hard Cash Transaction

alter table hard_cash_transaction
add constraint pk_hard_cash_transaction primary key (hard_cash_transaction_id);


-- Financial Transaction

alter table financial_transaction
add constraint pk_financial_transaction primary key (transaction_id);


-- =============================================================================
-- Reserve Planning Tables
-- =============================================================================

-- Reserve Transaction

alter table reserve_transaction
add constraint pk_reserve_transaction primary key (reserve_transaction_id);


/**************************************************************************
 * =========================================================================
 * SECTION 2 : UNIQUE CONSTRAINTS
 * =========================================================================
 */

-- =============================================================================
-- Master Tables
-- =============================================================================

-- Account

alter table account
add constraint uq_account_account_name unique (account_name);


-- Category

alter table category
add constraint uq_category_category_name unique(category_name);


-- Sub Category

alter table sub_category
add constraint uq_sub_category_category_id_name unique (category_id, sub_category_name);


-- Payment Mode

alter table payment_mode
add constraint uq_payment_mode_payment_mode_name unique (payment_mode_name);


-- Merchant

alter table merchant
add constraint uq_merchant_merchant_name unique (merchant_name);


-- =============================================================================
-- Financial Planning Tables
-- =============================================================================

-- Budget

alter table budget
add constraint uq_budget_period_category_sub_category unique 
(budget_month, budget_year, category_id, sub_category_id);


-- Insurance

alter table insurance
add constraint uq_insurance_policy_number unique (policy_number);


-- Investment

-- No unique key constraints for investment

-- Loan

-- No unique key constraints for loan

-- Utility

-- No unique key constraints for utility


-- =============================================================================
-- Operational Activity Log Tables
-- =============================================================================

-- Milk Purchase Log

alter table milk_purchase_log
add constraint uq_milk_purchase_log_purchase_date unique (purchase_date);


-- Gas Cylinder Log

-- No unique key constraints for gas cylinder log

-- Bike Fuel Log

-- No unique key constraints for bike fuel log

-- Engine Oil Log

-- No unique key constraints for engine oil log

-- Bike Maintenance Log

-- No unique key constraints for bike maintenance log


-- =============================================================================
-- Core Financial Tables
-- =============================================================================

-- Hard Cash Transaction

alter table hard_cash_transaction
add constraint uq_hard_cash_transaction_transaction_id unique (transaction_id);


-- Financial Transaction

-- No unique key constraints for financial transaction


-- =============================================================================
-- Reserve Planning Tables
-- =============================================================================

-- Reserve Transaction

alter table reserve_transaction
add constraint uq_reserve_transaction_transaction_id unique (transaction_id);



/**************************************************************************
 * =========================================================================
 * SECTION 3 : FOREIGN KEY CONSTRAINTS
 * =========================================================================
 */

-- =============================================================================
-- Master Tables
-- =============================================================================

-- Account

-- No foreign key constraint for account table

-- Category

-- No foreign key constraint for category table

-- Sub Category

alter table sub_category
add constraint fk_sub_category_category foreign key (category_id) references category(category_id);

-- Payment Mode

-- No foreign key constraint for payment mode table

-- Merchant

-- No foreign key constraint for merchant table


-- =============================================================================
-- Financial Planning Tables
-- =============================================================================

-- Budget

alter table budget
add constraint fk_budget_category 
foreign key (category_id) 
references category(category_id);


alter table budget
add constraint fk_budget_sub_category 
foreign key (sub_category_id) 
references sub_category(sub_category_id);

-- Insurance

-- No foreign key constraint for insurance table

-- Investment

-- No foreign key constraint for investment table

-- Loan

-- No foreign key constraint for loan table

-- Utility

-- No foreign key constraint for utility table



-- =============================================================================
-- Operational Activity Log Tables
-- =============================================================================

-- Milk Purchase Log

alter table milk_purchase_log
add constraint fk_milk_purchase_log_transaction 
foreign key (transaction_id) 
references financial_transaction(transaction_id);

-- Gas Cylinder Log

alter table gas_cylinder_log
add constraint fk_gas_cylinder_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);


-- Bike Fuel Log

alter table bike_fuel_log
add constraint fk_bike_fuel_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);

-- Engine Oil Log

alter table engine_oil_log
add constraint fk_engine_oil_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);

-- Bike Maintenance Log

alter table bike_maintenance_log
add constraint fk_bike_maintenance_log_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);




-- =============================================================================
-- Core Financial Tables
-- =============================================================================

-- Hard Cash Transaction

alter table hard_cash_transaction
add constraint fk_hard_cash_transaction_financial_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);

-- Financial Transaction

alter table financial_transaction
add constraint fk_financial_transaction_account
    foreign key (account_id) references account(account_id);

alter table financial_transaction
add constraint fk_financial_transaction_category
    foreign key (category_id) references category(category_id);

alter table financial_transaction
add constraint fk_financial_transaction_sub_category
    foreign key (sub_category_id) references sub_category(sub_category_id);

alter table financial_transaction
add constraint fk_financial_transaction_payment_mode
    foreign key (payment_mode_id) references payment_mode(payment_mode_id);

alter table financial_transaction
add constraint fk_financial_transaction_merchant
    foreign key (merchant_id) references merchant(merchant_id);

alter table financial_transaction
add constraint fk_financial_transaction_insurance
    foreign key (insurance_id) references insurance(insurance_id);

alter table financial_transaction
add constraint fk_financial_transaction_investment
    foreign key (investment_id) references investment(investment_id);

alter table financial_transaction
add constraint fk_financial_transaction_loan
    foreign key (loan_id) references loan(loan_id);

alter table financial_transaction
add constraint fk_financial_transaction_utility
    foreign key (utility_id) references utility(utility_id);



-- =============================================================================
-- Reserve Planning Tables
-- =============================================================================

-- Reserve Transaction

alter table reserve_transaction
add constraint fk_reserve_transaction_financial_transaction
    foreign key (transaction_id) references financial_transaction(transaction_id);




/**************************************************************************
 * =========================================================================
 * SECTION 4 : CHECK CONSTRAINTS
 * =========================================================================
 */

-- =============================================================================
-- Master Tables
-- =============================================================================

-- Account

alter table account
add constraint ck_account_account_type
    check (lower(account_type) in
    (
        'salary + savings',
        'savings',
        'hard cash',
        'upi wallet'
    ));


-- Category

-- No check constraints for category table

-- Sub Category

-- No check constraints for sub_category table

-- Payment Mode

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

-- Merchant

-- No check constraints for merchant table


-- =============================================================================
-- Financial Planning Tables
-- =============================================================================

-- Budget

alter table budget
add constraint ck_budget_planned_amount
    check (planned_amount >= 0);

alter table budget
add constraint ck_budget_budget_month
    check (budget_month between 1 and 12);

alter table budget
add constraint ck_budget_budget_year
    check (budget_year >= 2020);


-- Insurance

alter table insurance
add constraint ck_insurance_expected_premium_amount
    check (expected_premium_amount >= 0);

alter table insurance
add constraint ck_insurance_grace_period_days
    check (grace_period_days is null or grace_period_days >= 0);

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

alter table insurance
add constraint ck_insurance_premium_end_date
    check (premium_end_date is null or premium_end_date > start_date);

alter table insurance
add constraint ck_insurance_maturity_date
    check (maturity_date is null or premium_end_date is null or maturity_date >= premium_end_date);

alter table insurance
add constraint ck_insurance_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date > last_payment_date);


-- Investment

alter table investment
add constraint ck_investment_expected_contribution_amount
    check (expected_contribution_amount >= 0);

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

alter table investment
add constraint ck_investment_maturity_date
    check (maturity_date is null or maturity_date > start_date);

alter table investment
add constraint ck_investment_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date > last_payment_date);

-- Loan

alter table loan
add constraint ck_loan_loan_amount
    check (loan_amount >= 0);

alter table loan
add constraint ck_loan_expected_emi_amount
    check (expected_emi_amount >= 0);

alter table loan
add constraint ck_loan_payment_frequency
    check (lower(payment_frequency) in
    (
        'monthly',
        'quarterly',
        'half-yearly',
        'yearly'
    ));

alter table loan
add constraint ck_loan_end_date
    check (end_date is null or end_date > start_date);

alter table loan
add constraint ck_loan_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date >= last_payment_date);

-- Utility

alter table utility
add constraint ck_utility_expected_amount
    check (expected_amount >= 0);

alter table utility
add constraint ck_utility_expiry_date
    check (expiry_date > start_date);

alter table utility
add constraint ck_utility_next_due_date
    check (next_due_date is null or last_payment_date is null or next_due_date >= last_payment_date);



-- =============================================================================
-- Operational Activity Log Tables
-- =============================================================================

-- Milk Purchase Log

alter table milk_purchase_log
add constraint ck_milk_buffalo_milk_qty
    check (buffalo_milk_qty >= 0);

alter table milk_purchase_log
add constraint ck_milk_cow_milk_qty
    check (cow_milk_qty >= 0);

alter table milk_purchase_log
add constraint ck_milk_curd_qty   
    check (curd_qty >= 0);

alter table milk_purchase_log
add constraint ck_milk_buffalo_milk_amount
    check (buffalo_milk_amount >= 0);

alter table milk_purchase_log
add constraint ck_milk_cow_milk_amount 
    check (cow_milk_amount >= 0);

alter table milk_purchase_log
add constraint ck_milk_curd_amount 
    check (curd_amount >= 0);


-- Gas Cylinder Log

alter table gas_cylinder_log
add constraint ck_gas_cylinder_log_change_date
    check (arrival_date >= change_date);


-- Bike Fuel Log

alter table bike_fuel_log
add constraint ck_bike_fuel_log_trip_km
    check (trip_km > 0);

alter table bike_fuel_log
add constraint ck_bike_fuel_log_fuel_quantity
    check (fuel_quantity > 0);

alter table bike_fuel_log
add constraint ck_bike_fuel_log_fuel_type   
    check (lower(fuel_type) in ('normal', 'premium'));


-- Engine Oil Log

alter table engine_oil_log
add constraint ck_engine_oil_log_odometer_reading
    check (odometer_reading > 0);

alter table engine_oil_log
add constraint ck_engine_oil_log_oil_change_interval_km
    check (oil_change_interval_km is null or oil_change_interval_km > 0);

-- Bike Maintenance Log

-- No check constraints for bike maintenance log table


-- =============================================================================
-- Core Financial Tables
-- =============================================================================

-- Hard Cash Transaction

alter table hard_cash_transaction
add constraint ck_hard_cash_transaction_hardcash_cycle_no
    check (hardcash_cycle_no > 0);


-- Financial Transaction

alter table financial_transaction
add constraint ck_financial_transaction_amount
    check (amount > 0);

alter table financial_transaction
add constraint ck_financial_transaction_transaction_type
    check (lower(transaction_type) in ('credit', 'debit'));

alter table financial_transaction
add constraint ck_financial_transaction_budget_month
    check (budget_month between 1 and 12);

alter table financial_transaction
add constraint ck_financial_transaction_budget_year
    check (budget_year >= 2020);


-- =============================================================================
-- Reserve Planning Tables
-- =============================================================================

-- Reserve Transaction

alter table reserve_transaction
add constraint ck_reserve_transaction_reserve_cycle_no
    check (reserve_cycle_no > 0);