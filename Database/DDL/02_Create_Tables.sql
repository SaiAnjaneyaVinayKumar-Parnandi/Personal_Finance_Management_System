/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 02_Create_Tables.sql
 * Module            : Database
 * Purpose           : Creates the PostgreSQL tables required for PFMS.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 05-Aug-2026
 * Last Updated      : 05-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 01_Create_Database.sql
 *
 * Execution Order   : 02
 *
 * Notes             :
 *  - Verify successful table creation before proceeding.
 **************************************************************************/

-- Create the 'account' table to store account information

create table if not exists account
(
    account_id bigint generated always as identity,
    account_name varchar(100) not null,
    account_type varchar(50) not null,
    is_primary boolean default false,
    is_active boolean default true,
);


-- Create the 'category' table to store transaction categories

create table if not exists category
(
    category_id bigint generated always as identity,
    category_name varchar(100) not null,
     is_active boolean default true,
);

-- Create the 'sub_category' table to store transaction sub-categories

create table if not exists sub_category
(
    sub_category_id bigint generated always as identity,
    category_id bigint not null,
    sub_category_name varchar(100) not null,
    is_active boolean default true,
);


-- Create the 'merchant' table to store merchant information

create table if not exists merchant
(
    merchant_id bigint generated always as identity,
    merchant_name varchar(150) not null,
    is_active boolean default true,
);


-- Create the 'payment_mode' table to store payment mode information

create table if not exists payment_mode
(
    payment_mode_id bigint generated always as identity,
    payment_mode_name varchar(100) not null,
    is_active boolean default true,
);


-- Create the 'budget' table for planned budget allocations for a budget month and year, along with category and sub-category details

create table if not exists budget
(
    budget_id bigint generated always as identity,
    budget_month smallint not null,
    budget_year integer not null,
    category_id bigint not null,
    sub_category_id bigint not null,
    budget_amount numeric(12, 2) not null,
    remarks varchar(500)
);


-- Create the 'insurance' table to store insurance policy details with latest premium information

create table if not exists insurance
(
    insurance_id bigint generated always as identity,
    insurance_name varchar(100) not null,
    insurance_type varchar(50) not null,
    merchant_id bigint not null,
    policy_number varchar(100) not null,
    premium_amount numeric(12, 2) not null,
    premium_frequency varchar(50) not null,
    start_date date not null,
    premium_end_date date default null,
    maturity_date date default null,
    grace_period_days integer default 0,
    last_payment_date date default null,
    next_due_date date default null,
    transaction_id bigint default null,
    remarks varchar(500) default null,
    is_active boolean default true
);


-- Create the 'investment' table to store investment details with latest valuation information

create table if not exists investment
(
    investment_id bigint generated always as identity,
    investment_name varchar(100) not null,
    investment_type varchar(50) not null,
    merchant_id bigint not null,
    account_id bigint not null,
    investment_amount numeric(12, 2) not null,
    contribution_frequency varchar(50) default null,
    start_date date not null,
    maturity_date date default null,
    last_payment_date date default null,
    next_due_date date default null,
    transaction_id bigint default null,
    remarks varchar(500) default null,
    is_active boolean default true
);


-- Create the 'loan' table to store loan details with latest payment information

create table if not exists loan
(
    loan_id bigint generated always as identity,
    loan_type varchar(50) not null,
    merchant_id bigint not null,
    account_id bigint not null,
    loan_amount numeric(12, 2) not null,
    roi numeric(5, 2) default null,
    emi_amount numeric(12, 2) not null,
    payment_frequency varchar(50) not null default 'Monthly',
    is_auto_debit boolean default false,
    start_date date not null,
    end_date date default null,
    last_payment_date date default null,
    next_due_date date default null,
    transaction_id bigint default null,
    remarks varchar(500) default null,
    is_active boolean default true
);


-- Create the 'utility' table to store the details of utilities which will be expired and need to be renewed

create table if not exists utility
(
    utility_id bigint generated always as identity,
    utility_name varchar(100) not null,
    merchant_id bigint not null,
    reference_identifier varchar(200) default null,
    amount numeric(12, 2) not null default 0.00,
    start_date date not null,
    expiry_date date not null,
    last_payment_date date default null,
    next_due_date date default null,
    transaction_id bigint default null,
    remarks varchar(500) default null,
    is_active boolean default true
);


-- Create the 'milk_purchase_log' table to store the details of milk purchases

create table if not exists milk_purchase_log
(
    milk_purchase_log_id bigint generated always as identity,
    purchase_date date not null,
    buffalo_milk_qty numeric(6, 2) default 0.00,
    buffalo_milk_amount numeric(12, 2) default 0.00,
    cow_milk_qty numeric(6, 2) default 0.00,
    cow_milk_amount numeric(12, 2) default 0.00,
    curd_qty numeric(6, 2) default 0.00,
    curd_amount numeric(12, 2) default 0.00
);


-- Create the 'gas_cylinder_log' table to store the details of gas cylinder purchases

create table if not exists gas_cylinder_log
(
    gas_cylinder_log_id bigint generated always as identity,
    change_date date not null,
    purchase_date date not null,
    arrival_date date not null,
    transaction_id bigint default null
);


-- Create the 'bike_fuel_log' table to store the details for getting the fuel consumption of the bike

create table if not exists bike_fuel_log
(
    bike_fuel_log_id bigint generated always as identity,
    purchase_date date not null,
    trip_km numeric(8, 2) not null,
    fuel_quantity numeric(8, 2) not null,
    fuel_type varchar(20) not null default 'Normal',
    amount numeric(12, 2) not null default 0.00,
    transaction_id bigint default null
);



-- Create the 'engine_oil_log' table to store the details for getting the engine oil consumption of the bike

create table if not exists engine_oil_log
(
    engine_oil_log_id bigint generated always as identity,
    merchant_id bigint not null,
    replacement_date date not null,
    odometer_reading numeric(8, 2) not null,
    amount numeric(12, 2) not null default 0.00,
    transaction_id bigint default null
);


-- Create the 'bike_maintenance_log' table to store the details for getting the maintenance details of the bike

create table if not exists bike_maintenance_log
(
    bike_maintenance_log_id bigint generated always as identity,
    merchant_id bigint not null,
    maintenance_date date not null,
    maintenance_description varchar(500) not null,
    amount numeric(12, 2) not null default 0.00,
    transaction_id bigint default null
);


-- Create the 'hard_cash_wallet' table to store all physical cash transactions

create table if not exists hard_cash_wallet
(
    hard_cash_wallet_id bigint generated always as identity,
    transaction_id bigint not null,
    account_id bigint not null,
    category_id bigint not null,
    sub_category_id bigint default null,
    merchant_id bigint default null,
    transaction_date date not null,
    transaction_type varchar(20) not null,
    amount numeric(12, 2) not null default 0.00,
    description varchar(500) default null
);


-- Create the 'financial_transaction' table to store all financial transactions

create table if not exists financial_transaction
(
    transaction_id bigint generated always as identity,
    transaction_date date not null,
    is_salary_boundary char(1) default 'N',
    budget_month smallint not null,
    budget_year integer not null,
    account_id bigint not null,
    category_id bigint not null,
    sub_category_id bigint not null,
    payment_mode_id bigint not null,
    merchant_id bigint default null,
    transaction_type varchar(20) not null,
    amount numeric(12, 2) not null default 0.00,
    current_balance numeric(12, 2) not null,
    description varchar(500) default null
);


-- Create the 'reserve' table to store all reserve transactions

create table if not exists reserve
(
    reserve_id bigint generated always as identity,
    reserve_cycle_no integer not null,
    account_id bigint not null,
    current_balance numeric(12, 2) not null default 0.00,
    transaction_id bigint not null,
    transaction_date date not null,
    transaction_type varchar(20) not null,
    amount numeric(12, 2) not null default 0.00,
    remarks varchar(500) default null
);