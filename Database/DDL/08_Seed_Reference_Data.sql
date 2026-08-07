/******************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 08_Seed_Reference_Data.sql
 * Module            : Database
 * Purpose           : Populates the Master Tables (account, category,
 *                     sub_category, payment_mode, merchant) with the
 *                     initial reference data required before any real
 *                     financial_transaction rows can be inserted, since
 *                     every downstream table depends on these via
 *                     foreign key.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 08-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 07_Create_Views.sql
 *
 * Execution Order   : 08
 *
 * Notes             :
 *
 * - Execute this script only after 07_Create_Views.sql has been
 *   successfully executed.
 *
 * - Master tables follow the append-only design. Existing records
 *   should not be updated or deleted. If a value becomes obsolete,
 *   mark it as inactive and insert a new row.
 *
 * - Merchant master is intentionally kept small. Additional merchants
 *   can be added through the application as they are encountered.
 ******************************************************************************/

-- =========================================================================
-- SECTION 1: account
-- =========================================================================

INSERT INTO account
(
    account_name,
    account_type,
    is_primary,
    is_active
)
VALUES
    ('HDFC', 'Salary + Savings', TRUE, TRUE),
    ('SBI', 'Savings', FALSE, TRUE),
    ('Indian Post', 'Savings', FALSE, TRUE),
    ('Cash Wallet', 'Hard Cash', FALSE, TRUE);



-- =========================================================================
-- SECTION 2: payment_mode
-- =========================================================================

INSERT INTO payment_mode
(
    payment_mode_name,
    is_active
)
VALUES
    ('UPI', TRUE),
    ('Debit Card', TRUE),
    ('Bank Transfer', TRUE),
    ('Cash', TRUE),
    ('Cheque', TRUE);



-- =========================================================================
-- SECTION 3: category
-- =========================================================================

INSERT INTO category
(
    category_name,
    is_active
)
VALUES
    ('Income', TRUE),
    ('Other Credit', TRUE),
    ('Groceries', TRUE),
    ('Medical', TRUE),
    ('Fuel', TRUE),
    ('Household', TRUE),
    ('Bike Maintenance', TRUE),
    ('Shopping', TRUE),
    ('Utilities', TRUE),
    ('Entertainment', TRUE),
    ('Insurance', TRUE),
    ('Investment', TRUE),
    ('Loan', TRUE),
    ('Transfer', TRUE);



-- =========================================================================
-- SECTION 4: sub_category
-- =========================================================================

INSERT INTO sub_category
(
    category_id,
    sub_category_name,
    is_active
)
SELECT
    c.category_id,
    v.sub_category_name,
    TRUE
FROM category c
JOIN
(
    VALUES

    -- Income
    ('Income', 'Salary'),

    -- Other Credit
    ('Other Credit', 'Gift'),
    ('Other Credit', 'Refund'),
    ('Other Credit', 'Cashback'),
    ('Other Credit', 'Interest'),
    ('Other Credit', 'Bank Reversal'),
    ('Other Credit', 'Other Credit'),

    -- Groceries
    ('Groceries', 'Milk'),
    ('Groceries', 'Fruits'),
    ('Groceries', 'Vegetables'),
    ('Groceries', 'Flowers'),
    ('Groceries', 'Staples'),
    ('Groceries', 'General Grocery'),

    -- Medical
    ('Medical', 'Medicines'),
    ('Medical', 'Doctor Visit'),
    ('Medical', 'Diagnostics'),

    -- Fuel
    ('Fuel', 'Petrol'),

    -- Household
    ('Household', 'Gas Cylinder'),
    ('Household', 'Electricity'),
    ('Household', 'Water Bill'),
    ('Household', 'House Maintenance'),

    -- Bike Maintenance
    ('Bike Maintenance', 'Engine Oil'),
    ('Bike Maintenance', 'Bike Service'),
    ('Bike Maintenance', 'Battery'),
    ('Bike Maintenance', 'Tyres'),
    ('Bike Maintenance', 'Chain'),
    ('Bike Maintenance', 'Spare Parts'),

    -- Shopping
    ('Shopping', 'Clothing'),
    ('Shopping', 'Electronics'),
    ('Shopping', 'Accessories'),

    -- Utilities
    ('Utilities', 'Mobile Recharge'),
    ('Utilities', 'WiFi'),
    ('Utilities', 'FASTag'),
    ('Utilities', 'DTH'),
    ('Utilities', 'Subscription'),

    -- Entertainment
    ('Entertainment', 'Movies'),
    ('Entertainment', 'Events'),

    -- Insurance
    ('Insurance', 'Insurance Premium'),

    -- Investment
    ('Investment', 'Investment'),

    -- Loan
    ('Loan', 'EMI'),

    -- Transfer
    ('Transfer', 'Hard Cash'),
    ('Transfer', 'Reserve Transfer')

) AS v(category_name, sub_category_name)
ON c.category_name = v.category_name;



-- =========================================================================
-- SECTION 5: merchant
-- =========================================================================

INSERT INTO merchant
(
    merchant_name,
    is_active
)
VALUES

    -- Local Vendors
    ('Local Vendor', TRUE),
    ('Vegetable Market', TRUE),
    ('Fruit Market', TRUE),
    ('Flower Market', TRUE),
    ('SP Farm Milk', TRUE),

    -- Supermarkets
    ('DMart', TRUE),
    ('Reliance Smart', TRUE),
    ('Vijetha Supermarket', TRUE),
    ('BigBasket', TRUE),
    ('Instamart', TRUE),
    ('Zepto', TRUE),
    ('Blinkit', TRUE),

    -- Online Shopping
    ('Amazon', TRUE),
    ('Flipkart', TRUE),

    -- Food Delivery
    ('Swiggy', TRUE),
    ('Zomato', TRUE),
    ('EatSure', TRUE),
    ('SmartQ', TRUE),

    -- Travel & Transport
    ('Uber', TRUE),
    ('Ola', TRUE),
    ('Rapido', TRUE),
    ('MakeMyTrip', TRUE),
    ('IRCTC', TRUE),

    -- Entertainment
    ('BookMyShow', TRUE),
    ('District', TRUE),

    -- Fuel Stations
    ('HP Petroleum', TRUE),
    ('Indian Oil', TRUE),
    ('Bharat Petroleum', TRUE),

    -- Telecom
    ('Airtel', TRUE),
    ('Jio', TRUE),

    -- Healthcare
    ('Apollo Pharmacy', TRUE),
    ('MedPlus', TRUE),
    ('Global Diagnostics', TRUE),
    ('Vijaya Diagnostics', TRUE),

    -- Insurance
    ('LIC', TRUE),

    -- Digital Services
    ('Netflix', TRUE),
    ('Amazon Prime', TRUE),
    ('ChatGPT', TRUE),
    ('Claude', TRUE);