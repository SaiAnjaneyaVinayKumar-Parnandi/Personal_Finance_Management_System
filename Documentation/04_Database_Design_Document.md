# Database Design Document

---

## Document Information

| Property | Details |
|----------|---------|
| Project Name | Personal Finance Management System (PFMS) |
| Document Name | 04_Database_Design_Document |
| Document ID | DOC-004 |
| Document Version | 1.0 |
| Document Status | Approved |
| Author | SaiAnjaneyaVinayKumar Parnandi |
| Created On | 04-Aug-2026 |
| Last Updated | 04-Aug-2026 |
| Reviewed By | SaiAnjaneyaVinayKumar Parnandi |
| Approved By | SaiAnjaneyaVinayKumar Parnandi |

---

## Purpose

The purpose of this Database Design Document (DDD) is to define the physical database design of the Personal Finance Management System (PFMS).

This document translates the approved logical database model defined in the Data Dictionary into an implementation-ready PostgreSQL database design. It provides the detailed technical specifications required for database creation, application development, database administration, testing, deployment, maintenance, and future enhancements.

The Database Design Document defines the physical implementation of all database objects, including database schemas, tables, columns, data types, primary keys, foreign keys, constraints, indexes, triggers, views, relationships, and implementation standards required for the Personal Finance Management System (PFMS).

This document serves as the authoritative implementation reference for constructing the PostgreSQL database while ensuring complete traceability to the approved Business Requirements Specification (BRS) and Data Dictionary.

---

## Scope

This Database Design Document defines the complete physical database implementation for the Personal Finance Management System (PFMS).

The scope of this document includes the physical implementation of all database objects required to support the approved Business Requirements Specification (BRS) and Data Dictionary. It establishes the implementation standards to be followed throughout database development, backend development, testing, deployment, maintenance, and future system enhancements.

The scope of this document includes, but is not limited to, the following:

- Database Technology
- Database Schema Design
- Physical Table Design
- Column Specifications
- PostgreSQL Data Types
- Primary Keys
- Foreign Keys
- Database Relationships
- Database Constraints
- Default Values
- Database Indexes
- Database Triggers
- Database Views
- Entity Relationship Diagram (ERD)
- Naming Standards
- Performance Considerations
- Security Considerations
- Backup and Recovery Considerations

This document defines the physical implementation of the PFMS database and serves as the primary reference for PostgreSQL database creation and implementation.

This document does not redefine business requirements, business workflows, user interface design, application architecture, REST API specifications, or testing procedures. Those subjects are documented separately within their respective project documents.

The Database Design Document shall remain fully traceable to the approved Business Requirements Specification (BRS) and Data Dictionary while serving as the authoritative reference for PostgreSQL database implementation within the Personal Finance Management System (PFMS).


## Database Technology

The Personal Finance Management System (PFMS) is designed to use PostgreSQL as its primary Relational Database Management System (RDBMS).

The database implementation has been designed to provide a robust, scalable, secure, standards-compliant, and maintainable foundation for managing financial and operational information while supporting efficient transaction processing, reporting, and future enhancements.

The following database technologies and implementation standards are adopted for the PFMS database.

| Component | Technology |
|-----------|------------|
| Relational Database Management System (RDBMS) | PostgreSQL 17.x |
| Database Administration Tool | pgAdmin 4 |
| SQL Standard | PostgreSQL SQL |
| Character Encoding | UTF-8 |
| Primary Key Strategy | GENERATED ALWAYS AS IDENTITY |
| Database Schema | public |
| Naming Convention | Snake Case (`snake_case`) |

The PostgreSQL implementation shall utilize the SQL-standard `GENERATED ALWAYS AS IDENTITY` feature for all surrogate Primary Key columns to ensure standards compliance, simplified identity management, and long-term maintainability.


## Database Design Principles

The database design of the Personal Finance Management System (PFMS) is based on a set of architectural and implementation principles that ensure consistency, integrity, maintainability, scalability, and long-term sustainability.

These principles govern the physical implementation of the PostgreSQL database and provide a standardized approach for designing database objects, enforcing business rules, preserving financial integrity, and supporting future enhancements.

The following database design principles are adopted throughout the Personal Finance Management System (PFMS).

| S.No | Design Principle | Description |
|------|------------------|-------------|
| 1 | Business-Oriented Design | Database objects are designed to represent business entities and business processes rather than application-specific implementation details. |
| 2 | Logical and Physical Separation | The physical database implementation preserves the logical business model defined within the approved Data Dictionary while adopting PostgreSQL implementation standards. |
| 3 | Database Normalization | Database tables are normalized to minimize data redundancy, improve maintainability, and preserve data consistency. |
| 4 | Single Financial Source of Truth | All financial activities are represented through the `financial_transaction` table, which serves as the centralized financial ledger of PFMS. |
| 5 | Referential Integrity | Relationships between database tables are enforced through Primary Key and Foreign Key constraints to preserve data integrity. |
| 6 | Historical Data Preservation | Historical financial and operational information shall be preserved to support reporting, auditing, recalculation, and analytical processing. |
| 7 | Data Integrity | Database constraints, triggers, and validation mechanisms shall ensure that all stored information remains accurate, consistent, and reliable. |
| 8 | Performance-Oriented Design | Appropriate indexes, optimized relationships, and efficient query structures shall be implemented to support high-performance data retrieval and reporting. |
| 9 | Scalability and Extensibility | The database design shall support future business enhancements without requiring major structural changes. |
| 10 | Maintainability | Database objects shall follow standardized naming conventions, implementation standards, and documentation practices to simplify long-term maintenance. |

The Database Design Principles defined in this document shall be consistently applied throughout the implementation of all database tables, relationships, constraints, indexes, triggers, views, and other database objects within the Personal Finance Management System (PFMS).


## Database Naming Standards

The Database Naming Standards define the physical naming conventions to be followed while implementing database objects within the Personal Finance Management System (PFMS).

These standards establish a consistent, predictable, and maintainable naming convention for all PostgreSQL database objects. Standardized naming improves database readability, simplifies application development, facilitates database administration, and supports long-term maintenance and future enhancements.

The naming standards defined in this document shall be consistently applied to all physical database objects created within the Personal Finance Management System (PFMS), including but not limited to:

- Database Tables
- Database Views
- Database Indexes
- Database Triggers
- Database Columns
- Primary Keys
- Foreign Keys
- Unique Constraints
- Check Constraints
- Default Constraints

---

### General Naming Standards

The following naming standards shall be consistently applied throughout the PFMS database.

- All database object names shall use lowercase characters.
- Multiple words shall be separated using underscores (`_`).
- Database object names shall follow the `snake_case` naming convention.
- Database object names shall be meaningful, descriptive, and business-oriented.
- Technical abbreviations shall be avoided unless they represent widely accepted database terminology.
- Database object names shall remain consistent throughout PFMS.
- Reserved SQL keywords shall not be used as database object names.

---

### Database Table Naming Standards

Database Tables shall:

- Represent a single business entity.
- Use singular nouns.
- Follow the `snake_case` naming convention.
- Avoid unnecessary prefixes or suffixes.
- Remain independent of application-specific implementation details.

**Examples**

- account
- category
- sub_category
- payment_mode
- merchant
- budget
- insurance
- investment
- loan
- utility
- reserve
- milk_purchase_log
- gas_cylinder_log
- bike_fuel_log
- engine_oil_log
- bike_maintenance_log
- financial_transaction
- hard_cash_wallet

---

### Database Column Naming Standards

Database Columns shall:

- Follow the `snake_case` naming convention.
- Clearly describe the stored business information.
- Remain meaningful and self-explanatory.
- Avoid ambiguous abbreviations.

**Examples**

- account_name
- account_type
- transaction_date
- transaction_type
- amount
- current_balance
- payment_mode_id
- category_id
- merchant_id
- reserve_generation_no

---

### Primary Key Naming Standards

Primary Key columns shall:

- Follow the `<table_name>_id` naming convention.
- Be implemented using `GENERATED ALWAYS AS IDENTITY`.

**Examples**

- account_id
- category_id
- budget_id
- reserve_id
- transaction_id
- hard_cash_wallet_id

---

### Foreign Key Naming Standards

Foreign Key columns shall:

- Use the referenced Primary Key column name.
- Follow the `<referenced_table>_id` naming convention.

**Examples**

- account_id
- category_id
- sub_category_id
- payment_mode_id
- merchant_id
- transaction_id

---

### Constraint Naming Standards

Database Constraints shall follow standardized naming conventions.

| Constraint Type | Naming Convention | Example |
|-----------------|-------------------|---------|
| Primary Key | `pk_<table_name>` | `pk_account` |
| Foreign Key | `fk_<table_name>_<referenced_table>` | `fk_budget_category` |
| Unique Constraint | `uq_<table_name>_<column_name>` | `uq_account_account_name` |
| Check Constraint | `chk_<table_name>_<column_name>` | `chk_financial_transaction_transaction_type` |
| Default Constraint* | Database Default Value | Inline `DEFAULT` definition |

> *PostgreSQL does not require separate names for DEFAULT constraints because DEFAULT values are defined inline as part of the column definition.

---

### Database Index Naming Standards

Database Indexes shall follow the naming convention:

`idx_<table_name>_<column_name>`

**Examples**

- idx_financial_transaction_transaction_date
- idx_financial_transaction_account_id
- idx_budget_budget_month
- idx_milk_purchase_log_purchase_date

---

### Database Trigger Naming Standards

Database Triggers shall follow the naming convention:

`trg_<table_name>_<business_purpose>`

**Examples**

- trg_financial_transaction_balance
- trg_financial_transaction_budget_period
- trg_reserve_generation
- trg_hard_cash_wallet_balance

---

### Database View Naming Standards

Database Views shall:

- Begin with the prefix `vw_`.
- Follow the `snake_case` naming convention.
- Represent reporting, analytical, or summary information.

**Examples**

- vw_financial_transaction_details
- vw_budget_utilization
- vw_milk_monthly_summary
- vw_milk_payment_status

---

The Database Naming Standards defined in this document shall be consistently applied throughout the implementation of all PostgreSQL database objects within the Personal Finance Management System (PFMS) to ensure consistency, readability, maintainability, and long-term scalability.


## Database Schema

The Personal Finance Management System (PFMS) database is implemented using a single PostgreSQL database schema.

The schema provides a logical namespace for organizing all database objects while ensuring consistency, maintainability, and simplified database administration.

All database objects defined within the Personal Finance Management System (PFMS), including tables, views, indexes, triggers, constraints, and other supporting database objects, shall be created within the same schema unless future business requirements necessitate the introduction of additional schemas.

The following database schema is adopted for the implementation of the PFMS database.

| Component | Value |
|-----------|-------|
| Database Schema | `public` |

The use of a single database schema simplifies application development, database administration, deployment, backup, and maintenance while providing sufficient scalability for the current scope of the Personal Finance Management System (PFMS).



## Database Architecture

The Personal Finance Management System (PFMS) database is organized into logical groups of database tables based on their business responsibilities and functional purpose.

The database architecture follows a modular design approach that separates reusable master data, financial planning information, reserve planning, operational activity logs, and core financial transactions while maintaining referential integrity and a clear separation of business responsibilities.

The PFMS database consists of the following logical database components.

| S.No | Database Component | Description |
|------|--------------------|-------------|
| 1 | Master Tables | Maintain reusable business reference information shared across multiple business modules. |
| 2 | Financial Planning Tables | Maintain budgeting, insurance, investment, loan, and utility planning information. |
| 3 | Reserve Planning Tables | Maintain Reserve Generation information used for Emergency Fund planning and lifecycle management. |
| 4 | Operational Activity Log Tables | Maintain historical operational information generated through day-to-day activities. |
| 5 | Core Financial Transaction Tables | Maintain the complete financial history of the Personal Finance Management System (PFMS) and serve as the centralized financial repository for all financial activities. |

The following sections describe the physical implementation of each database component, including the database tables, column definitions, constraints, relationships, indexes, triggers, and implementation standards adopted for the PostgreSQL database.



# Physical Database Design

The Physical Database Design defines the implementation details of all database tables required by the Personal Finance Management System (PFMS).

Each database table described in this section represents the physical implementation of the approved logical database model documented within the Data Dictionary. The physical design specifies the PostgreSQL table names, column definitions, data types, identity columns, constraints, relationships, indexes, triggers, and implementation standards required for database creation.

The database is organized into logical groups based on business functionality while maintaining a modular, normalized, scalable, and maintainable architecture.

The Physical Database Design consists of the following database components.

| S.No | Database Component | Number of Tables |
|------|--------------------|-----------------:|
| 1 | Master Tables | 5 |
| 2 | Financial Planning Tables | 5 |
| 3 | Reserve Planning Tables | 1 |
| 4 | Operational Activity Log Tables | 5 |
| 5 | Core Financial Transaction Tables | 2 |

The following sections describe the physical implementation of each database table in detail.

---

## Master Tables

The Master Tables provide reusable business reference information shared across multiple business modules within the Personal Finance Management System (PFMS).

These tables maintain standardized business information that is referenced by Financial Planning Tables, Operational Activity Log Tables, Reserve Planning Tables, and Core Financial Transaction Tables. They serve as the foundation of the PostgreSQL database by preserving business consistency, referential integrity, and data reuse throughout the application.

The following Master Tables are implemented within the PFMS database.

| S.No | Logical Name | Physical Table Name | Purpose |
|------|--------------|---------------------|---------|
| 1 | Account | `account` | Maintains financial accounts used for recording Financial Transactions. |
| 2 | Category | `category` | Maintains the primary financial classifications used throughout PFMS. |
| 3 | SubCategory | `sub_category` | Maintains detailed financial classifications within a Category. |
| 4 | PaymentMode | `payment_mode` | Maintains the supported payment methods used for Financial Transactions. |
| 5 | Merchant | `merchant` | Maintains merchants, vendors, financial institutions, and service providers used throughout PFMS. |

The following sections define the physical implementation of each Master Table.


### Account

**Logical Name**

Account

**Physical Table Name**

`account`

**Purpose**

The `account` table physically implements the Account entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and maintains the master information for all financial accounts through which Financial Transactions, Reserve Planning, Investments, Loans, and other financial activities are performed. Each record represents a unique financial account, such as a Salary Account, Savings Account, Physical Cash Account, APY Account, or any other supported account type.

The table stores only account master information. Financial activities associated with an account are maintained separately within the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| account_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Account. |
| account_name | VARCHAR(100) | No | No | - | Name of the financial account. |
| account_type | VARCHAR(50) | No | No | - | Type of the financial account. |
| is_primary | BOOLEAN | No | No | FALSE | Indicates whether the Account is designated as the Primary Account. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the Account is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_account | account_id |

#### Foreign Keys

None.

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_account_account_name | account_name |

#### Check Constraints

None.

#### Default Values

| Column | Default Value |
|--------|---------------|
| is_primary | FALSE |
| is_active | TRUE |

#### Recommended Indexes

| Index Name | Column(s) | Purpose |
|------------|-----------|---------|
| idx_account_account_type | account_type | Improves filtering and reporting based on Account Type. |
| idx_account_is_active | is_active | Improves retrieval of active Accounts. |

#### Referenced By

| Referencing Table | Foreign Key Column |
|-------------------|--------------------|
| `financial_transaction` | account_id |
| `hard_cash_wallet` | account_id |
| `reserve` | account_id |
| `investment` | account_id |
| `loan` | account_id |

#### Implementation Considerations

- The `account_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The `account_name` column shall be enforced as unique through the `uq_account_account_name` constraint.
- Only one Account shall be designated as the Primary Account at any given time. This business rule shall be enforced through database triggers and application-level validation.
- Historical Financial Transactions shall remain unaffected when an Account is marked as inactive.
- The `account` table shall store only master data. All financial activities associated with an Account shall be maintained within the `financial_transaction` table.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `account` table serves as the centralized repository for financial account master information within the Personal Finance Management System (PFMS). Its physical implementation provides standardized account information that supports Financial Transaction processing, Reserve Planning, Financial Planning, reporting, analytics, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


### Category

**Logical Name**

Category

**Physical Table Name**

`category`

**Purpose**

The `category` table physically implements the Category entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and maintains the primary financial classifications used throughout the application. Each Category represents a high-level financial classification that groups related financial activities for budgeting, Financial Transactions, Reserve Planning, reporting, analytics, and other business processes.

The table stores only category master information. Financial activities associated with a Category are maintained separately within the `financial_transaction`, `budget`, and `hard_cash_wallet` tables.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| category_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Category. |
| category_name | VARCHAR(100) | No | No | - | Name of the financial category. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the Category is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_category | category_id |

#### Foreign Keys

None.

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_category_category_name | category_name |

#### Check Constraints

None.

#### Default Values

| Column | Default Value |
|--------|---------------|
| is_active | TRUE |

#### Recommended Indexes

| Index Name | Column(s) | Purpose |
|------------|-----------|---------|
| idx_category_is_active | is_active | Improves retrieval of active Categories. |

#### Referenced By

| Referencing Table | Foreign Key Column |
|-------------------|--------------------|
| `sub_category` | category_id |
| `budget` | category_id |
| `financial_transaction` | category_id |
| `hard_cash_wallet` | category_id |

#### Implementation Considerations

- The `category_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The `category_name` column shall be enforced as unique through the `uq_category_category_name` constraint.
- A Category may be referenced by one or more SubCategories.
- Historical Financial Transactions shall remain unaffected when a Category is marked as inactive.
- Categories referenced by other business entities shall not be physically deleted in order to preserve referential integrity.
- The `category` table shall store only master data. Business transactions shall be maintained within their respective transactional tables.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `category` table serves as the centralized repository for financial category master information within the Personal Finance Management System (PFMS). Its physical implementation provides standardized financial classifications that support Financial Transaction processing, Budget Management, Reserve Planning, reporting, analytics, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.



### SubCategory

**Logical Name**

SubCategory

**Physical Table Name**

`sub_category`

**Purpose**

The `sub_category` table physically implements the SubCategory entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and maintains the detailed financial classifications associated with a Category. Each SubCategory belongs to exactly one Category and provides a finer level of financial classification for Budget Management, Financial Transactions, Reserve Planning, reporting, analytics, and other business processes.

The table stores only sub-category master information. Financial activities associated with a SubCategory are maintained separately within the `financial_transaction`, `budget`, and `hard_cash_wallet` tables.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| sub_category_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the SubCategory. |
| category_id | BIGINT | No | No | - | References the associated Category. |
| sub_category_name | VARCHAR(100) | No | No | - | Name of the financial sub-category. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the SubCategory is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_sub_category | sub_category_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_sub_category_category | category_id | category(category_id) |

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_sub_category_category_name | category_id, sub_category_name |

#### Check Constraints

None.

#### Default Values

| Column | Default Value |
|--------|---------------|
| is_active | TRUE |

#### Recommended Indexes

| Index Name | Column(s) | Purpose |
|------------|-----------|---------|
| idx_sub_category_category_id | category_id | Improves join performance with the `category` table. |
| idx_sub_category_is_active | is_active | Improves retrieval of active SubCategories. |

#### Referenced By

| Referencing Table | Foreign Key Column |
|-------------------|--------------------|
| `budget` | sub_category_id |
| `financial_transaction` | sub_category_id |
| `hard_cash_wallet` | sub_category_id |

#### Implementation Considerations

- The `sub_category_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_sub_category_category` shall enforce the relationship between `sub_category(category_id)` and `category(category_id)`.
- The combination of `category_id` and `sub_category_name` shall be enforced as unique through the `uq_sub_category_category_name` constraint.
- Every SubCategory shall belong to exactly one Category.
- Historical Financial Transactions shall remain unaffected when a SubCategory is marked as inactive.
- SubCategories referenced by other business entities shall not be physically deleted in order to preserve referential integrity.
- The `sub_category` table shall store only master data. Business transactions shall be maintained within their respective transactional tables.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `sub_category` table serves as the centralized repository for financial sub-category master information within the Personal Finance Management System (PFMS). Its physical implementation provides standardized detailed financial classifications that support Financial Transaction processing, Budget Management, Reserve Planning, reporting, analytics, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


### PaymentMode

**Logical Name**

PaymentMode

**Physical Table Name**

`payment_mode`

**Purpose**

The `payment_mode` table physically implements the PaymentMode entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and maintains the supported payment methods used for Financial Transactions. Each record represents a standardized payment method, such as Cash, UPI, Debit Card, Credit Card, Net Banking, Cheque, or any other supported payment method.

The table stores only payment mode master information. Financial activities associated with a Payment Mode are maintained separately within the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| payment_mode_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Payment Mode. |
| payment_mode_name | VARCHAR(100) | No | No | - | Name of the payment method. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the Payment Mode is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_payment_mode | payment_mode_id |

#### Foreign Keys

None.

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_payment_mode_payment_mode_name | payment_mode_name |

#### Check Constraints

None.

#### Default Values

| Column | Default Value |
|--------|---------------|
| is_active | TRUE |

#### Recommended Indexes

| Index Name | Column(s) | Purpose |
|------------|-----------|---------|
| idx_payment_mode_is_active | is_active | Improves retrieval of active Payment Modes. |

#### Referenced By

| Referencing Table | Foreign Key Column |
|-------------------|--------------------|
| `financial_transaction` | payment_mode_id |

#### Implementation Considerations

- The `payment_mode_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The `payment_mode_name` column shall be enforced as unique through the `uq_payment_mode_payment_mode_name` constraint.
- Historical Financial Transactions shall remain unaffected when a Payment Mode is marked as inactive.
- Payment Modes referenced by Financial Transactions shall not be physically deleted in order to preserve referential integrity.
- The `payment_mode` table shall store only master data. Financial activities shall be maintained within the `financial_transaction` table.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `payment_mode` table serves as the centralized repository for payment mode master information within the Personal Finance Management System (PFMS). Its physical implementation provides standardized payment methods that support Financial Transaction processing, reporting, analytics, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


### Merchant

**Logical Name**

Merchant

**Physical Table Name**

`merchant`

**Purpose**

The `merchant` table physically implements the Merchant entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and maintains the master information for external business entities associated with financial and operational activities. Each record represents a unique merchant, vendor, financial institution, insurance provider, investment organization, lender, government organization, service provider, or any other external business entity referenced throughout the application.

The table stores only merchant master information. Business transactions and operational activities associated with a Merchant are maintained separately within their respective business tables.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| merchant_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Merchant. |
| merchant_name | VARCHAR(150) | No | No | - | Name of the merchant, vendor, financial institution, insurance provider, service provider, government organization, or other external business entity. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the Merchant is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_merchant | merchant_id |

#### Foreign Keys

None.

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_merchant_merchant_name | merchant_name |

#### Check Constraints

None.

#### Default Values

| Column | Default Value |
|--------|---------------|
| is_active | TRUE |

#### Recommended Indexes

| Index Name | Column(s) | Purpose |
|------------|-----------|---------|
| idx_merchant_is_active | is_active | Improves retrieval of active Merchants. |

#### Referenced By

| Referencing Table | Foreign Key Column |
|-------------------|--------------------|
| `financial_transaction` | merchant_id |
| `hard_cash_wallet` | merchant_id |
| `insurance` | merchant_id |
| `investment` | merchant_id |
| `loan` | merchant_id |
| `utility` | merchant_id |
| `bike_fuel_log` | merchant_id |
| `engine_oil_log` | merchant_id |
| `bike_maintenance_log` | merchant_id |

#### Implementation Considerations

- The `merchant_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The `merchant_name` column shall be enforced as unique through the `uq_merchant_merchant_name` constraint.
- Historical Financial Transactions and Operational Activity Log records shall remain unaffected when a Merchant is marked as inactive.
- Merchants referenced by other business entities shall not be physically deleted in order to preserve referential integrity.
- The `merchant` table shall store only master data. Financial and operational activities shall be maintained within their respective business tables.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `merchant` table serves as the centralized repository for merchant master information within the Personal Finance Management System (PFMS). Its physical implementation provides standardized business entity information that supports Financial Transaction processing, Financial Planning, Operational Activity Management, reporting, analytics, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


## Financial Planning Tables

The Financial Planning Tables physically implement the Financial Planning entities defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

These tables maintain the current financial planning information required to support budgeting, insurance management, investment management, loan management, utility management, and Reserve Planning. They store the latest business state of each financial planning entity while the complete financial history is maintained separately within the `financial_transaction` table.

The Financial Planning Tables are designed to support financial planning, due-date management, payment tracking, reporting, analytics, and long-term financial management while maintaining referential integrity and minimizing data redundancy through normalized database design.

The following Financial Planning Tables are implemented within the PFMS database.

| S.No | Logical Name | Physical Table Name | Purpose |
|------|--------------|---------------------|---------|
| 1 | Budget | `budget` | Maintains planned budget allocations for financial categories and sub-categories. |
| 2 | Insurance | `insurance` | Maintains insurance policy information and premium payment schedules. |
| 3 | Investment | `investment` | Maintains investment information, contribution schedules, and maturity tracking. |
| 4 | Loan | `loan` | Maintains loan information, repayment schedules, and loan commitments. |
| 5 | Utility | `utility` | Maintains utility services, subscriptions, renewals, and recurring payment information. |

The following sections define the physical implementation of each Financial Planning Table.


### Budget

**Logical Name**

Budget

**Physical Table Name**

`budget`

**Purpose**

The `budget` table physically implements the Budget entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and maintains the planned budget allocations for individual financial Categories and SubCategories on a monthly basis. Each record represents the planned financial allocation for a unique Budget Period, Category, and SubCategory combination.

The table stores only budget planning information. Actual financial activities are maintained separately within the `financial_transaction` table and are used for Budget utilization, variance analysis, reporting, and analytics.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| budget_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Budget. |
| budget_month | SMALLINT | No | No | - | Budget month (1–12). |
| budget_year | INTEGER | No | No | - | Budget year (e.g., 2026). |
| category_id | BIGINT | No | No | - | References the associated Category. |
| sub_category_id | BIGINT | No | No | - | References the associated SubCategory. |
| budget_amount | NUMERIC(12,2) | No | No | 0.00 | Planned budget amount. |
| remarks | VARCHAR(500) | Yes | No | NULL | Additional remarks related to the Budget. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_budget | budget_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_budget_category | category_id | category(category_id) |
| fk_budget_sub_category | sub_category_id | sub_category(sub_category_id) |

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_budget_period_category_sub_category | budget_year, budget_month, category_id, sub_category_id |

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_budget_month | budget_month BETWEEN 1 AND 12 |
| chk_budget_budget_amount | budget_amount >= 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| budget_amount | 0.00 |
| remarks | NULL |

#### Recommended Indexes

| Index Name | Column(s) | Purpose |
|------------|-----------|---------|
| idx_budget_budget_period | budget_year, budget_month | Improves Budget Period retrieval and reporting. |
| idx_budget_category_id | category_id | Improves Category-based Budget analysis. |
| idx_budget_sub_category_id | sub_category_id | Improves SubCategory-based Budget analysis. |

#### Referenced By

None.

#### Implementation Considerations

- The `budget_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_budget_category` shall enforce the relationship between `budget(category_id)` and `category(category_id)`.
- The Foreign Key constraint `fk_budget_sub_category` shall enforce the relationship between `budget(sub_category_id)` and `sub_category(sub_category_id)`.
- The combination of `budget_year`, `budget_month`, `category_id`, and `sub_category_id` shall be enforced as unique through the `uq_budget_period_category_sub_category` constraint.
- The `budget_month` value shall be restricted to values between **1** and **12**.
- Budget allocations shall represent planning information only and shall not restrict Financial Transaction processing.
- Budget utilization shall be calculated through database views by aggregating Financial Transactions for the corresponding Budget Period.
- The `budget` table shall store only planning information and shall not maintain historical Financial Transactions.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `budget` table serves as the centralized repository for budget planning information within the Personal Finance Management System (PFMS). Its physical implementation supports Budget planning, utilization analysis, variance reporting, financial analytics, and future enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


### Insurance

**Logical Name**

Insurance

**Physical Table Name**

`insurance`

**Purpose**

The `insurance` table physically implements the Insurance entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and maintains the current information related to insurance policies, including policy details, premium information, payment schedules, and renewal tracking. Each record represents an active or historical insurance policy maintained for financial planning and premium payment management.

The table stores only the latest insurance policy information. Premium payment history is maintained through the associated records in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| insurance_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Insurance record. |
| insurance_name | VARCHAR(200) | No | No | - | Official name of the insurance plan. |
| insurance_type | VARCHAR(100) | No | No | - | Type of insurance (e.g., Life, Health, Vehicle, Personal Accident, Travel). |
| merchant_id | BIGINT | No | No | - | References the insurance provider from the `merchant` table. |
| policy_number | VARCHAR(100) | No | No | - | Policy number issued by the insurance provider. |
| premium_amount | NUMERIC(12,2) | No | No | 0.00 | Premium amount payable for each payment cycle. |
| premium_frequency | VARCHAR(50) | No | No | - | Premium payment frequency (Monthly, Quarterly, Half-Yearly, Yearly). |
| start_date | DATE | No | No | - | Policy commencement date. |
| premium_end_date | DATE | Yes | No | NULL | Date on which premium payments are completed. |
| maturity_date | DATE | Yes | No | NULL | Policy maturity date. |
| grace_period_days | INTEGER | Yes | No | NULL | Number of grace period days allowed after the premium due date. |
| last_payment_date | DATE | Yes | No | NULL | Date on which the most recent premium payment was made. |
| next_due_date | DATE | Yes | No | NULL | Next scheduled premium payment date. |
| transaction_id | BIGINT | Yes | No | NULL | References the most recent Financial Transaction associated with the insurance policy. |
| remarks | VARCHAR(500) | Yes | No | NULL | Additional remarks related to the insurance policy. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the insurance policy is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_insurance | insurance_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_insurance_merchant | merchant_id | merchant(merchant_id) |
| fk_insurance_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_insurance_policy_number | policy_number |

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_insurance_premium_amount | premium_amount >= 0 |
| chk_insurance_grace_period_days | grace_period_days IS NULL OR grace_period_days >= 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| premium_amount | 0.00 |
| remarks | NULL |
| is_active | TRUE |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_insurance_merchant_id | BTREE | merchant_id | Improves retrieval of insurance policies by provider. |
| idx_insurance_next_due_date | BTREE | next_due_date | Improves premium due tracking. |
| idx_insurance_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |
| idx_insurance_is_active | BTREE | is_active | Improves retrieval of active insurance policies. |

#### Referenced By

None.

#### Implementation Considerations

- The `insurance_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_insurance_merchant` shall enforce the relationship between `insurance(merchant_id)` and `merchant(merchant_id)`.
- The Foreign Key constraint `fk_insurance_transaction` shall enforce the relationship between `insurance(transaction_id)` and `financial_transaction(transaction_id)`.
- The `policy_number` column shall be enforced as unique through the `uq_insurance_policy_number` constraint.
- The `transaction_id` column shall reference the most recent Financial Transaction associated with the insurance policy and shall remain optional until the first premium payment is recorded.
- Insurance records shall maintain only the latest policy information.
- Premium payment history shall be maintained within the `financial_transaction` table.
- The `last_payment_date` and `next_due_date` columns shall represent the latest payment status of the policy.
- Insurance records referenced by Financial Transactions shall not be physically deleted.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `insurance` table serves as the centralized repository for insurance policy information within the Personal Finance Management System (PFMS). Its physical implementation supports premium payment planning, renewal tracking, due-date monitoring, financial reporting, and future enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.



### Investment

**Logical Name**

Investment

**Physical Table Name**

`investment`

**Purpose**

The `investment` table physically implements the Investment entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and maintains the current information related to investments, including investment details, contribution information, payment schedules, and maturity tracking. Each record represents an active or historical investment maintained for financial planning and investment management.

The table stores only the latest investment information. Historical investment contributions shall be maintained through the associated records in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| investment_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Investment record. |
| investment_name | VARCHAR(200) | No | No | - | User-defined name describing the investment. |
| investment_type | VARCHAR(100) | No | No | - | Type of investment (e.g., FD, RD, PPF, NPS, APY, Mutual Fund, Stocks, Gold, Bonds, Others). |
| merchant_id | BIGINT | No | No | - | References the financial institution or investment provider from the `merchant` table. |
| account_id | BIGINT | No | No | - | References the Account from which investment contributions are made. |
| investment_amount | NUMERIC(12,2) | No | No | 0.00 | Investment amount or recurring contribution amount. |
| contribution_frequency | VARCHAR(50) | Yes | No | NULL | Contribution frequency (Monthly, Quarterly, Half-Yearly, Yearly), where applicable. |
| start_date | DATE | No | No | - | Investment commencement date. |
| maturity_date | DATE | Yes | No | NULL | Investment maturity date, where applicable. |
| last_payment_date | DATE | Yes | No | NULL | Date on which the most recent investment contribution was made. |
| next_due_date | DATE | Yes | No | NULL | Next scheduled investment contribution date, where applicable. |
| transaction_id | BIGINT | Yes | No | NULL | References the most recent Financial Transaction associated with the investment. |
| remarks | VARCHAR(500) | Yes | No | NULL | Additional remarks related to the investment. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the investment is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_investment | investment_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_investment_merchant | merchant_id | merchant(merchant_id) |
| fk_investment_account | account_id | account(account_id) |
| fk_investment_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_investment_amount | investment_amount >= 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| investment_amount | 0.00 |
| contribution_frequency | NULL |
| maturity_date | NULL |
| last_payment_date | NULL |
| next_due_date | NULL |
| transaction_id | NULL |
| remarks | NULL |
| is_active | TRUE |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_investment_merchant_id | BTREE | merchant_id | Improves retrieval of investments by financial institution. |
| idx_investment_account_id | BTREE | account_id | Improves Account-based investment analysis. |
| idx_investment_next_due_date | BTREE | next_due_date | Improves investment contribution due tracking. |
| idx_investment_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |
| idx_investment_is_active | BTREE | is_active | Improves retrieval of active investment records. |

#### Referenced By

None.

#### Implementation Considerations

- The `investment_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_investment_merchant` shall enforce the relationship between `investment(merchant_id)` and `merchant(merchant_id)`.
- The Foreign Key constraint `fk_investment_account` shall enforce the relationship between `investment(account_id)` and `account(account_id)`.
- The Foreign Key constraint `fk_investment_transaction` shall enforce the relationship between `investment(transaction_id)` and `financial_transaction(transaction_id)`.
- The `transaction_id` column shall reference the most recent Financial Transaction associated with the investment and shall remain optional until the first investment contribution is recorded.
- Investment records shall maintain only the latest investment information.
- Historical investment contributions shall be maintained through the associated records in the `financial_transaction` table.
- The `last_payment_date` and `next_due_date` columns shall represent the latest contribution status of the investment.
- Investment records shall not be physically deleted once financial transactions have been associated with the investment.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `investment` table serves as the centralized repository for investment information within the Personal Finance Management System (PFMS). Its physical implementation supports investment planning, contribution tracking, maturity monitoring, financial reporting, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


### Loan

**Logical Name**

Loan

**Physical Table Name**

`loan`

**Purpose**

The `loan` table physically implements the Loan entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and maintains the current information related to loans, including loan details, repayment information, payment schedules, and loan monitoring. Each record represents an active or historical loan maintained for financial planning and repayment management.

The table stores only the latest loan information. Historical loan repayments shall be maintained through the associated records in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| loan_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Loan record. |
| loan_type | VARCHAR(200) | No | No | - | User-defined description indicating the purpose or type of the loan (e.g., Home Loan, Vehicle Loan, Education Loan, Personal Loan). |
| merchant_id | BIGINT | No | No | - | References the financial institution or lender from the `merchant` table. |
| account_id | BIGINT | No | No | - | References the Account from which loan repayments are made. |
| loan_amount | NUMERIC(12,2) | No | No | 0.00 | Total sanctioned loan amount. |
| roi | NUMERIC(5,2) | Yes | No | NULL | Current Rate of Interest (ROI) applicable to the loan. |
| emi_amount | NUMERIC(12,2) | No | No | 0.00 | Current Equated Monthly Installment (EMI) amount payable. |
| payment_frequency | VARCHAR(50) | No | No | 'Monthly' | Loan repayment frequency (Monthly, Quarterly, Half-Yearly, Yearly). |
| is_auto_payment | BOOLEAN | No | No | FALSE | Indicates whether loan repayments are configured for automatic payment. |
| start_date | DATE | No | No | - | Loan commencement date. |
| end_date | DATE | Yes | No | NULL | Expected loan completion date. |
| last_payment_date | DATE | Yes | No | NULL | Date on which the most recent loan repayment was made. |
| next_due_date | DATE | Yes | No | NULL | Next scheduled loan repayment date. |
| transaction_id | BIGINT | Yes | No | NULL | References the most recent Financial Transaction associated with the loan. |
| remarks | VARCHAR(500) | Yes | No | NULL | Additional remarks related to the loan. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the loan is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_loan | loan_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_loan_merchant | merchant_id | merchant(merchant_id) |
| fk_loan_account | account_id | account(account_id) |
| fk_loan_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_loan_amount | loan_amount >= 0 |
| chk_loan_roi | roi IS NULL OR roi >= 0 |
| chk_loan_emi_amount | emi_amount >= 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| loan_amount | 0.00 |
| roi | NULL |
| emi_amount | 0.00 |
| payment_frequency | 'Monthly' |
| is_auto_payment | FALSE |
| end_date | NULL |
| last_payment_date | NULL |
| next_due_date | NULL |
| transaction_id | NULL |
| remarks | NULL |
| is_active | TRUE |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_loan_merchant_id | BTREE | merchant_id | Improves retrieval of loans by lender. |
| idx_loan_account_id | BTREE | account_id | Improves Account-based loan analysis. |
| idx_loan_next_due_date | BTREE | next_due_date | Improves loan repayment due tracking. |
| idx_loan_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |
| idx_loan_is_active | BTREE | is_active | Improves retrieval of active loans. |

#### Referenced By

None.

#### Implementation Considerations

- The `loan_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_loan_merchant` shall enforce the relationship between `loan(merchant_id)` and `merchant(merchant_id)`.
- The Foreign Key constraint `fk_loan_account` shall enforce the relationship between `loan(account_id)` and `account(account_id)`.
- The Foreign Key constraint `fk_loan_transaction` shall enforce the relationship between `loan(transaction_id)` and `financial_transaction(transaction_id)`.
- The `transaction_id` column shall reference the most recent Financial Transaction associated with the loan and shall remain optional until the first loan repayment is recorded.
- Loan records shall maintain only the latest loan information.
- Historical loan repayments shall be maintained through the associated records in the `financial_transaction` table.
- The `last_payment_date` and `next_due_date` columns shall represent the latest repayment status of the loan.
- Loan records shall not be physically deleted once financial transactions have been associated with the loan.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `loan` table serves as the centralized repository for loan information within the Personal Finance Management System (PFMS). Its physical implementation supports loan repayment planning, EMI tracking, repayment monitoring, financial reporting, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


### Utility

**Logical Name**

Utility

**Physical Table Name**

`utility`

**Purpose**

The `utility` table physically implements the Utility entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and maintains the current information related to recurring utilities, subscriptions, government documents, licenses, and other services requiring periodic renewal or payment. Each record represents an active or historical utility maintained for renewal planning and payment management.

The table stores only the latest utility information. Historical utility payments and renewals shall be maintained through the associated records in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| utility_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Utility record. |
| utility_name | VARCHAR(200) | No | No | - | User-defined name of the utility, subscription, document, or service. |
| merchant_id | BIGINT | No | No | - | References the service provider, vendor, or issuing authority from the `merchant` table. |
| reference_identifier | VARCHAR(200) | Yes | No | NULL | User-defined reference identifier such as Passport Number, Mobile Number, Consumer Number, Customer ID, Service ID, or any other identifier associated with the utility. |
| amount | NUMERIC(12,2) | No | No | 0.00 | Amount payable for the utility, subscription, or renewal. |
| start_date | DATE | No | No | - | Utility commencement or issue date. |
| expiry_date | DATE | No | No | - | Utility expiry or renewal due date. |
| last_payment_date | DATE | Yes | No | NULL | Date on which the most recent payment or renewal was completed. |
| next_due_date | DATE | Yes | No | NULL | Next scheduled payment or renewal due date. |
| transaction_id | BIGINT | Yes | No | NULL | References the most recent Financial Transaction associated with the utility. |
| remarks | VARCHAR(500) | Yes | No | NULL | Additional remarks related to the utility. |
| is_active | BOOLEAN | No | No | TRUE | Indicates whether the Utility is active. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_utility | utility_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_utility_merchant | merchant_id | merchant(merchant_id) |
| fk_utility_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_utility_amount | amount >= 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| amount | 0.00 |
| reference_identifier | NULL |
| last_payment_date | NULL |
| next_due_date | NULL |
| transaction_id | NULL |
| remarks | NULL |
| is_active | TRUE |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_utility_merchant_id | BTREE | merchant_id | Improves retrieval of utilities by service provider. |
| idx_utility_expiry_date | BTREE | expiry_date | Improves renewal and expiry monitoring. |
| idx_utility_next_due_date | BTREE | next_due_date | Improves payment due tracking. |
| idx_utility_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |
| idx_utility_is_active | BTREE | is_active | Improves retrieval of active utilities. |

#### Referenced By

None.

#### Implementation Considerations

- The `utility_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_utility_merchant` shall enforce the relationship between `utility(merchant_id)` and `merchant(merchant_id)`.
- The Foreign Key constraint `fk_utility_transaction` shall enforce the relationship between `utility(transaction_id)` and `financial_transaction(transaction_id)`.
- The `transaction_id` column shall reference the most recent Financial Transaction associated with the utility and shall remain optional until the first payment or renewal is recorded.
- Utility records shall maintain only the latest utility information.
- Historical utility payments and renewals shall be maintained through the associated records in the `financial_transaction` table.
- The `last_payment_date` and `next_due_date` columns shall represent the latest payment or renewal status of the utility.
- Utility records shall not be physically deleted once financial transactions have been associated with the utility.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `utility` table serves as the centralized repository for utility, subscription, and renewal information within the Personal Finance Management System (PFMS). Its physical implementation supports payment planning, renewal tracking, expiry monitoring, financial reporting, and future system enhancements while preserving referential integrity, business consistency, scalability, and long-term maintainability throughout the PostgreSQL database.


## Operational Activity Log Tables

The Operational Activity Log Tables physically implement the Operational Activity Log entities defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

These tables maintain the historical records of recurring operational activities that indirectly contribute to personal finance management. They store operational information associated with day-to-day activities such as milk purchases, gas cylinder replacements, bike fuel refills, engine oil replacements, and bike maintenance activities.

The Operational Activity Log Tables maintain operational information only. Whenever an operational activity results in a financial payment, the corresponding financial information shall be maintained separately within the `financial_transaction` table, which serves as the centralized financial ledger of the Personal Finance Management System (PFMS).

The Operational Activity Log Tables support operational tracking, expenditure analysis, maintenance scheduling, reporting, analytics, and long-term historical monitoring while preserving referential integrity, minimizing data redundancy, and maintaining clear separation between operational and financial information.

The following Operational Activity Log Tables are implemented within the PFMS database.

| S.No | Logical Name | Physical Table Name | Purpose |
|------|--------------|---------------------|---------|
| 1 | MilkPurchaseLog | `milk_purchase_log` | Maintains the historical records of daily milk purchases. |
| 2 | GasCylinderLog | `gas_cylinder_log` | Maintains the historical records of LPG cylinder replacement cycles. |
| 3 | BikeFuelLog | `bike_fuel_log` | Maintains the historical records of completed bike fuel refill cycles. |
| 4 | EngineOilLog | `engine_oil_log` | Maintains the historical records of bike engine oil replacements. |
| 5 | BikeMaintenanceLog | `bike_maintenance_log` | Maintains the historical records of bike maintenance activities. |

The following sections define the physical implementation of each Operational Activity Log Table.



### MilkPurchaseLog

**Logical Name**

MilkPurchaseLog

**Physical Table Name**

`milk_purchase_log`

**Purpose**

The `milk_purchase_log` table physically implements the MilkPurchaseLog entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and maintains the historical records of daily milk purchases. Each record represents the milk purchase activity for a single Purchase Date, including the quantities and amounts associated with Buffalo Milk, Cow Milk, and Curd.

The table stores operational information only. The corresponding financial payment, where applicable, shall be maintained separately within the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| milk_purchase_log_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Milk Purchase Log record. |
| purchase_date | DATE | No | No | - | Date on which the milk purchase was made. |
| buffalo_milk_qty | NUMERIC(6,2) | No | No | 0.00 | Quantity of Buffalo Milk purchased. |
| buffalo_milk_amount | NUMERIC(12,2) | No | No | 0.00 | Amount paid for Buffalo Milk. |
| cow_milk_qty | NUMERIC(6,2) | No | No | 0.00 | Quantity of Cow Milk purchased. |
| cow_milk_amount | NUMERIC(12,2) | No | No | 0.00 | Amount paid for Cow Milk. |
| curd_qty | NUMERIC(6,2) | No | No | 0.00 | Quantity of Curd purchased. |
| curd_amount | NUMERIC(12,2) | No | No | 0.00 | Amount paid for Curd. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_milk_purchase_log | milk_purchase_log_id |

#### Foreign Keys

None.

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_milk_purchase_log_purchase_date | purchase_date |

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_milk_buffalo_milk_qty | buffalo_milk_qty >= 0 |
| chk_milk_buffalo_milk_amount | buffalo_milk_amount >= 0 |
| chk_milk_cow_milk_qty | cow_milk_qty >= 0 |
| chk_milk_cow_milk_amount | cow_milk_amount >= 0 |
| chk_milk_curd_qty | curd_qty >= 0 |
| chk_milk_curd_amount | curd_amount >= 0 |
| chk_milk_at_least_one_product | buffalo_milk_qty > 0 OR cow_milk_qty > 0 OR curd_qty > 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| buffalo_milk_qty | 0.00 |
| buffalo_milk_amount | 0.00 |
| cow_milk_qty | 0.00 |
| cow_milk_amount | 0.00 |
| curd_qty | 0.00 |
| curd_amount | 0.00 |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_milk_purchase_date | BTREE | purchase_date | Improves retrieval of milk purchase records by Purchase Date. |

#### Referenced By

None.

#### Implementation Considerations

- The `milk_purchase_log_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The `purchase_date` column shall be enforced as unique through the `uq_milk_purchase_log_purchase_date` constraint.
- Quantities and amounts shall not be negative.
- At least one of `buffalo_milk_qty`, `cow_milk_qty`, or `curd_qty` shall be greater than zero.
- The total purchase amount shall not be physically stored and shall be derived whenever required by summing the individual product amounts.
- Remarks or activity summaries shall not be physically stored and shall be generated dynamically by the application whenever required.
- The table shall maintain operational information only. The corresponding financial payment shall be maintained separately within the `financial_transaction` table.

#### Remarks

The `milk_purchase_log` table serves as the centralized repository for daily milk purchase activities within the Personal Finance Management System (PFMS). Its physical implementation supports milk consumption tracking, expenditure analysis, operational reporting, and long-term historical monitoring while preserving business consistency, minimizing data redundancy, and maintaining clear separation between operational and financial information throughout the PostgreSQL database.



### GasCylinderLog

**Logical Name**

GasCylinderLog

**Physical Table Name**

`gas_cylinder_log`

**Purpose**

The `gas_cylinder_log` table physically implements the GasCylinderLog entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and maintains the historical records of household LPG cylinder replacement cycles. Each record represents one complete LPG cylinder replacement cycle, beginning when the active cylinder becomes empty and ending when the replacement cylinder is delivered and becomes the new spare cylinder.

The table stores operational information related to LPG cylinder replacement cycles. The corresponding financial payment shall be maintained through the associated record in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| gas_cylinder_log_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Gas Cylinder Log record. |
| change_date | DATE | No | No | - | Date on which the active LPG cylinder became empty and the spare cylinder became the active cylinder. |
| purchase_date | DATE | No | No | - | Date on which the replacement LPG cylinder was booked or purchased. |
| arrival_date | DATE | No | No | - | Date on which the replacement LPG cylinder was delivered and became the new spare cylinder. |
| transaction_id | BIGINT | Yes | No | NULL | References the Financial Transaction associated with the LPG cylinder purchase. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_gas_cylinder_log | gas_cylinder_log_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_gas_cylinder_log_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_gas_purchase_date | purchase_date >= change_date |
| chk_gas_arrival_date | arrival_date >= purchase_date |

#### Default Values

| Column | Default Value |
|--------|---------------|
| transaction_id | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_gas_cylinder_change_date | BTREE | change_date | Improves retrieval of cylinder replacement history. |
| idx_gas_cylinder_arrival_date | BTREE | arrival_date | Improves delivery history and cycle analysis. |
| idx_gas_cylinder_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |

#### Referenced By

None.

#### Implementation Considerations

- The `gas_cylinder_log_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_gas_cylinder_log_transaction` shall enforce the relationship between `gas_cylinder_log(transaction_id)` and `financial_transaction(transaction_id)`.
- The `purchase_date` shall be the same as or later than the `change_date`.
- The `arrival_date` shall be the same as or later than the `purchase_date`.
- The `transaction_id` column shall reference the Financial Transaction associated with the LPG cylinder purchase and shall remain optional until the financial transaction has been recorded.
- The table shall maintain operational lifecycle information only. Financial information shall be maintained within the `financial_transaction` table.
- Activity summaries shall not be physically stored and shall be generated dynamically by the application whenever required.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `gas_cylinder_log` table serves as the centralized repository for household LPG cylinder replacement history within the Personal Finance Management System (PFMS). Its physical implementation supports cylinder lifecycle tracking, replacement analysis, operational reporting, expenditure analysis, and long-term historical monitoring while preserving referential integrity, business consistency, scalability, and maintaining clear separation between operational and financial information throughout the PostgreSQL database.


### BikeFuelLog

**Logical Name**

BikeFuelLog

**Physical Table Name**

`bike_fuel_log`

**Purpose**

The `bike_fuel_log` table physically implements the BikeFuelLog entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and maintains the historical records of completed bike fuel refill cycles. Each record represents one completed fuel refill cycle, enabling mileage analysis, fuel consumption tracking, expenditure analysis, operational reporting, and long-term historical monitoring.

The table stores operational information related to completed fuel refill cycles. The corresponding financial payment shall be maintained through the associated record in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| bike_fuel_log_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Bike Fuel Log record. |
| purchase_date | DATE | No | No | - | Date on which the bike was refuelled. |
| trip_km | NUMERIC(8,2) | No | No | - | Total kilometres travelled during the completed fuel refill cycle as recorded using the Trip Meter. |
| fuel_quantity | NUMERIC(8,2) | No | No | - | Quantity of fuel filled in litres. |
| fuel_type | VARCHAR(20) | No | No | 'Normal' | Type of fuel filled (Normal or Premium). |
| amount | NUMERIC(12,2) | No | No | 0.00 | Amount paid for the completed fuel refill. |
| transaction_id | BIGINT | Yes | No | NULL | References the Financial Transaction associated with the completed fuel refill. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_bike_fuel_log | bike_fuel_log_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_bike_fuel_log_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_bike_fuel_trip_km | trip_km > 0 |
| chk_bike_fuel_quantity | fuel_quantity > 0 |
| chk_bike_fuel_amount | amount > 0 |
| chk_bike_fuel_type | fuel_type IN ('Normal', 'Premium') |

#### Default Values

| Column | Default Value |
|--------|---------------|
| fuel_type | 'Normal' |
| amount | 0.00 |
| transaction_id | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_bike_fuel_purchase_date | BTREE | purchase_date | Improves retrieval of fuel refill history. |
| idx_bike_fuel_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |
| idx_bike_fuel_fuel_type | BTREE | fuel_type | Improves fuel type-based reporting and analysis. |

#### Referenced By

None.

#### Implementation Considerations

- The `bike_fuel_log_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_bike_fuel_log_transaction` shall enforce the relationship between `bike_fuel_log(transaction_id)` and `financial_transaction(transaction_id)`.
- The `trip_km` column shall represent the total distance travelled during one completed fuel refill cycle as measured using the Trip Meter.
- The Trip Meter shall be reset after recording each completed fuel refill cycle.
- Only completed fuel refill cycles shall be recorded for mileage analysis.
- Partial fuel refills shall not be considered for mileage analysis.
- The `fuel_type` column shall be restricted to **Normal** or **Premium** through the `chk_bike_fuel_type` CHECK constraint.
- The `transaction_id` column shall reference the Financial Transaction associated with the completed fuel refill and shall remain optional until the financial transaction has been recorded.
- The table shall maintain operational information only. Financial information shall be maintained within the `financial_transaction` table.
- Activity summaries shall not be physically stored and shall be generated dynamically by the application whenever required.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `bike_fuel_log` table serves as the centralized repository for completed bike fuel refill cycles within the Personal Finance Management System (PFMS). Its physical implementation supports mileage analysis, fuel consumption tracking, expenditure analysis, operational reporting, and long-term historical monitoring while preserving referential integrity, business consistency, scalability, and maintaining clear separation between operational and financial information throughout the PostgreSQL database.



### EngineOilLog

**Logical Name**

EngineOilLog

**Physical Table Name**

`engine_oil_log`

**Purpose**

The `engine_oil_log` table physically implements the EngineOilLog entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and maintains the historical records of bike engine oil replacements. Each record represents one completed engine oil replacement event, supporting maintenance tracking, service history, expenditure analysis, operational reporting, and long-term historical monitoring.

The table stores operational information related to engine oil replacements. The corresponding financial payment shall be maintained through the associated record in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| engine_oil_log_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Engine Oil Log record. |
| merchant_id | BIGINT | No | No | - | References the service center or merchant where the engine oil replacement was performed. |
| replacement_date | DATE | No | No | - | Date on which the engine oil replacement was completed. |
| odometer_reading | NUMERIC(8,2) | No | No | - | Odometer reading of the bike at the time of engine oil replacement. |
| amount | NUMERIC(12,2) | No | No | 0.00 | Total amount paid for the engine oil replacement. |
| transaction_id | BIGINT | Yes | No | NULL | References the Financial Transaction associated with the engine oil replacement. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_engine_oil_log | engine_oil_log_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_engine_oil_log_merchant | merchant_id | merchant(merchant_id) |
| fk_engine_oil_log_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_engine_oil_odometer | odometer_reading > 0 |
| chk_engine_oil_amount | amount > 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| amount | 0.00 |
| transaction_id | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_engine_oil_merchant_id | BTREE | merchant_id | Improves retrieval of engine oil replacement history by service provider. |
| idx_engine_oil_replacement_date | BTREE | replacement_date | Improves maintenance history retrieval and reporting. |
| idx_engine_oil_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |

#### Referenced By

None.

#### Implementation Considerations

- The `engine_oil_log_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_engine_oil_log_merchant` shall enforce the relationship between `engine_oil_log(merchant_id)` and `merchant(merchant_id)`.
- The Foreign Key constraint `fk_engine_oil_log_transaction` shall enforce the relationship between `engine_oil_log(transaction_id)` and `financial_transaction(transaction_id)`.
- The `odometer_reading` column shall represent the total distance travelled by the bike at the time of engine oil replacement.
- The `transaction_id` column shall reference the Financial Transaction associated with the engine oil replacement and shall remain optional until the financial transaction has been recorded.
- The table shall maintain operational information only. Financial information shall be maintained within the `financial_transaction` table.
- Activity summaries shall not be physically stored and shall be generated dynamically by the application whenever required.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `engine_oil_log` table serves as the centralized repository for bike engine oil replacement history within the Personal Finance Management System (PFMS). Its physical implementation supports maintenance tracking, service history, expenditure analysis, operational reporting, and long-term historical monitoring while preserving referential integrity, business consistency, scalability, and maintaining clear separation between operational and financial information throughout the PostgreSQL database.



### BikeMaintenanceLog

**Logical Name**

BikeMaintenanceLog

**Physical Table Name**

`bike_maintenance_log`

**Purpose**

The `bike_maintenance_log` table physically implements the BikeMaintenanceLog entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and maintains the historical records of bike maintenance activities. Each record represents one completed bike maintenance event, supporting maintenance tracking, service history, expenditure analysis, operational reporting, and long-term historical monitoring.

The table stores operational information related to bike maintenance activities. The corresponding financial payment shall be maintained through the associated record in the `financial_transaction` table.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| bike_maintenance_log_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Bike Maintenance Log record. |
| merchant_id | BIGINT | No | No | - | References the service center or merchant where the maintenance activity was performed. |
| maintenance_date | DATE | No | No | - | Date on which the maintenance activity was completed. |
| maintenance_description | VARCHAR(500) | No | No | - | User-defined description of the maintenance activity performed. |
| amount | NUMERIC(12,2) | No | No | 0.00 | Total amount paid for the maintenance activity. |
| transaction_id | BIGINT | Yes | No | NULL | References the Financial Transaction associated with the maintenance activity. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_bike_maintenance_log | bike_maintenance_log_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_bike_maintenance_log_merchant | merchant_id | merchant(merchant_id) |
| fk_bike_maintenance_log_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_bike_maintenance_amount | amount > 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| amount | 0.00 |
| transaction_id | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_bike_maintenance_merchant_id | BTREE | merchant_id | Improves retrieval of maintenance history by service provider. |
| idx_bike_maintenance_date | BTREE | maintenance_date | Improves maintenance history retrieval and reporting. |
| idx_bike_maintenance_transaction_id | BTREE | transaction_id | Improves joins with the `financial_transaction` table. |

#### Referenced By

None.

#### Implementation Considerations

- The `bike_maintenance_log_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_bike_maintenance_log_merchant` shall enforce the relationship between `bike_maintenance_log(merchant_id)` and `merchant(merchant_id)`.
- The Foreign Key constraint `fk_bike_maintenance_log_transaction` shall enforce the relationship between `bike_maintenance_log(transaction_id)` and `financial_transaction(transaction_id)`.
- The `maintenance_description` column shall store the description of the maintenance activity performed.
- The `transaction_id` column shall reference the Financial Transaction associated with the maintenance activity and shall remain optional until the financial transaction has been recorded.
- The table shall maintain operational information only. Financial information shall be maintained within the `financial_transaction` table.
- Activity summaries shall not be physically stored and shall be generated dynamically by the application whenever required.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `bike_maintenance_log` table serves as the centralized repository for bike maintenance history within the Personal Finance Management System (PFMS). Its physical implementation supports maintenance tracking, expenditure analysis, operational reporting, service history, and long-term historical monitoring while preserving referential integrity, business consistency, scalability, and maintaining clear separation between operational and financial information throughout the PostgreSQL database.



## Core Financial Transaction Tables

The Core Financial Transaction Tables physically implement the financial transaction entities defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

These tables maintain the complete history of financial transactions performed within the application and serve as the centralized financial repository of the Personal Finance Management System (PFMS). Every monetary activity generated by Financial Planning, Operational Activity Logs, Reserve Planning, and other business modules is ultimately recorded within these tables.

The Core Financial Transaction Tables provide the foundation for account balance calculation, budget utilization, cash flow analysis, financial reporting, expenditure analysis, historical financial recalculation, and long-term financial monitoring while preserving referential integrity, minimizing data redundancy, and maintaining a single source of truth for all financial information.

The following Core Financial Transaction Tables are implemented within the PFMS database.

| S.No | Logical Name | Physical Table Name | Purpose |
|------|--------------|---------------------|---------|
| 1 | HardCashWallet | `hard_cash_wallet` | Maintains the complete history of physical cash transactions performed by the user. |
| 2 | FinancialTransaction | `financial_transaction` | Maintains the complete financial transaction history and serves as the centralized financial ledger of PFMS. |

The following sections define the physical implementation of each Core Financial Transaction Table.


### HardCashWallet

**Logical Name**

HardCashWallet

**Physical Table Name**

`hard_cash_wallet`

**Purpose**

The `hard_cash_wallet` table physically implements the HardCashWallet entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as one of the Core Financial Transaction Tables and maintains the complete history of physical cash transactions performed by the user. Each record represents a single physical cash transaction, supporting cash flow tracking, cash balance calculation, expenditure analysis, operational reporting, and long-term financial monitoring.

The table stores business-specific information related to physical cash transactions. The corresponding financial movement shall be maintained through the associated record in the `financial_transaction` table, which serves as the centralized financial ledger of PFMS.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| hard_cash_wallet_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Hard Cash Wallet record. |
| transaction_id | BIGINT | No | No | - | References the corresponding Financial Transaction. |
| account_id | BIGINT | No | No | - | References the Physical Cash Account from the `account` table. |
| category_id | BIGINT | No | No | - | References the associated Category. |
| sub_category_id | BIGINT | Yes | No | NULL | References the associated SubCategory, where applicable. |
| merchant_id | BIGINT | Yes | No | NULL | References the associated Merchant, where applicable. |
| transaction_date | DATE | No | No | - | Date on which the physical cash transaction occurred. |
| transaction_type | VARCHAR(20) | No | No | - | Type of physical cash transaction (Credit or Debit). |
| amount | NUMERIC(12,2) | No | No | 0.00 | Amount associated with the physical cash transaction. |
| description | VARCHAR(500) | Yes | No | NULL | Business-specific description of the physical cash transaction. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_hard_cash_wallet | hard_cash_wallet_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_hard_cash_wallet_transaction | transaction_id | financial_transaction(transaction_id) |
| fk_hard_cash_wallet_account | account_id | account(account_id) |
| fk_hard_cash_wallet_category | category_id | category(category_id) |
| fk_hard_cash_wallet_sub_category | sub_category_id | sub_category(sub_category_id) |
| fk_hard_cash_wallet_merchant | merchant_id | merchant(merchant_id) |

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_hard_cash_wallet_transaction | transaction_id |

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_hard_cash_wallet_transaction_type | transaction_type IN ('Credit', 'Debit') |
| chk_hard_cash_wallet_amount | amount > 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| sub_category_id | NULL |
| merchant_id | NULL |
| amount | 0.00 |
| description | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_hard_cash_wallet_account_id | BTREE | account_id | Improves Account-based cash transaction retrieval. |
| idx_hard_cash_wallet_category_id | BTREE | category_id | Improves Category-wise cash expenditure analysis. |
| idx_hard_cash_wallet_transaction_date | BTREE | transaction_date | Improves chronological cash transaction reporting. |
| idx_hard_cash_wallet_merchant_id | BTREE | merchant_id | Improves Merchant-wise cash expenditure analysis. |

#### Referenced By

None.

#### Implementation Considerations

- The `hard_cash_wallet_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_hard_cash_wallet_transaction` shall enforce the relationship between `hard_cash_wallet(transaction_id)` and `financial_transaction(transaction_id)`.
- Every Hard Cash Wallet record shall reference exactly one Financial Transaction.
- The `transaction_id` column shall be enforced as unique, establishing a one-to-one relationship between `hard_cash_wallet` and `financial_transaction`.
- The `account_id` column shall reference the Physical Cash Account maintained in the `account` table.
- The `transaction_type` column shall be restricted to **Credit** or **Debit** through the `chk_hard_cash_wallet_transaction_type` CHECK constraint.
- The `description` column shall store business-specific information related to the physical cash transaction.
- The `financial_transaction.description` column may remain NULL when the detailed business description is maintained within the `hard_cash_wallet` table.
- The `hard_cash_wallet` table shall maintain only business-specific information related to physical cash transactions. The financial ledger shall be maintained within the `financial_transaction` table.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `hard_cash_wallet` table serves as the centralized repository for physical cash transaction information within the Personal Finance Management System (PFMS). Its physical implementation complements the centralized financial ledger by maintaining business-specific cash transaction details while supporting cash flow analysis, expenditure tracking, reporting, and long-term financial monitoring without duplicating financial ledger information.


### FinancialTransaction

**Logical Name**

FinancialTransaction

**Physical Table Name**

`financial_transaction`

**Purpose**

The `financial_transaction` table physically implements the FinancialTransaction entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as the centralized financial ledger of the Personal Finance Management System (PFMS) and maintains the complete history of every financial transaction performed by the user. Each record represents one financial transaction and serves as the single source of truth for all monetary activities generated by Financial Planning, Operational Activity Logs, Reserve Planning, Hard Cash Wallet transactions, and other business modules.

The table stores only generic financial information. Business-specific information shall be maintained separately within the corresponding business modules while referencing the associated Financial Transaction through the `transaction_id` column.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| transaction_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Financial Transaction. |
| transaction_date | DATE | No | No | - | Date on which the Financial Transaction occurred. |
| is_salary_boundary | CHAR(1) | No | No | 'N' | Indicates whether the transaction represents the Salary Boundary ('Y' or 'N'). |
| budget_month | SMALLINT | No | No | - | Budget Month associated with the Financial Transaction (1-12). |
| budget_year | INTEGER | No | No | - | Budget Year associated with the Financial Transaction. |
| account_id | BIGINT | No | No | - | References the Account associated with the Financial Transaction. |
| category_id | BIGINT | No | No | - | References the associated Category. |
| sub_category_id | BIGINT | No | No | - | References the associated SubCategory. |
| payment_mode_id | BIGINT | No | No | - | References the associated Payment Mode. |
| merchant_id | BIGINT | Yes | No | NULL | References the associated Merchant, where applicable. |
| transaction_type | VARCHAR(20) | No | No | - | Type of Financial Transaction (Credit or Debit). |
| amount | NUMERIC(12,2) | No | No | 0.00 | Amount associated with the Financial Transaction. |
| current_balance | NUMERIC(12,2) | No | No | System Maintained | Running balance of the associated Account immediately after processing the Financial Transaction. |
| description | VARCHAR(500) | Yes | No | NULL | General financial remarks related to the transaction, where applicable. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_financial_transaction | transaction_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_financial_transaction_account | account_id | account(account_id) |
| fk_financial_transaction_category | category_id | category(category_id) |
| fk_financial_transaction_sub_category | sub_category_id | sub_category(sub_category_id) |
| fk_financial_transaction_payment_mode | payment_mode_id | payment_mode(payment_mode_id) |
| fk_financial_transaction_merchant | merchant_id | merchant(merchant_id) |

#### Unique Constraints

None.

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_financial_transaction_type | transaction_type IN ('Credit', 'Debit') |
| chk_financial_transaction_amount | amount > 0 |
| chk_financial_transaction_budget_month | budget_month BETWEEN 1 AND 12 |
| chk_financial_transaction_salary_boundary | is_salary_boundary IN ('Y', 'N') |

#### Default Values

| Column | Default Value |
|--------|---------------|
| is_salary_boundary | 'N' |
| merchant_id | NULL |
| amount | 0.00 |
| description | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_financial_transaction_date | BTREE | transaction_date | Improves chronological transaction retrieval. |
| idx_financial_transaction_budget_period | BTREE | budget_year, budget_month | Improves Budget Period reporting and analysis. |
| idx_financial_transaction_account | BTREE | account_id | Improves Account-based transaction retrieval. |
| idx_financial_transaction_category | BTREE | category_id | Improves Category-based financial reporting. |
| idx_financial_transaction_sub_category | BTREE | sub_category_id | Improves SubCategory-based financial reporting. |
| idx_financial_transaction_payment_mode | BTREE | payment_mode_id | Improves Payment Mode analysis. |
| idx_financial_transaction_merchant | BTREE | merchant_id | Improves Merchant-based expenditure analysis. |
| idx_financial_transaction_salary_boundary | BTREE | is_salary_boundary | Improves Budget Period boundary identification. |

#### Referenced By

| Referencing Table | Foreign Key Column |
|-------------------|--------------------|
| `hard_cash_wallet` | transaction_id |
| `insurance` | transaction_id |
| `investment` | transaction_id |
| `loan` | transaction_id |
| `utility` | transaction_id |
| `reserve` | transaction_id |
| `gas_cylinder_log` | transaction_id |
| `bike_fuel_log` | transaction_id |
| `engine_oil_log` | transaction_id |
| `bike_maintenance_log` | transaction_id |

#### Implementation Considerations

- The `transaction_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The `financial_transaction` table shall serve as the centralized financial ledger and the single source of truth for all financial activities within PFMS.
- Business modules shall maintain only business-specific information while referencing the associated Financial Transaction through the `transaction_id` column.
- The `current_balance` column shall be maintained automatically by the application and shall not be manually modified.
- The `is_salary_boundary` column shall identify the transaction that establishes the Budget Period boundary.
- Only one Salary Boundary transaction shall exist for a Budget Period in accordance with the applicable business rules.
- The `description` column is optional and may be used to capture general financial remarks. Detailed business-specific descriptions shall be maintained within the corresponding business module whenever applicable.
- Historical modifications shall automatically trigger the applicable financial recalculation process.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `financial_transaction` table serves as the centralized financial ledger of the Personal Finance Management System (PFMS). Its physical implementation provides a single source of truth for every monetary activity while supporting account balance calculation, Budget Management, Reserve Planning, cash flow analysis, historical financial recalculation, expenditure analysis, reporting, analytics, and long-term financial monitoring without duplicating business-specific information maintained by other modules.


## Reserve Planning Tables

The Reserve Planning Tables physically implement the Reserve Planning entities defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

These tables maintain reserve planning information that enables the user to allocate, monitor, utilize, and manage financial reserves independently of monthly budget allocations while maintaining synchronization with the centralized financial ledger. Reserve Planning supports long-term financial preparedness by maintaining funds for planned, recurring, irregular, and emergency financial requirements.

The Reserve Planning Tables maintain reserve-specific planning information only. Every financial movement related to reserve allocation, reserve utilization, reserve restoration, and reserve adjustments shall be maintained through the associated records in the `financial_transaction` table, which serves as the centralized financial ledger of the Personal Finance Management System (PFMS).

The Reserve Planning Tables support Reserve Cycle management, reserve balance calculation, reserve utilization analysis, financial reporting, historical financial analysis, and long-term financial monitoring while preserving referential integrity, minimizing data redundancy, and maintaining clear separation between reserve planning information and financial transaction information.

The following Reserve Planning Table is implemented within the PFMS database.

| S.No | Logical Name | Physical Table Name | Purpose |
|------|--------------|---------------------|---------|
| 1 | Reserve | `reserve` | Maintains Reserve Cycle information, reserve allocations, reserve utilization, and reserve planning history. |

The following section defines the physical implementation of the Reserve Planning Table.


### Reserve

**Logical Name**

Reserve

**Physical Table Name**

`reserve`

**Purpose**

The `reserve` table physically implements the Reserve entity defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It serves as the Reserve Planning Table and maintains the current Reserve Cycle information associated with reserve allocations and reserve utilization. Each record represents a Reserve transaction that participates in a logical Reserve Cycle, enabling reserve balance calculation, reserve utilization analysis, reserve planning, financial reporting, and long-term historical monitoring.

The table stores reserve-specific planning information. The corresponding financial movement shall be maintained through the associated record in the `financial_transaction` table, which serves as the centralized financial ledger of PFMS.

#### Columns

| Column Name | PostgreSQL Data Type | Nullable | Identity | Default | Description |
|-------------|----------------------|----------|----------|---------|-------------|
| reserve_id | BIGINT | No | GENERATED ALWAYS AS IDENTITY | - | Unique identifier of the Reserve record. |
| reserve_cycle_no | INTEGER | No | No | System Maintained | Logical Reserve Cycle Number maintained automatically by PFMS. |
| account_id | BIGINT | No | No | - | References the Reserve Account from the `account` table. |
| current_balance | NUMERIC(12,2) | No | No | System Maintained | Running balance of the Reserve Account immediately after processing the Reserve transaction. |
| transaction_id | BIGINT | No | No | - | References the corresponding Financial Transaction. |
| transaction_date | DATE | No | No | - | Date on which the Reserve transaction occurred. |
| transaction_type | VARCHAR(20) | No | No | - | Type of Reserve transaction (Credit or Debit). |
| amount | NUMERIC(12,2) | No | No | 0.00 | Amount associated with the Reserve transaction. |
| remarks | VARCHAR(500) | Yes | No | NULL | Additional Reserve-specific remarks. |

#### Primary Key

| Constraint Name | Column |
|-----------------|--------|
| pk_reserve | reserve_id |

#### Foreign Keys

| Constraint Name | Column | References |
|-----------------|--------|------------|
| fk_reserve_account | account_id | account(account_id) |
| fk_reserve_transaction | transaction_id | financial_transaction(transaction_id) |

#### Unique Constraints

| Constraint Name | Column(s) |
|-----------------|-----------|
| uq_reserve_transaction | transaction_id |

#### Check Constraints

| Constraint Name | Condition |
|-----------------|-----------|
| chk_reserve_transaction_type | transaction_type IN ('Credit', 'Debit') |
| chk_reserve_amount | amount > 0 |

#### Default Values

| Column | Default Value |
|--------|---------------|
| amount | 0.00 |
| remarks | NULL |

#### Indexes

| Index Name | Index Type | Column(s) | Purpose |
|------------|------------|-----------|---------|
| idx_reserve_cycle_no | BTREE | reserve_cycle_no | Improves Reserve Cycle analysis and reporting. |
| idx_reserve_account_id | BTREE | account_id | Improves Reserve Account-based analysis. |
| idx_reserve_transaction_date | BTREE | transaction_date | Improves chronological Reserve reporting. |
| idx_reserve_transaction_type | BTREE | transaction_type | Improves Credit and Debit analysis. |

#### Referenced By

None.

#### Implementation Considerations

- The `reserve_id` column shall be implemented using PostgreSQL `GENERATED ALWAYS AS IDENTITY`.
- The Foreign Key constraint `fk_reserve_account` shall enforce the relationship between `reserve(account_id)` and `account(account_id)`.
- The Foreign Key constraint `fk_reserve_transaction` shall enforce the relationship between `reserve(transaction_id)` and `financial_transaction(transaction_id)`.
- The `transaction_id` column shall be enforced as unique, establishing a one-to-one relationship between `reserve` and `financial_transaction`.
- The `reserve_cycle_no` column shall be maintained automatically by PFMS.
- Multiple consecutive **Credit** transactions shall belong to the same Reserve Cycle until the first **Debit** transaction occurs.
- Once the first **Debit** transaction has occurred within a Reserve Cycle, all subsequent **Debit** transactions shall continue to belong to the same Reserve Cycle until the next **Credit** transaction occurs.
- The first **Credit** transaction following one or more **Debit** transactions shall automatically begin a new Reserve Cycle.
- Reserve Cycle Numbers represent **logical business groups** and shall not be maintained as separate database entities.
- The `current_balance` column shall be maintained automatically by the application and shall not be manually modified.
- The `remarks` column is optional and may be used to capture Reserve-specific information.
- The `reserve` table shall maintain only Reserve-specific planning information. The corresponding financial ledger shall be maintained within the `financial_transaction` table.
- Foreign Key relationships shall preserve referential integrity throughout the database.

#### Remarks

The `reserve` table serves as the centralized repository for Reserve Planning information within the Personal Finance Management System (PFMS). Its physical implementation supports Reserve Cycle management, reserve balance calculation, reserve utilization analysis, financial reporting, and long-term historical monitoring while preserving referential integrity, business consistency, scalability, and maintaining clear separation between reserve planning information and the centralized financial ledger maintained by the `financial_transaction` table.


# Database Views

## Database Views

The Database Views physically implement the reporting and analytical views defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

These views provide pre-defined, read-only representations of business data by combining information maintained across the Master Tables, Financial Planning Tables, Operational Activity Log Tables, Core Financial Transaction Tables, and Reserve Planning Tables.

Database Views simplify reporting, financial analysis, operational monitoring, dashboard generation, and historical analysis by presenting consolidated business information without duplicating data. The views do not maintain independent data and are dynamically generated from the underlying database tables whenever queried.

The following Database Views are implemented within the PFMS database.

| S.No | Logical Name | Physical View Name | Purpose |
|------|--------------|--------------------|---------|
| 1 | Budget Utilization View | `vw_budget_utilization` | Displays Budget allocations, expenditure, remaining Budget, and utilization percentage. |
| 2 | Reserve Summary View | `vw_reserve_summary` | Displays Reserve Cycle summaries, Reserve balances, allocations, and utilization. |
| 3 | Financial Transaction View | `vw_financial_transaction` | Displays enriched Financial Transaction information by combining reference data from the Master Tables. |
| 4 | Hard Cash Wallet View | `vw_hard_cash_wallet` | Displays detailed physical cash transaction information with financial and reference data. |
| 5 | Operational Activity Summary View | `vw_operational_activity_summary` | Displays consolidated operational activities and their associated financial information. |

The following sections define the physical implementation of each Database View.


## Budget Utilization View

**Logical Name**

Budget Utilization View

**Physical View Name**

`vw_budget_utilization`

**Purpose**

The `vw_budget_utilization` view physically implements the Budget Utilization View defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It provides a consolidated view of Budget allocations and the corresponding Financial Transactions for each Budget Period, enabling Budget monitoring, expenditure analysis, remaining Budget calculation, variance reporting, and financial planning.

The view dynamically combines Budget Planning information with Financial Transaction data and does not physically store any data.

#### Source Objects

| Object Type | Object Name |
|-------------|-------------|
| Table | `budget` |
| Table | `financial_transaction` |
| Table | `category` |
| Table | `sub_category` |

#### View Columns

| Column Name | Description |
|-------------|-------------|
| budget_year | Budget Year. |
| budget_month | Budget Month. |
| category_name | Category name. |
| sub_category_name | SubCategory name. |
| budget_amount | Planned Budget amount. |
| actual_amount | Total Financial Transactions recorded for the Budget Period. |
| remaining_budget | Remaining Budget amount. |
| utilization_percentage | Budget utilization percentage. |

#### Selection Criteria

- Budget allocations shall be grouped by Budget Year, Budget Month, Category, and SubCategory.
- Financial Transactions shall be aggregated using the corresponding Budget Period, Category, and SubCategory.
- Budget utilization shall be calculated dynamically.
- Remaining Budget shall be calculated dynamically.
- No data shall be physically stored within the view.

#### Dependencies

- `budget`
- `financial_transaction`
- `category`
- `sub_category`

#### Implementation Considerations

- The view shall be implemented using standard PostgreSQL Views.
- Budget utilization calculations shall be performed dynamically during query execution.
- The view shall remain read-only.
- NULL expenditure values shall be treated as zero during Budget calculations.
- The view shall not maintain independent data.

#### Remarks

The `vw_budget_utilization` view provides a consolidated representation of Budget Planning and Financial Transaction information within the Personal Finance Management System (PFMS). It supports Budget monitoring, expenditure analysis, variance reporting, and financial decision-making without duplicating information maintained within the underlying database tables.


## Financial Transaction View

**Logical Name**

Financial Transaction View

**Physical View Name**

`vw_financial_transaction`

**Purpose**

The `vw_financial_transaction` view physically implements the Financial Transaction View defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It provides a consolidated representation of Financial Transactions by combining transaction information with the corresponding Account, Category, SubCategory, Payment Mode, and Merchant information. The view simplifies financial reporting, transaction analysis, expenditure monitoring, and dashboard presentation by exposing business-friendly information instead of internal reference identifiers.

The view dynamically retrieves data from the underlying database tables and does not physically store any information.

#### Source Objects

| Object Type | Object Name |
|-------------|-------------|
| Table | `financial_transaction` |
| Table | `account` |
| Table | `category` |
| Table | `sub_category` |
| Table | `payment_mode` |
| Table | `merchant` |

#### View Columns

| Column Name | Description |
|-------------|-------------|
| transaction_id | Financial Transaction identifier. |
| transaction_date | Date of the Financial Transaction. |
| budget_month | Budget Month. |
| budget_year | Budget Year. |
| account_name | Account name. |
| category_name | Category name. |
| sub_category_name | SubCategory name. |
| payment_mode_name | Payment Mode name. |
| merchant_name | Merchant name, where applicable. |
| transaction_type | Credit or Debit. |
| amount | Financial Transaction amount. |
| current_balance | Running Account balance after the transaction. |
| description | General financial remarks, where applicable. |
| is_salary_boundary | Indicates whether the transaction represents the Salary Boundary. |

#### Selection Criteria

- Financial Transactions shall be displayed together with their corresponding master data descriptions.
- Merchant information shall be displayed only when available.
- Budget Period information shall be displayed for every Financial Transaction.
- The view shall not physically store any information.

#### Dependencies

- `financial_transaction`
- `account`
- `category`
- `sub_category`
- `payment_mode`
- `merchant`

#### Implementation Considerations

- The view shall be implemented using a standard PostgreSQL View.
- All master data shall be retrieved through the corresponding Foreign Key relationships.
- The view shall remain read-only.
- The view shall not maintain independent data.
- NULL Merchant values shall be displayed where no Merchant is associated with the Financial Transaction.

#### Remarks

The `vw_financial_transaction` view provides a business-friendly representation of the centralized financial ledger within the Personal Finance Management System (PFMS). By replacing reference identifiers with meaningful business information, it supports financial reporting, expenditure analysis, dashboard presentation, and long-term financial monitoring without duplicating data maintained within the underlying database tables.


## Hard Cash Wallet View

**Logical Name**

Hard Cash Wallet View

**Physical View Name**

`vw_hard_cash_wallet`

**Purpose**

The `vw_hard_cash_wallet` view physically implements the Hard Cash Wallet View defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It provides a consolidated representation of physical cash transactions by combining information maintained within the `hard_cash_wallet` and `financial_transaction` tables together with the corresponding Master Tables. The view simplifies cash transaction reporting, expenditure analysis, merchant analysis, category-wise reporting, and dashboard presentation by exposing business-friendly information instead of internal reference identifiers.

The view dynamically retrieves information from the underlying database tables and does not physically store any data.

#### Source Objects

| Object Type | Object Name |
|-------------|-------------|
| Table | `hard_cash_wallet` |
| Table | `financial_transaction` |
| Table | `account` |
| Table | `category` |
| Table | `sub_category` |
| Table | `merchant` |

#### View Columns

| Column Name | Description |
|-------------|-------------|
| hard_cash_wallet_id | Hard Cash Wallet identifier. |
| transaction_id | Financial Transaction identifier. |
| transaction_date | Date of the physical cash transaction. |
| account_name | Physical Cash Account name. |
| category_name | Category name. |
| sub_category_name | SubCategory name, where applicable. |
| merchant_name | Merchant name, where applicable. |
| transaction_type | Credit or Debit. |
| amount | Physical cash transaction amount. |
| current_balance | Running Account balance after the transaction. |
| description | Business-specific description of the physical cash transaction. |

#### Selection Criteria

- Physical cash transactions shall be displayed together with their corresponding financial transaction information.
- Account, Category, SubCategory, and Merchant names shall be displayed instead of reference identifiers.
- Merchant and SubCategory information shall be displayed only when available.
- The view shall not physically store any information.

#### Dependencies

- `hard_cash_wallet`
- `financial_transaction`
- `account`
- `category`
- `sub_category`
- `merchant`

#### Implementation Considerations

- The view shall be implemented using a standard PostgreSQL View.
- Business-specific information shall be retrieved from the `hard_cash_wallet` table.
- Financial information shall be retrieved from the associated `financial_transaction` record.
- The view shall remain read-only.
- The view shall not maintain independent data.
- NULL Merchant and SubCategory values shall be displayed where no corresponding records are associated with the transaction.

#### Remarks

The `vw_hard_cash_wallet` view provides a business-friendly representation of physical cash transactions within the Personal Finance Management System (PFMS). By combining business-specific cash transaction details with the centralized financial ledger and related Master Tables, it supports cash flow analysis, expenditure reporting, dashboard presentation, and long-term financial monitoring without duplicating information maintained within the underlying database tables.


## Reserve Summary View

**Logical Name**

Reserve Summary View

**Physical View Name**

`vw_reserve_summary`

**Purpose**

The `vw_reserve_summary` view physically implements the Reserve Summary View defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It provides a consolidated representation of Reserve transactions by combining Reserve Planning information with the corresponding Financial Transaction and Account information. The view simplifies Reserve Cycle monitoring, reserve balance analysis, reserve utilization tracking, financial reporting, and dashboard presentation by exposing Reserve Cycle information together with the associated financial details.

The view dynamically retrieves information from the underlying database tables and does not physically store any data.

#### Source Objects

| Object Type | Object Name |
|-------------|-------------|
| Table | `reserve` |
| Table | `financial_transaction` |
| Table | `account` |

#### View Columns

| Column Name | Description |
|-------------|-------------|
| reserve_id | Reserve identifier. |
| reserve_cycle_no | Logical Reserve Cycle Number. |
| transaction_id | Financial Transaction identifier. |
| transaction_date | Date of the Reserve transaction. |
| account_name | Reserve Account name. |
| transaction_type | Credit or Debit. |
| amount | Reserve transaction amount. |
| current_balance | Running Reserve Account balance after the transaction. |
| remarks | Reserve-specific remarks, where applicable. |

#### Selection Criteria

- Reserve transactions shall be displayed together with their corresponding Financial Transaction information.
- Reserve Cycle Numbers shall be displayed exactly as maintained by the Reserve module.
- Account names shall be displayed instead of reference identifiers.
- The view shall not physically store any information.

#### Dependencies

- `reserve`
- `financial_transaction`
- `account`

#### Implementation Considerations

- The view shall be implemented using a standard PostgreSQL View.
- Reserve-specific information shall be retrieved from the `reserve` table.
- Financial information shall be retrieved from the associated `financial_transaction` record.
- Reserve Cycle Numbers shall represent logical business groups and shall not be recalculated by the view.
- The view shall remain read-only.
- The view shall not maintain independent data.

#### Remarks

The `vw_reserve_summary` view provides a business-friendly representation of Reserve Planning information within the Personal Finance Management System (PFMS). By combining Reserve Cycle information with the centralized financial ledger and Account information, it supports reserve allocation analysis, reserve utilization monitoring, financial reporting, dashboard presentation, and long-term historical analysis without duplicating information maintained within the underlying database tables.



## Operational Activity Summary View

**Logical Name**

Operational Activity Summary View

**Physical View Name**

`vw_operational_activity_summary`

**Purpose**

The `vw_operational_activity_summary` view physically implements the Operational Activity Summary View defined in the approved Data Dictionary for the Personal Finance Management System (PFMS).

It provides a consolidated representation of operational activities by combining information maintained across the Operational Activity Log Tables together with their associated Financial Transactions where applicable. The view simplifies operational monitoring, expenditure analysis, maintenance tracking, activity reporting, and dashboard presentation through a unified operational activity interface.

The view dynamically retrieves information from the underlying database tables and does not physically store any data.

#### Source Objects

| Object Type | Object Name |
|-------------|-------------|
| Table | `milk_purchase_log` |
| Table | `gas_cylinder_log` |
| Table | `bike_fuel_log` |
| Table | `engine_oil_log` |
| Table | `bike_maintenance_log` |
| Table | `financial_transaction` |
| Table | `merchant` |

#### View Columns

| Column Name | Description |
|-------------|-------------|
| activity_type | Type of operational activity (Milk Purchase, Gas Cylinder, Bike Fuel, Engine Oil, Bike Maintenance). |
| activity_id | Identifier of the operational activity record. |
| activity_date | Date on which the operational activity occurred. |
| merchant_name | Merchant or service provider associated with the activity, where applicable. |
| transaction_id | Associated Financial Transaction identifier, where applicable. |
| amount | Amount associated with the operational activity, where applicable. |
| remarks | Operational activity description or remarks, where applicable. |

#### Selection Criteria

- The view shall consolidate operational activities from all Operational Activity Log Tables.
- Each operational activity shall be identified using the `activity_type` column.
- Financial Transaction information shall be displayed only for operational activities associated with a Financial Transaction.
- Merchant information shall be displayed only where applicable.
- The view shall not physically store any information.

#### Dependencies

- `milk_purchase_log`
- `gas_cylinder_log`
- `bike_fuel_log`
- `engine_oil_log`
- `bike_maintenance_log`
- `financial_transaction`
- `merchant`

#### Implementation Considerations

- The view shall be implemented using a standard PostgreSQL View.
- The consolidated result shall be generated using appropriate SQL set operations across the Operational Activity Log Tables.
- Each operational activity shall retain its original business information while presenting a standardized reporting structure.
- Financial information shall be retrieved from the associated `financial_transaction` record where applicable.
- The view shall remain read-only.
- The view shall not maintain independent data.

#### Remarks

The `vw_operational_activity_summary` view provides a unified representation of operational activities within the Personal Finance Management System (PFMS). By consolidating operational records with their associated financial information where applicable, the view supports operational reporting, expenditure analysis, maintenance tracking, dashboard presentation, and long-term historical monitoring without duplicating information maintained within the underlying database tables.


## Design Decisions

The PostgreSQL database for the Personal Finance Management System (PFMS) has been designed using a fully normalized relational model to ensure data integrity, scalability, maintainability, and long-term extensibility.

The following architectural principles have been adopted throughout the database implementation.

### Centralized Financial Ledger

The `financial_transaction` table serves as the centralized financial ledger and the single source of truth for all financial activities performed within PFMS.

Every financial activity generated by Financial Planning, Operational Activity Logs, Reserve Planning, Hard Cash Wallet transactions, and future business modules is recorded within the `financial_transaction` table.

Business modules maintain only business-specific information while referencing the corresponding Financial Transaction through the `transaction_id` column.

### Separation of Financial and Business Information

Financial information and business-specific information are maintained separately to eliminate data duplication.

The `financial_transaction` table stores generic financial information including transaction amount, account, category, payment mode, merchant, budget period, account balance, and optional financial remarks.

Business modules such as Insurance, Investment, Loan, Utility, Reserve, Hard Cash Wallet, and Operational Activity Log Tables maintain only business-specific information associated with the corresponding financial activity.

### Referential Integrity

Relationships between database tables are enforced through Foreign Key constraints to preserve referential integrity and maintain data consistency throughout the system.

Business modules reference the centralized `financial_transaction` table through the `transaction_id` column rather than embedding multiple business-specific Foreign Keys within the financial ledger.

### Reserve Cycle Management

Reserve Planning is implemented using logical Reserve Cycle Numbers maintained automatically by PFMS.

Reserve Cycle Numbers represent logical business groupings and are not maintained as separate database entities.

Multiple consecutive Reserve Credit transactions belong to the same Reserve Cycle until the first Reserve Debit transaction occurs. Once Reserve utilization begins, all subsequent Reserve Debit transactions continue within the same Reserve Cycle until the next Reserve Credit transaction automatically starts a new Reserve Cycle.

### Historical Data Preservation

Historical financial and operational information is preserved to support financial reporting, expenditure analysis, auditability, trend analysis, and long-term monitoring.

Business modules maintain historical operational information while the complete financial history is preserved through the centralized `financial_transaction` table.

### Database Views

Database Views provide consolidated, read-only representations of business information by combining data from multiple tables without introducing data redundancy.

These views simplify reporting, dashboard generation, financial analysis, operational monitoring, and business intelligence while maintaining a normalized underlying database structure.

---

## Document Summary

This Database Design Document (DDD) defines the physical PostgreSQL database implementation for the Personal Finance Management System (PFMS).

The document specifies the physical implementation of database tables, relationships, constraints, indexes, and database views required to support the functional and non-functional requirements defined in the Business Requirements Specification (BRS) and the Data Dictionary.

The database design has been developed using normalized relational database principles and industry best practices to ensure consistency, scalability, maintainability, and long-term extensibility.

This document serves as the primary implementation reference for the PostgreSQL Data Definition Language (DDL) scripts, database deployment, application development, and future system enhancements.

Any future modifications to the database structure should be evaluated against the architectural principles and implementation standards defined within this document to maintain consistency throughout the Personal Finance Management System.