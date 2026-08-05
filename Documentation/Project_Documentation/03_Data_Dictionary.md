# Data Dictionary

---

## Document Information

| Property | Details |
|----------|---------|
| Project Name | Personal Finance Management System (PFMS) |
| Document Name | 03_Data_Dictionary |
| Document ID | DOC-003 |
| Document Version | 1.0 |
| Document Status | Approved |
| Author | SaiAnjaneyaVinayKumar Parnandi |
| Created On | 02-Aug-2026 |
| Last Updated | 02-Aug-2026 |
| Reviewed By | SaiAnjaneyaVinayKumar Parnandi |
| Approved By | SaiAnjaneyaVinayKumar Parnandi |

---

## Purpose

The purpose of this Data Dictionary is to define the logical database structure of the Personal Finance Management System (PFMS).

This document provides a comprehensive definition of all database objects required to support the business capabilities defined in the approved Business Requirements Specification (BRS). It serves as the authoritative reference for the design, development, implementation, and maintenance of the PFMS database by documenting the structure, purpose, relationships, constraints, and characteristics of each database object.

The Data Dictionary establishes standardized definitions for database tables, database views, indexes, columns, data types, keys, relationships, constraints, default values, naming conventions, and data validation standards to ensure consistency throughout database design, backend development, REST API development, frontend integration, reporting, analytics, testing, deployment, and future system enhancements.

This document provides complete traceability between the approved Business Requirements Specification (BRS) and the database implementation by ensuring that every database object directly supports one or more approved business requirements. It serves as the authoritative reference for the logical database design while promoting data integrity, consistency, maintainability, scalability, extensibility, and long-term sustainability throughout the Personal Finance Management System (PFMS).

---

## Scope

This Data Dictionary defines the logical database structure of the Personal Finance Management System (PFMS).

The scope of this document includes the complete definition of all database objects required to support the business capabilities specified in the approved Business Requirements Specification (BRS). It establishes the database standards that shall be followed throughout the design, development, implementation, testing, deployment, and maintenance of the PFMS database.

The scope of this document includes, but is not limited to, the following:

- Master Tables
- Financial Planning Master Tables
- Reserve Management Tables
- Operational Activity Log Tables
- Core Transaction Tables
- Database Views
- Database Indexes
- Table Definitions
- Column Definitions
- Data Types
- Primary Keys
- Foreign Keys
- Unique Constraints
- Check Constraints
- Default Values
- Relationships
- Naming Standards
- Data Validation Standards

This document defines the logical structure and characteristics of the database objects required to support the business capabilities of PFMS. It provides standardized definitions for each database object to ensure consistency, maintainability, scalability, data integrity, and traceability throughout the application.

This document does not define business requirements, business processes, business workflows, user interface design, application architecture, REST API specifications, deployment procedures, security implementation, or testing activities. These subjects are documented separately within their respective project documents.

The Data Dictionary shall remain fully traceable to the approved Business Requirements Specification (BRS) and shall serve as the authoritative reference for database implementation, backend development, API development, reporting, analytics, and future enhancements within the Personal Finance Management System (PFMS).

---

## Naming Standards

The Naming Standards define the conventions to be followed while designing database objects for the Personal Finance Management System (PFMS).

These standards establish a consistent approach for naming database objects to improve readability, maintainability, scalability, and long-term supportability of the database. Standardized naming conventions simplify database development, application development, database administration, reporting, troubleshooting, and future enhancements by ensuring that all database objects follow a predictable and meaningful structure.

The naming standards defined in this document shall be consistently applied across all database objects created within the Personal Finance Management System (PFMS), including but not limited to:

- Tables
- Views
- Indexes
- Columns
- Primary Keys
- Foreign Keys
- Unique Constraints
- Check Constraints
- Default Constraints

### General Naming Standards

The following naming standards shall be consistently applied throughout the PFMS database:

- Database object names shall use lowercase characters.
- Multiple words shall be separated using underscores (_).
- Database object names shall be meaningful, descriptive, and business-oriented.
- Abbreviations shall be avoided unless they are widely accepted business terms.
- Singular names shall be used for all database tables.
- Primary Key columns shall follow the `<table_name>_id` naming convention.
- Foreign Key columns shall use the referenced table's Primary Key name.
- Boolean columns shall begin with the prefix `is_`.
- Date columns shall end with `_date`.
- Timestamp columns, where applicable, shall end with `_timestamp`.
- Amount-related columns shall clearly indicate their financial purpose.
- Database object names shall remain consistent throughout PFMS.

---

### Table Naming Standards

Database tables shall:

- Represent a single business entity.
- Use singular nouns.
- Use meaningful business names.
- Avoid technical abbreviations.
- Avoid prefixes except where required by the database platform.

**Examples:**

- account
- category
- merchant
- budget
- financial_transaction
- hard_cash_wallet
- milk_purchase_log
- bike_fuel_log
- bike_maintenance_log
- gas_cylinder_log

---

### View Naming Standards

Database Views shall:

- Begin with the prefix `vw_`.
- Use descriptive business-oriented names.
- Represent reporting, analytical, or summary information.
- Follow the `<business_purpose>` naming convention.
- Remain consistent with the finalized reporting architecture defined in the Database Design Document (DDD).

**Examples:**

- vw_<business_purpose>
- vw_<summary_name>
- vw_<report_name>


### Index Naming Standards

Database Indexes shall:

- Begin with the prefix `idx_`.
- Clearly identify the associated table and indexed column(s).
- Use concise and meaningful names.

**Examples:**

- idx_transaction_date
- idx_transaction_budget
- idx_transaction_account
- idx_transaction_category
- idx_hard_cash_group
- idx_milk_purchase_date

---

### Column Naming Standards

Database columns shall:

- Use meaningful business names.
- Be written in lowercase.
- Separate multiple words using underscores (_).
- Clearly indicate the purpose of the stored data.
- Remain consistent across all related tables.

**Examples:**

- transaction_date
- budget_month
- budget_year
- payment_mode
- merchant_id
- account_id
- description

---

### Constraint Naming Standards

Database constraints shall follow a consistent naming convention.

| Constraint Type | Naming Convention | Example |
|-----------------|-------------------|---------|
| Primary Key | pk_<table_name> | pk_transaction |
| Foreign Key | fk_<table_name>_<referenced_table> | fk_transaction_account |
| Unique Constraint | uq_<table_name>_<column_name> | uq_account_name |
| Check Constraint | chk_<table_name>_<column_name> | chk_transaction_type |

---

### Conclusion

Consistent naming standards improve database readability, simplify maintenance, reduce implementation errors, and ensure that all database objects follow a standardized, business-oriented naming convention throughout the Personal Finance Management System (PFMS).

---

## Data Type Standards

The Data Type Standards define the approved PostgreSQL data types to be used within the Personal Finance Management System (PFMS).

Standardizing data types ensures consistency, data integrity, storage efficiency, application compatibility, and long-term maintainability across the database. Every database column shall use the most appropriate data type based on the business information it stores while avoiding unnecessary storage consumption and maintaining future scalability.

The following PostgreSQL data types shall be used throughout the Personal Finance Management System (PFMS).

| Data Type | Purpose | Example |
|-----------|---------|---------|
| BIGSERIAL | Auto-generated Primary Key identifiers. | `account_id` |
| BIGINT | Foreign Key identifiers and large integer values. | `category_id` |
| VARCHAR(n) | Variable-length textual information. | `merchant_name` |
| TEXT | Large textual information without a predefined length limit. | `description` |
| BOOLEAN | Logical values representing business conditions. | `is_active` |
| DATE | Calendar dates without time information. | `transaction_date` |
| NUMERIC(p,s) | Monetary values and precise decimal calculations. | `amount` |
| INTEGER | Whole number values within the supported integer range. | `budget_month` |
| SMALLINT | Small numeric values requiring minimal storage. | `billing_day` (where applicable) |

### Data Type Standards

The following standards shall be followed while selecting PostgreSQL data types:

- Primary Keys shall use the `BIGSERIAL` data type.
- Foreign Keys shall use the `BIGINT` data type.
- Monetary values shall use the `NUMERIC(p,s)` data type to preserve financial precision.
- Boolean values shall use the `BOOLEAN` data type.
- Date-only values shall use the `DATE` data type.
- Variable-length textual information shall use the `VARCHAR(n)` data type with an appropriate maximum length.
- The `TEXT` data type shall be used only when the maximum length cannot be reasonably predefined.
- Integer-based business values shall use the smallest appropriate integer data type while supporting future business growth.
- Data types shall be selected based on business requirements rather than implementation convenience.

The data type standards defined within this document shall be consistently followed for all current and future database objects implemented within the Personal Finance Management System (PFMS).

---

## Constraint Standards

The Constraint Standards define the rules for implementing database constraints within the Personal Finance Management System (PFMS).

Database constraints ensure data integrity, consistency, reliability, and referential integrity by enforcing business rules at the database level. These standards establish a consistent approach for implementing constraints across all database tables while supporting the approved Business Requirements Specification (BRS).

The following constraint types shall be used throughout the Personal Finance Management System (PFMS).

### Primary Key (PK)

A Primary Key uniquely identifies each record within a database table.

The following standards shall apply:

- Every table shall contain one Primary Key.
- Primary Keys shall use the `BIGSERIAL` data type.
- Primary Keys shall be system-generated.
- Primary Key values shall be unique.
- Primary Key values shall remain immutable after record creation.
- Primary Key columns shall not allow NULL values.

---

### Foreign Key (FK)

A Foreign Key establishes relationships between related database tables.

The following standards shall apply:

- Foreign Keys shall reference the Primary Key of the parent table.
- Foreign Keys shall use the `BIGINT` data type.
- Foreign Key relationships shall enforce referential integrity.
- Child records shall not reference non-existent parent records.
- Foreign Key constraints shall be implemented wherever business relationships exist.

---

### Unique Constraint (UK)

Unique Constraints prevent duplicate business information where uniqueness is required.

The following standards shall apply:

- Unique Constraints shall be implemented only where required by the approved Business Requirements Specification (BRS).
- Business attributes requiring uniqueness shall be protected using Unique Constraints.
- Multiple NULL values shall be permitted unless restricted by business requirements.

---

### Check Constraint (CK)

Check Constraints enforce valid business values for database columns.

The following standards shall apply:

- Check Constraints shall be implemented wherever business rules restrict permissible values.
- Invalid business values shall not be stored in the database.
- Check Constraints shall support business rule enforcement while maintaining data integrity.

---

### Default Values (DF)

Default Values provide predefined values for database columns when an explicit value is not supplied.

The following standards shall apply:

- Default Values shall be defined only where appropriate.
- Boolean columns shall use meaningful default values where applicable.
- Default Values shall support business requirements without introducing unintended business information.

---

### NOT NULL Constraint

The NOT NULL Constraint ensures that mandatory business information is always provided.

The following standards shall apply:

- Mandatory business attributes shall not allow NULL values.
- Optional business attributes may allow NULL values where permitted by the approved Business Requirements Specification (BRS).
- NULL values shall only be permitted where business requirements explicitly allow optional information.

---

### Conclusion

The constraint standards defined within this document shall be consistently applied across all database objects implemented within the Personal Finance Management System (PFMS) to preserve data integrity, business consistency, referential integrity, and long-term maintainability.

---

## Relationship Standards

The Relationship Standards define the rules governing relationships between database tables within the Personal Finance Management System (PFMS).

Database relationships establish logical associations between business entities and ensure referential integrity throughout the database. These standards provide a consistent approach for implementing relationships while supporting the approved Business Requirements Specification (BRS).

All relationships shall be implemented using Foreign Key constraints and shall preserve the logical business relationships defined within PFMS.

---

### Relationship Principles

The following relationship principles shall be applied throughout the PFMS database:

- Every relationship shall represent a valid business relationship.
- Parent records shall exist before related child records can be created.
- Child records shall reference only valid parent records.
- Relationships shall preserve referential integrity throughout the database.
- Database relationships shall be normalized to minimize data redundancy and maintain data consistency.
- Circular dependencies shall be avoided wherever possible.
- Relationships shall support historical data preservation without compromising financial integrity.

---

### Relationship Types

The PFMS database primarily implements the following relationship types:

#### One-to-One (1:1)

One-to-One relationships shall be implemented where a single parent record is associated with exactly one child record, and the child record shall not exist independently of the parent business entity.

These relationships are used where a specialized business module extends a single financial transaction while maintaining a separate business entity for module-specific information.

**Examples include:**

- One Bike Fuel Record → One Financial Transaction
- One Engine Oil Record → One Financial Transaction
- One Bike Maintenance Record → One Financial Transaction

One-to-One relationships shall be implemented only where required by the approved Business Requirements Specification (BRS) and shall preserve business integrity, referential integrity, and historical consistency throughout the Personal Finance Management System (PFMS).

#### One-to-Many (1:N)

A single parent record may be associated with multiple child records, while each child record shall reference only one parent record.

Examples include:

- One Account → Many Transactions
- One Category → Many Transactions
- One SubCategory → Many Transactions
- One Merchant → Many Transactions
- One Budget → Many Transactions
- One Reserve Generation → Many Hard Cash Wallet Records

---

### Referential Integrity

Referential integrity shall be maintained through Foreign Key constraints.

The following standards shall apply:

- Parent records shall exist before child records are created.
- Foreign Key values shall reference valid Primary Key values.
- Orphan child records shall not be permitted.
- Relationships shall preserve business consistency and historical information.
- Referential integrity shall be maintained throughout the lifecycle of the database.

---

### Conclusion

The relationship standards defined within this document ensure that all database relationships remain accurate, consistent, normalized, and fully aligned with the approved Business Requirements Specification (BRS). These standards support data integrity, historical preservation, reporting, and future scalability throughout the Personal Finance Management System (PFMS).


## Database Table Classification

The Database Table Classification defines the logical grouping of database tables within the Personal Finance Management System (PFMS).

Each database table is classified according to its business purpose and functional responsibility within the application. This classification provides a structured approach to database design by organizing related business entities into logical groups, thereby improving readability, maintainability, scalability, traceability, and long-term supportability of the database.

The database tables within the Personal Finance Management System (PFMS) are classified into the following categories.

| Table Category | Description |
|---------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Master Tables | Maintain reusable business reference information shared across multiple functional modules within the Personal Finance Management System (PFMS). |
| Financial Planning Tables | Maintain budgeting and long-term financial planning information, including insurance, investments, loans, and utilities. |
| Reserve Management Tables | Maintain Reserve Generation information used to organize and monitor Reserved Funds within the Personal Finance Management System (PFMS). Financial information associated with Reserved Funds is derived from the Financial Transaction module. |
| Operational Activity Log Tables | Maintain recurring operational activities and historical records generated through day-to-day business operations. |
| Core Transaction Tables | Maintain the primary financial transaction records and financial processing information of the Personal Finance Management System (PFMS). |

The following sections define each database table in detail, including its business purpose, related functional requirements, column definitions, relationships, business rules, and implementation standards.

---

## Master Tables

The Master Tables maintain reusable business reference information required throughout the Personal Finance Management System (PFMS).

These tables store standardized business data that is shared across multiple functional modules and business processes within the application. Master Tables provide consistency, eliminate data duplication, maintain referential integrity, and ensure that business information is centrally managed and reused wherever applicable.

Master Tables serve as the foundation of the PFMS database by supporting Financial Transactions, budgeting, operational activities, reporting, analytics, and future system enhancements. They are referenced by multiple business tables and are maintained independently of day-to-day transactional data.

The following Master Tables are included within the Personal Finance Management System (PFMS).

| S.No | Table Name | Description |
|------|------------|-------------|
| 1 | Account | Maintains financial accounts used for recording Financial Transactions. |
| 2 | Category | Maintains the primary financial classifications used throughout the application. |
| 3 | SubCategory | Maintains detailed financial classifications within a Category. |
| 4 | PaymentMode | Maintains the supported payment methods used for Financial Transactions. |
| 5 | Merchant | Maintains merchants, vendors, and service providers associated with Financial Transactions. |

The following sections define each Master Table in detail, including its business purpose, related functional requirements, column definitions, relationships, business rules, and implementation standards.


### Account

The **Account** table maintains the financial accounts used within the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and stores the financial accounts through which money is maintained, received, transferred, or withdrawn. Each Account represents a distinct financial account maintained by the user, such as a Salary + Savings Account, Savings Account, Cash Account, or other supported Account Types through which Financial Transactions are performed.

The Account table provides standardized account information for Financial Transaction processing, Financial Planning modules, reporting, analytics, and other business modules within PFMS. It maintains account-level business information only and does not store transactional history, which is maintained within the Financial Transaction table.

#### Related Module Functional Requirements

- MFBR-ACC-001 – Unique Account
- MFBR-ACC-002 – Mandatory Account Information
- MFBR-ACC-003 – Primary Account
- MFBR-ACC-004 – Primary Account Transition
- MFBR-ACC-005 – Account Availability
- MFBR-ACC-006 – Account Reference Restriction
- MFBR-ACC-007 – Default Account Selection
- MFBR-ACC-008 – Account Inactivation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| account_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Account. |
| account_name | VARCHAR | 100 | No | No | No | Yes | - | Name of the financial account. |
| account_type | VARCHAR | 50 | No | No | No | No | - | Type of the financial account. |
| is_primary | BOOLEAN | - | No | No | No | No | FALSE | Indicates whether the Account is designated as the Primary Account. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Account is active. |

#### Relationships

The Account table is referenced through Foreign Key relationships by the following tables:

- Reserve
- HardCashWallet
- FinancialTransaction
- Investment
- Loan

#### Business Rules

- Every Account shall have a unique Account Name.
- Account Type shall conform to one of the supported Account Types defined by the applicable Module Functional Business Rules (MFBR).
- Only one Account shall be designated as the Primary Account at any given time.
- When an Account is designated as the Primary Account, the existing Primary Account shall automatically cease to be the Primary Account.
- Inactive Accounts shall not participate in new business operations.
- Accounts referenced by other business entities shall not compromise the integrity of historical business information.

#### Remarks

The Account table serves as the centralized repository for financial account information within the Personal Finance Management System (PFMS). It provides standardized account information that supports Financial Transaction processing, Financial Planning modules, Operational Activity Management, reporting, analytics, and future system enhancements while maintaining business consistency, referential integrity, and long-term maintainability throughout the application.


### Category

The **Category** table maintains the high-level financial classifications used within the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and provides standardized financial classifications for Financial Planning, Operational Activity Management, HardCash Management, and Financial Transaction processing. Each Category represents a major financial classification that groups related financial activities together for reporting, analysis, and budgeting purposes.

The Category table provides reusable business classifications that ensure consistency, eliminate duplicate category definitions, and support accurate financial reporting and analysis throughout the application.

#### Related Module Functional Business Rules

- MFBR-CAT-001 – Unique Category
- MFBR-CAT-002 – Mandatory Category Information
- MFBR-CAT-003 – Category Availability
- MFBR-CAT-004 – Category Reference Restriction
- MFBR-CAT-005 – Category Inactivation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| category_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Category. |
| category_name | VARCHAR | 100 | No | No | No | Yes | - | Name of the financial category. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Category is active. |

#### Relationships

The Category table is referenced through Foreign Key relationships by the following tables:

- SubCategory
- Budget
- HardCashWallet
- FinancialTransaction

#### Business Rules

- Every Category shall have a unique Category Name.
- Inactive Categories shall not participate in new business operations.
- Categories referenced by other business entities shall not compromise the integrity of historical business information.

#### Remarks

The Category table serves as the centralized repository for financial category information within the Personal Finance Management System (PFMS). It provides standardized financial classifications that support Financial Planning modules, Financial Transaction processing, Operational Activity modules, reporting, analytics, and future system enhancements while maintaining business consistency, referential integrity, and long-term maintainability throughout the application.


### SubCategory

The **SubCategory** table maintains the detailed financial classifications used within the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and provides standardized financial sub-classifications for Financial Planning, Operational Activity Management, HardCash Management, and Financial Transaction processing. Each SubCategory belongs to one Category and represents a more detailed financial classification used for accurate budgeting, reporting, analysis, and expenditure tracking.

The SubCategory table provides reusable business classifications that ensure consistency, eliminate duplicate SubCategory definitions, and support detailed financial reporting and analysis throughout the application.

#### Related Module Functional Business Rules

- MFBR-SCAT-001 – Parent Category Association
- MFBR-SCAT-002 – Mandatory SubCategory Information
- MFBR-SCAT-003 – Unique SubCategory
- MFBR-SCAT-004 – SubCategory Availability
- MFBR-SCAT-005 – SubCategory Reference Restriction
- MFBR-SCAT-006 – SubCategory Inactivation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| subcategory_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the SubCategory. |
| category_id | BIGINT | - | No | No | Yes | No | - | References the associated Category. |
| subcategory_name | VARCHAR | 100 | No | No | No | No | - | Name of the financial SubCategory. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the SubCategory is active. |

#### Relationships

The SubCategory table is referenced through Foreign Key relationships by the following tables:

- Budget
- HardCashWallet
- FinancialTransaction

#### Business Rules

- Every SubCategory shall belong to one and only one Category.
- A SubCategory shall not exist without a valid Category.
- SubCategory Names shall be unique within the same Category.
- Inactive SubCategories shall not participate in new business operations.
- SubCategories referenced by other business entities shall not compromise the integrity of historical business information.

#### Remarks

The SubCategory table serves as the centralized repository for financial SubCategory information within the Personal Finance Management System (PFMS). It provides standardized financial sub-classifications that support Financial Planning modules, Financial Transaction processing, Operational Activity modules, reporting, analytics, and future system enhancements while maintaining business consistency, referential integrity, and long-term maintainability throughout the application.


### PaymentMode

The **PaymentMode** table maintains the payment methods used for recording Financial Transactions within the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and provides standardized payment methods for Financial Transaction processing. Each Payment Mode represents a distinct method through which a Financial Transaction is completed, ensuring consistency in transaction recording, reporting, and financial analysis.

The PaymentMode table provides reusable business information that eliminates duplicate Payment Mode definitions and supports standardized Financial Transaction processing throughout the application.

#### Related Module Functional Business Rules

- MFBR-PAY-001 – Unique Payment Mode
- MFBR-PAY-002 – Mandatory Payment Mode Information
- MFBR-PAY-003 – Payment Mode Availability
- MFBR-PAY-004 – Payment Mode Reference Restriction
- MFBR-PAY-005 – Payment Mode Inactivation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| payment_mode_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Payment Mode. |
| payment_mode_name | VARCHAR | 100 | No | No | No | Yes | - | Name of the Payment Mode. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Payment Mode is active. |

#### Relationships

The PaymentMode table is referenced through Foreign Key relationships by the following table:

- FinancialTransaction

#### Business Rules

- Every Payment Mode shall have a unique Payment Mode Name.
- Inactive Payment Modes shall not participate in new business operations.
- Payment Modes referenced by other business entities shall not compromise the integrity of historical business information.

#### Remarks

The PaymentMode table serves as the centralized repository for Payment Mode information within the Personal Finance Management System (PFMS). It provides standardized Payment Mode information that supports Financial Transaction processing, reporting, analytics, and future system enhancements while maintaining business consistency, referential integrity, and long-term maintainability throughout the application.


### Merchant

The **Merchant** table maintains the external business entities associated with Financial Transactions and Operational Activities within the Personal Finance Management System (PFMS).

It serves as one of the core Master Tables and provides standardized information about merchants, vendors, banks, financial institutions, insurance companies, service providers, government organizations, and other business entities involved in financial or operational activities. Each Merchant represents a unique external business entity that can be referenced by multiple business modules, ensuring consistency, eliminating duplicate records, and supporting accurate reporting and financial analysis.

The Merchant table provides reusable business information that supports Financial Transaction processing, Operational Activity modules, Financial Planning modules, reporting, analytics, and future system enhancements throughout the application.

#### Related Module Functional Business Rules

- MFBR-MER-001 – Unique Merchant
- MFBR-MER-002 – Mandatory Merchant Information
- MFBR-MER-003 – Merchant Availability
- MFBR-MER-004 – Merchant Reference Restriction
- MFBR-MER-005 – Merchant Inactivation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| merchant_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Merchant. |
| merchant_name | VARCHAR | 150 | No | No | No | Yes | - | Name of the merchant, vendor, bank, financial institution, insurance company, service provider, government organization, or other business entity. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Merchant is active. |

#### Relationships

The Merchant table is referenced through Foreign Key relationships by the following tables:

- FinancialTransaction *(Merchant reference is optional.)*
- HardCashWallet *(Merchant reference is optional.)*
- BikeFuelLog
- EngineOilLog
- BikeMaintenanceLog
- Insurance
- Investment
- Loan
- Utility

#### Business Rules

- Every Merchant shall have a unique Merchant Name.
- Inactive Merchants shall not participate in new business operations.
- Merchants referenced by other business entities shall not compromise the integrity of historical business information.
- Merchant reference shall be optional for FinancialTransaction and HardCashWallet entries.
- Merchant reference shall be mandatory for BikeFuelLog, EngineOilLog, BikeMaintenanceLog, Insurance, Investment, Loan, and Utility.

#### Remarks

The Merchant table serves as the centralized repository for external business entity information within the Personal Finance Management System (PFMS). It provides standardized Merchant information that supports Financial Transaction processing, Operational Activity modules, Financial Planning modules, reporting, analytics, and future system enhancements while maintaining business consistency, referential integrity, and long-term maintainability throughout the application.


## Financial Planning Tables

The Financial Planning Tables maintain the financial planning and commitment information required within the Personal Finance Management System (PFMS).

These tables store the current business information (SCD Type 1) related to financial planning, budgeting, savings, investments, insurance, loans, reserves, and utility renewals. They support users in planning, organizing, monitoring, and managing their financial commitments while maintaining only the latest state of each business entity.

Financial Planning Tables work together with the Core Transaction Tables, where the complete Financial Transaction history is maintained. This approach enables efficient financial planning while ensuring that historical Financial Transactions are recorded separately.

The following Financial Planning Tables are included within the Personal Finance Management System (PFMS).

| S.No | Table Name | Purpose |
|------|------------|---------|
| 1 | Budget | Maintains planned budget allocations for financial categories and sub-categories. |
| 2 | Insurance | Maintains insurance policy information, premium details, and renewal information. |
| 3 | Investment | Maintains investment information, including APY, FD, RD, PPF, NPS, Mutual Funds, Stocks, Bonds, and other investment instruments. |
| 4 | Loan | Maintains loan information, current repayment details, and loan commitments. |
| 5 | Utility | Maintains utility services, subscriptions, renewals, and expiry information requiring periodic payments or renewals. |



### Budget

The **Budget** table maintains the planned financial allocations within the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and stores the planned budget allocations for individual financial Categories and SubCategories on a monthly basis. Each Budget represents the planned expenditure or income allocation for a specific Category and SubCategory during a particular Budget Month, enabling users to monitor planned versus actual financial performance.

The Budget table supports Financial Planning, Budget monitoring, variance analysis, reporting, and decision-making while working together with the FinancialTransaction table to compare planned Budget allocations against actual Financial Transactions.

#### Related Module Functional Business Rules

- MFBR-BUD-001 – Budget Allocation
- MFBR-BUD-002 – Optional Budget
- MFBR-BUD-003 – Mandatory Budget Information
- MFBR-BUD-004 – Unique Budget Allocation
- MFBR-BUD-005 – Budget Reference Restriction
- MFBR-BUD-006 – Budget Utilization
- MFBR-BUD-007 – Budget Exceeded
- MFBR-BUD-008 – Budget Variance
- MFBR-BUD-009 – Unused Budget
- MFBR-BUD-010 – Budget Independence

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| budget_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Budget. |
| budget_month | smallint | - | No | No | No | No | - | Represents the Budget Month. |
| budget_year | int | - | No | No | No | No | - | Represents the Budget Year.  |
| category_id | BIGINT | - | No | No | Yes | No | - | References the associated Category. |
| subcategory_id | BIGINT | - | No | No | Yes | No | - | References the associated SubCategory. |
| budget_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Planned Budget Amount for the specified Category and SubCategory. |
| remarks | VARCHAR | 500 | Yes | No | No | No | NULL | Additional remarks or notes related to the Budget allocation. |

#### Relationships

The Budget table references the following Master Tables through Foreign Key relationships:

- Category
- SubCategory

#### Business Rules

- Budget allocations shall be maintained on a monthly basis.
- Only one Budget allocation shall exist for a unique combination of Budget Month, Category, and SubCategory.
- Budget allocations represent planned financial amounts and shall not restrict Financial Transactions.
- Financial Transactions may exist without a corresponding Budget allocation.
- Budget Utilization shall be calculated by aggregating all Financial Transactions recorded for the same Budget Month, Category, and SubCategory, irrespective of the Merchant, Payment Mode, or Account used.
- Financial Transactions without a corresponding Budget allocation shall be treated as unplanned financial activities during Budget Variance reporting.

#### Remarks

The Budget table serves as the centralized repository for monthly Financial Planning within the Personal Finance Management System (PFMS). It enables users to define planned Budget allocations, compare planned Budget allocations against actual Financial Transactions, analyze Budget Variance, improve future Financial Planning, and support financial reporting while maintaining business consistency and long-term maintainability throughout the application.


### Insurance

The **Insurance** table maintains insurance policy information within the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and stores the current information related to insurance policies, including policy details, premium information, payment schedules, and renewal tracking. Each Insurance record represents an active or historical insurance policy maintained for Financial Planning and premium payment management.

The Insurance table supports premium due tracking, payment planning, policy monitoring, reporting, and financial management while working together with the FinancialTransaction table, where the complete Financial Transaction history associated with premium payments is maintained.

#### Related Module Functional Business Rules

- MFBR-INS-001 – Insurance Policy
- MFBR-INS-002 – Policy Identification
- MFBR-INS-003 – Mandatory Policy Information
- MFBR-INS-004 – Insurance Provider Association
- MFBR-INS-005 – Policy Timeline
- MFBR-INS-006 – Premium Payment Frequency
- MFBR-INS-007 – Premium Payment Status
- MFBR-INS-008 – Financial Association
- MFBR-INS-009 – Premium Grace Period
- MFBR-INS-010 – Insurance Independence

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| insurance_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Insurance record. |
| insurance_name | VARCHAR | 200 | No | No | No | No | - | Name of the insurance policy. |
| insurance_type | VARCHAR | 100 | No | No | No | No | - | Type of insurance (e.g., Life, Health, Vehicle, Personal Accident, Travel). |
| merchant_id | BIGINT | - | No | No | Yes | No | - | References the insurance provider from the Merchant table. |
| policy_number | VARCHAR | 100 | No | No | No | Yes | - | Official policy number assigned by the insurance provider. |
| premium_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Premium amount payable for each payment cycle. |
| premium_frequency | VARCHAR | 50 | No | No | No | No | - | Premium payment frequency (Monthly, Quarterly, Half-Yearly, Yearly). |
| start_date | DATE | - | No | No | No | No | - | Policy commencement date. |
| premium_end_date | DATE | - | Yes | No | No | No | NULL | Date on which premium payments are completed. |
| maturity_date | DATE | - | Yes | No | No | No | NULL | Policy maturity date. |
| grace_period_days | INTEGER | - | Yes | No | No | No | NULL | Number of grace period days applicable after the Premium Due Date. |
| last_payment_date | DATE | - | Yes | No | No | No | NULL | Most recent premium payment date derived from the latest completed premium payment. |
| next_due_date | DATE | - | Yes | No | No | No | NULL | Next scheduled premium due date determined according to the Premium Payment Frequency. |
| remarks | VARCHAR | 500 | Yes | No | No | No | NULL | Additional remarks related to the insurance policy. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Insurance policy is active. |

#### Relationships

The Insurance table references the following Master Table through a Foreign Key relationship:

- Merchant

The Insurance table is referenced by the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Every Insurance record shall reference a valid Merchant.
- Every Policy Number shall be unique.
- Insurance policies shall maintain only the latest policy information.
- Premium payment history shall be maintained through the FinancialTransaction table.
- Last Payment Date and Next Due Date shall represent the current payment status of the policy.
- Premium payments shall not be recorded after the Premium End Date.
- Insurance records referenced by other business entities shall not compromise the integrity of historical business information.
- Inactive Insurance records shall not participate in new business operations.

#### Remarks

The Insurance table serves as the centralized repository for insurance policy information within the Personal Finance Management System (PFMS). It supports premium payment planning, renewal tracking, financial reporting, and long-term Financial Planning while maintaining business consistency, referential integrity, and seamless integration with Financial Transactions throughout the application.


### Investment

The **Investment** table maintains investment information within the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and stores the current information related to investments, including investment details, contribution information, payment schedules, and maturity tracking. Each Investment record represents an active or historical investment maintained for Financial Planning and investment management.

The Investment table supports investment planning, contribution tracking, maturity monitoring, reporting, and financial management while working together with the FinancialTransaction table, where the complete Financial Transaction history associated with investment activities is maintained.

#### Related Module Functional Business Rules

- MFBR-INV-001 – Investment Registration
- MFBR-INV-002 – Investment Identification
- MFBR-INV-003 – Mandatory Investment Information
- MFBR-INV-004 – Investment Provider Association
- MFBR-INV-005 – Investment Type
- MFBR-INV-006 – Investment Timeline
- MFBR-INV-007 – Investment Valuation
- MFBR-INV-008 – Investment Status
- MFBR-INV-009 – Financial Association
- MFBR-INV-010 – Investment Independence

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| investment_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Investment record. |
| investment_name | VARCHAR | 200 | No | No | No | No | - | User-defined name describing the Investment. |
| investment_type | VARCHAR | 100 | No | No | No | No | - | Type of Investment maintained by the user (e.g., FD, RD, PPF, NPS, APY, Mutual Fund, SIP, Stocks, Bonds, Gold, Others). |
| merchant_id | BIGINT | - | No | No | Yes | No | - | References the Investment Provider from the Merchant table. |
| account_id | BIGINT | - | No | No | Yes | No | - | References the Account associated with the Investment. |
| investment_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Principal Investment Amount or recurring contribution amount, depending on the Investment Type. |
| contribution_frequency | VARCHAR | 50 | Yes | No | No | No | NULL | Contribution frequency where applicable (Monthly, Quarterly, Half-Yearly, Yearly). |
| start_date | DATE | - | No | No | No | No | - | Investment commencement date. |
| maturity_date | DATE | - | Yes | No | No | No | NULL | Investment maturity date where applicable. |
| last_payment_date | DATE | - | Yes | No | No | No | NULL | Most recent contribution or investment payment date. |
| next_due_date | DATE | - | Yes | No | No | No | NULL | Next scheduled contribution date where applicable. |
| remarks | VARCHAR | 500 | Yes | No | No | No | NULL | Additional remarks related to the Investment. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Investment is active. |

#### Relationships

The Investment table references the following Master Tables through Foreign Key relationships:

- Merchant
- Account

The Investment table is referenced by the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Every Investment record shall reference a valid Merchant.
- Every Investment record shall reference a valid Account.
- Investment records shall maintain only the latest Investment information.
- Investment-related Financial Transactions shall be maintained through the FinancialTransaction table.
- Last Payment Date and Next Due Date shall represent the current contribution status where applicable.
- Maturity Date shall be maintained only for Investment Types where maturity is applicable.
- Investment records referenced by other business entities shall not compromise the integrity of historical business information.
- Inactive Investment records shall not participate in new business operations.

#### Remarks

The Investment table serves as the centralized repository for Investment information within the Personal Finance Management System (PFMS). It supports investment planning, contribution tracking, maturity monitoring, financial reporting, and long-term Financial Planning while maintaining business consistency, referential integrity, and seamless integration with Financial Transactions throughout the application.


### Loan

The **Loan** table maintains loan information within the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and stores the current information related to loans, including loan details, repayment information, payment schedules, and loan monitoring. Each Loan record represents an active or historical Loan maintained for Financial Planning and repayment management.

The Loan table supports loan repayment planning, EMI tracking, payment monitoring, financial reporting, and financial management while working together with the FinancialTransaction table, where the complete Financial Transaction history associated with loan activities is maintained.

#### Related Module Functional Business Rules

- MFBR-LON-001 – Loan Registration
- MFBR-LON-002 – Loan Identification
- MFBR-LON-003 – Mandatory Loan Information
- MFBR-LON-004 – Lending Institution Association
- MFBR-LON-005 – Loan Timeline
- MFBR-LON-006 – Loan Repayment
- MFBR-LON-007 – Loan Status
- MFBR-LON-008 – Financial Association
- MFBR-LON-009 – Loan Independence
- MFBR-LON-010 – Historical Preservation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| loan_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Loan record. |
| loan_type | VARCHAR | 200 | No | No | No | No | - | Type of Loan maintained by the user (e.g., Home Loan, Vehicle Loan, Education Loan, Personal Loan). |
| merchant_id | BIGINT | - | No | No | Yes | No | - | References the lending institution from the Merchant table. |
| account_id | BIGINT | - | No | No | Yes | No | - | References the Account associated with the Loan. |
| loan_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Principal Loan Amount. |
| roi | NUMERIC | 5,2 | Yes | No | No | No | NULL | Current Rate of Interest (ROI) applicable to the Loan. |
| emi_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Current Equated Monthly Installment (EMI) amount payable. |
| payment_frequency | VARCHAR | 50 | No | No | No | No | Monthly | Loan repayment frequency (Monthly, Quarterly, Half-Yearly, Yearly). |
| is_auto_debit | BOOLEAN | - | No | No | No | No | FALSE | Indicates whether Loan repayments are configured for automatic payment. |
| start_date | DATE | - | No | No | No | No | - | Loan commencement date. |
| end_date | DATE | - | Yes | No | No | No | NULL | Expected Loan completion date. This date may change due to changes in ROI or early Loan closure. |
| last_payment_date | DATE | - | Yes | No | No | No | NULL | Most recent Loan repayment date. |
| next_due_date | DATE | - | Yes | No | No | No | NULL | Next scheduled Loan repayment date. |
| remarks | VARCHAR | 500 | Yes | No | No | No | NULL | Additional remarks related to the Loan. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Loan is active. |

#### Relationships

The Loan table references the following Master Tables through Foreign Key relationships:

- Merchant
- Account

The Loan table is referenced by the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Every Loan record shall reference a valid Merchant.
- Every Loan record shall reference a valid Account.
- Loan records shall maintain only the latest Loan information.
- Loan-related Financial Transactions shall be maintained through the FinancialTransaction table.
- Last Payment Date and Next Due Date shall represent the current repayment status of the Loan.
- End Date shall represent the expected Loan completion date and may be updated whenever the repayment schedule changes.
- Loan records referenced by other business entities shall not compromise the integrity of historical business information.
- Inactive Loan records shall not participate in new business operations.

#### Remarks

The Loan table serves as the centralized repository for Loan information within the Personal Finance Management System (PFMS). It supports loan repayment planning, EMI tracking, repayment monitoring, financial reporting, and long-term Financial Planning while maintaining business consistency, referential integrity, and seamless integration with Financial Transactions throughout the application.


### Utility

The **Utility** table maintains Utility, subscription, and renewal information within the Personal Finance Management System (PFMS).

It serves as one of the Financial Planning Tables and stores the current information related to recurring Utilities, subscriptions, and other services requiring periodic renewal or payment. Each Utility record represents an active or historical Utility maintained for renewal planning and payment management.

The Utility table supports renewal tracking, payment planning, expiry monitoring, reporting, and financial management while working together with the FinancialTransaction table, where the complete Financial Transaction history associated with Utility payments and renewals is maintained.

#### Related Module Functional Business Rules

- MFBR-UTL-001 – Utility Registration
- MFBR-UTL-002 – Utility Identification
- MFBR-UTL-003 – Mandatory Utility Information
- MFBR-UTL-004 – Service Provider Association
- MFBR-UTL-005 – Reference Identifier
- MFBR-UTL-006 – Billing Frequency
- MFBR-UTL-007 – Utility Status
- MFBR-UTL-008 – Financial Association
- MFBR-UTL-009 – Utility Independence
- MFBR-UTL-010 – Historical Preservation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| utility_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Utility record. |
| utility_name | VARCHAR | 200 | No | No | No | No | - | User-defined name of the Utility, subscription, or recurring service. |
| merchant_id | BIGINT | - | No | No | Yes | No | - | References the service provider from the Merchant table. |
| reference_identifier | VARCHAR | 200 | Yes | No | No | No | NULL | Reference identifier associated with the Utility, such as a Mobile Number, Consumer Number, Customer ID, Subscription ID, FASTag Number, Account Number, or any other business-specific identifier. |
| amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Current amount payable for the Utility, subscription, or renewal. |
| start_date | DATE | - | No | No | No | No | - | Utility Service Start Date. |
| expiry_date | DATE | - | No | No | No | No | - | Utility expiry or renewal due date. |
| last_payment_date | DATE | - | Yes | No | No | No | NULL | Most recent Utility payment or renewal date. |
| next_due_date | DATE | - | Yes | No | No | No | NULL | Next scheduled Utility payment or renewal date. |
| remarks | VARCHAR | 500 | Yes | No | No | No | NULL | Additional remarks related to the Utility. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Utility is active. |

#### Relationships

The Utility table references the following Master Table through a Foreign Key relationship:

- Merchant

The Utility table is referenced by the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Every Utility record shall reference a valid Merchant.
- Utility records shall maintain only the latest Utility information.
- Utility-related Financial Transactions shall be maintained through the FinancialTransaction table.
- Last Payment Date and Next Due Date shall represent the current payment or renewal status of the Utility.
- Lifetime Utilities shall not be maintained. Only recurring or renewable Utilities shall be maintained.
- Utility records referenced by other business entities shall not compromise the integrity of historical business information.
- Inactive Utility records shall not participate in new business operations.
- Reference Identifier shall be optional and may be used to store any business-specific identifier associated with the Utility.

#### Remarks

The Utility table serves as the centralized repository for Utility, subscription, and renewal information within the Personal Finance Management System (PFMS). It supports payment planning, renewal tracking, expiry monitoring, financial reporting, and long-term Financial Planning while maintaining business consistency, referential integrity, and seamless integration with Financial Transactions throughout the application.



## Operational Activity Log Tables

The Operational Activity Log Tables maintain recurring operational activities and historical records generated through day-to-day business operations within the Personal Finance Management System (PFMS).

These tables store operational information related to routine business activities that support personal finance management. Operational Activity Log Tables maintain only operational business information and may result in Financial Transactions, which are maintained separately through the FinancialTransaction table.

Each Operational Activity Log captures historical business information for a specific operational activity, enabling activity tracking, expenditure analysis, maintenance scheduling, reporting, and long-term operational monitoring.

The following Operational Activity Log Tables are included within the Personal Finance Management System (PFMS).

| S.No | Table Name | Purpose |
|------|------------|---------|
| 1 | MilkPurchaseLog | Maintains historical records of daily milk purchases. |
| 2 | GasCylinderLog | Maintains historical records of gas cylinder replacement cycles. |
| 3 | BikeFuelLog | Maintains historical records of bike fuel refill cycles and Trip Meter readings. |
| 4 | EngineOilLog | Maintains historical records of engine oil replacement activities. |
| 5 | BikeMaintenanceLog | Maintains historical records of bike maintenance and repair activities. |


### MilkPurchaseLog

The **MilkPurchaseLog** table maintains historical records of daily milk purchase activities within the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and stores the operational details of daily milk purchases received from the user's regular milk vendor. Each record represents the milk purchase activity for one Purchase Date and supports milk consumption tracking, expenditure analysis, monthly settlement, operational reporting, and long-term purchase monitoring.

The MilkPurchaseLog table maintains only operational business information. The corresponding monthly payment shall be maintained separately through the FinancialTransaction table.

#### Related Module Functional Business Rules

- MFBR-MLK-001 – Regular Vendor
- MFBR-MLK-002 – Operational Ledger
- MFBR-MLK-003 – Daily Milk Record
- MFBR-MLK-004 – Monthly Bill Derivation
- MFBR-MLK-005 – Monthly Bill Composition
- MFBR-MLK-006 – Settlement Independence
- MFBR-MLK-007 – Financial Settlement
- MFBR-MLK-008 – Editable Before Settlement
- MFBR-MLK-009 – Post-Settlement Protection
- MFBR-MLK-010 – Post-Settlement Adjustment
- MFBR-MLK-011 – Monthly Settlement Consistency
- MFBR-MLK-012 – Operational Ledger Integrity

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| milk_purchase_log_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the MilkPurchaseLog record. |
| purchase_date | DATE | - | No | No | No | Yes | - | Purchase Date of the milk supply. |
| buffalo_milk_qty | NUMERIC | 6,2 | No | No | No | No | 0.00 | Quantity of Buffalo Milk purchased. |
| buffalo_milk_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount applicable to Buffalo Milk. |
| cow_milk_qty | NUMERIC | 6,2 | No | No | No | No | 0.00 | Quantity of Cow Milk purchased. |
| cow_milk_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount applicable to Cow Milk. |
| curd_qty | NUMERIC | 6,2 | No | No | No | No | 0.00 | Quantity of Curd purchased. |
| curd_amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount applicable to Curd. |
| settlement_status | VARCHAR | 20 | No | No | No | No | Pending | Settlement status of the daily MilkPurchaseLog record. |
| financial_transaction_id | BIGINT | - | Yes | No | Yes | No | NULL | References the FinancialTransaction representing the monthly milk bill settlement after payment. |

#### Relationships

The MilkPurchaseLog table is operationally associated with the following Core Transaction Table through a Foreign Key relationship:

- FinancialTransaction *(Applicable only after monthly settlement.)*

#### Business Rules

- Each MilkPurchaseLog record shall represent the milk purchase activity for one Purchase Date.

- Purchase Date shall be unique to prevent duplicate MilkPurchaseLog records for the same day.

- Buffalo Milk, Cow Milk, and Curd may be recorded independently or in any valid combination.

- Buffalo Milk Quantity, Cow Milk Quantity, and Curd Quantity shall each be greater than or equal to zero.

- Buffalo Milk Amount, Cow Milk Amount, and Curd Amount shall each be greater than or equal to zero.

- A MilkPurchaseLog record with all quantities equal to zero shall be permitted to represent a day on which no milk products were purchased.

- Total Purchase Amount shall not be physically stored and shall be derived whenever required by summing the Buffalo Milk Amount, Cow Milk Amount, and Curd Amount.

- Merchant information shall not be maintained.

- Remarks shall not be physically stored and shall be generated dynamically by the application whenever required.

- The corresponding monthly FinancialTransaction shall be maintained separately within the FinancialTransaction table.

- Payment Status and Settlement Status shall be derived through the applicable database views and shall not be physically stored within the MilkPurchaseLog table.

- MilkPurchaseLog shall maintain only operational business information.


#### Remarks

The MilkPurchaseLog table serves as the centralized repository for daily milk purchase activities within the Personal Finance Management System (PFMS). It supports milk consumption tracking, expenditure analysis, monthly bill derivation, operational reporting, and long-term purchase monitoring while maintaining business consistency, referential integrity, and complete separation between operational information and Financial Transactions.



### BikeFuelLog

The **BikeFuelLog** table maintains the operational history of each completed bike fuel refill cycle within the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and stores the operational information associated with each completed fuel refill cycle. The Trip Meter is used to measure the total distance travelled between two consecutive completed fuel refills, enabling fuel performance analysis, mileage analysis, fuel consumption tracking, and historical reporting.

The BikeFuelLog table maintains only operational business information, while the corresponding FinancialTransaction is maintained separately within the FinancialTransaction table.

#### Related Module Functional Business Rules

- MFBR-BFL-001 – Complete Fuel Cycle
- MFBR-BFL-002 – Trip Meter Measurement
- MFBR-BFL-003 – Trip Meter Reset
- MFBR-BFL-004 – Fuel Refill Information
- MFBR-BFL-005 – Financial Independence
- MFBR-BFL-006 – Fuel Purchase
- MFBR-BFL-007 – Complete Fuel Cycle Requirement
- MFBR-BFL-008 – Trip Meter Integrity
- MFBR-BFL-009 – Missed Fuel Cycle
- MFBR-BFL-010 – Historical Preservation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| bike_fuel_log_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the BikeFuelLog record. |
| purchase_date | DATE | - | No | No | No | No | - | Date on which the bike was refuelled. |
| trip_km | NUMERIC | 8,2 | No | No | No | No | - | Trip Meter reading representing the total distance travelled during the completed fuel refill cycle. |
| fuel_quantity | NUMERIC | 8,2 | No | No | No | No | - | Quantity of fuel filled in litres. |
| fuel_type | VARCHAR | 20 | No | No | No | No | Normal | Type of fuel filled (Normal or Premium). |
| amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount paid for the completed fuel refill. |

#### Relationships

The BikeFuelLog table is operationally associated with the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Each BikeFuelLog record shall represent one completed fuel refill cycle.
- The Trip Meter shall be used to determine the total distance travelled during the completed fuel refill cycle.
- Trip Meter Reading shall be maintained for every completed fuel refill.
- After recording the completed fuel refill cycle, the Trip Meter shall be reset to begin measuring the next fuel refill cycle.
- Only completed fuel refill cycles shall participate in fuel performance analysis.
- Partial fuel refills shall not participate in fuel performance analysis.
- Trip Kilometres shall be greater than zero.
- Fuel Quantity shall be greater than zero.
- Amount shall be greater than zero.
- Fuel Type shall be restricted to **Normal** or **Premium**.
- Activity Summary shall not be physically stored and shall be generated dynamically by the application whenever required.
- The corresponding FinancialTransaction shall be maintained separately within the FinancialTransaction table.
- BikeFuelLog shall maintain only operational business information.

#### Remarks

The BikeFuelLog table serves as the centralized repository for completed bike fuel refill cycles within the Personal Finance Management System (PFMS). By recording Trip Meter readings, fuel quantity, fuel type, and refill information, the table supports mileage analysis, fuel consumption tracking, expenditure analysis, operational reporting, and long-term historical monitoring while maintaining business consistency and complete separation between operational information and Financial Transactions.


### GasCylinderLog

The **GasCylinderLog** table maintains the operational history of household LPG cylinder replacement cycles within the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and stores the operational information associated with each LPG cylinder replacement cycle. Each record represents one complete operational lifecycle of a replacement cylinder, beginning when the current cylinder becomes empty and ending when the replacement cylinder is delivered.

The GasCylinderLog table maintains only operational business information, while all financial payments associated with the cylinder replacement process are maintained separately within the FinancialTransaction table.

#### Related Module Functional Business Rules

- MFBR-GAS-001 – Operational Lifecycle
- MFBR-GAS-002 – Cylinder Replacement
- MFBR-GAS-003 – Booking Information
- MFBR-GAS-004 – Delivery Information
- MFBR-GAS-005 – Merchant Association
- MFBR-GAS-006 – Operational Status
- MFBR-GAS-007 – Financial Independence
- MFBR-GAS-008 – Booking Payment
- MFBR-GAS-009 – Delivery Charges
- MFBR-GAS-010 – Booking Cancellation
- MFBR-GAS-011 – Refund Processing
- MFBR-GAS-012 – New Booking
- MFBR-GAS-013 – Historical Preservation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| gas_cylinder_log_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the GasCylinderLog record. |
| change_date | DATE | - | No | No | No | No | - | Date on which the active LPG cylinder became empty and the spare cylinder became the active cylinder. |
| purchase_date | DATE | - | No | No | No | No | - | Date on which the replacement LPG cylinder was booked. |
| arrival_date | DATE | - | Yes | No | No | No | NULL | Date on which the replacement LPG cylinder was delivered. |

#### Relationships

The GasCylinderLog table is operationally associated with the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Each GasCylinderLog record shall represent one complete LPG cylinder booking cycle.
- The Change Date shall represent the date on which the active cylinder became empty and the spare cylinder became the active cylinder.
- The Purchase Date shall represent the booking date of the replacement cylinder.
- The Arrival Date shall represent the delivery date of the replacement cylinder.
- Purchase Date shall be the same as or later than the Change Date.
- Arrival Date shall be the same as or later than the Purchase Date.
- Merchant information shall not be maintained.
- Cylinder quantity shall not be maintained.
- The GasCylinderLog table shall maintain only operational business information.
- Gas booking payments, delivery-related payments, refunds, and other financial activities shall be maintained separately within the FinancialTransaction table.
- Activity Summary shall not be physically stored and shall be generated dynamically by the application whenever required.

#### Remarks

The GasCylinderLog table serves as the centralized repository for the operational history of household LPG cylinder replacement cycles within the Personal Finance Management System (PFMS). It supports gas replacement history, operational reporting, and long-term historical analysis while maintaining business consistency and complete separation between operational information and Financial Transactions.


### EngineOilLog

The **EngineOilLog** table maintains the operational history of bike engine oil replacements within the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and stores the operational information associated with each completed engine oil replacement. Each record represents one completed engine oil replacement event, supporting maintenance tracking, service history, reporting, and long-term operational analysis.

The EngineOilLog table maintains only operational business information, while the corresponding FinancialTransaction is maintained separately within the FinancialTransaction table.

#### Related Module Functional Business Rules

- MFBR-EOL-001 – Engine Oil Replacement
- MFBR-EOL-002 – Maintenance Information
- MFBR-EOL-003 – Maintenance Cycle
- MFBR-EOL-004 – Maintenance Cycle Continuity
- MFBR-EOL-005 – Financial Independence
- MFBR-EOL-006 – Financial Association
- MFBR-EOL-007 – Service Provider Association
- MFBR-EOL-008 – Missed Maintenance Entry
- MFBR-EOL-009 – Historical Preservation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| engine_oil_log_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the EngineOilLog record. |
| merchant_id | BIGINT | - | No | No | Yes | No | - | References the service provider from the Merchant table. |
| replacement_date | DATE | - | No | No | No | No | - | Date on which the engine oil replacement was completed. |
| odometer_reading | NUMERIC | 8,2 | No | No | No | No | - | Odometer reading at the time of engine oil replacement. |
| amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount paid for the engine oil replacement. |

#### Relationships

The EngineOilLog table references the following Master Table through a Foreign Key relationship:

- Merchant

The EngineOilLog table is operationally associated with the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Each EngineOilLog record shall represent one completed engine oil replacement.
- Every EngineOilLog record shall reference one valid Merchant.
- Engine Oil Name shall not be maintained.
- Odometer Reading shall represent the total distance travelled by the bike at the time of engine oil replacement.
- Odometer Reading shall be greater than zero.
- Amount shall be greater than zero.
- The corresponding FinancialTransaction shall be maintained separately within the FinancialTransaction table.
- EngineOilLog shall maintain only operational business information.
- Activity Summary shall not be physically stored and shall be generated dynamically by the application whenever required.

#### Remarks

The EngineOilLog table serves as the centralized repository for bike engine oil replacement history within the Personal Finance Management System (PFMS). By recording the replacement date, odometer reading, service provider, and replacement amount, the table supports maintenance tracking, operational reporting, expenditure analysis, and long-term historical monitoring while maintaining business consistency and complete separation between operational information and Financial Transactions.


### BikeMaintenanceLog

The **BikeMaintenanceLog** table maintains the operational history of bike maintenance and repair activities within the Personal Finance Management System (PFMS).

It serves as one of the Operational Activity Log Tables and stores the operational information associated with each completed bike maintenance activity. Each record represents one completed maintenance or repair activity, supporting service history, maintenance tracking, expenditure analysis, operational reporting, and long-term historical monitoring.

The BikeMaintenanceLog table maintains only operational business information, while the corresponding FinancialTransaction is maintained separately within the FinancialTransaction table.

#### Related Module Functional Business Rules

- MFBR-BMT-001 – Maintenance Activity
- MFBR-BMT-002 – Maintenance Scope
- MFBR-BMT-003 – Maintenance Information
- MFBR-BMT-004 – Financial Independence
- MFBR-BMT-005 – Financial Association
- MFBR-BMT-006 – Service Provider Association
- MFBR-BMT-007 – Missed Maintenance Entry
- MFBR-BMT-008 – Historical Preservation

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| bike_maintenance_log_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the BikeMaintenanceLog record. |
| merchant_id | BIGINT | - | No | No | Yes | No | - | References the service provider from the Merchant table. |
| maintenance_date | DATE | - | No | No | No | No | - | Date on which the maintenance activity was completed. |
| maintenance_description | VARCHAR | 500 | No | No | No | No | - | Free-text description of the maintenance or repair activity performed. |
| amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount paid for the maintenance activity. |

#### Relationships

The BikeMaintenanceLog table references the following Master Table through a Foreign Key relationship:

- Merchant

The BikeMaintenanceLog table is operationally associated with the following Core Transaction Table:

- FinancialTransaction

#### Business Rules

- Each BikeMaintenanceLog record shall represent one completed bike maintenance or repair activity.
- Every BikeMaintenanceLog record shall reference one valid Merchant.
- Maintenance Description shall be maintained as free text.
- Engine Oil replacement activities shall not be maintained within the BikeMaintenanceLog table.
- Amount shall be greater than zero.
- The corresponding FinancialTransaction shall be maintained separately within the FinancialTransaction table.
- BikeMaintenanceLog shall maintain only operational business information.
- Activity Summary shall not be physically stored and shall be generated dynamically by the application whenever required.

#### Remarks

The BikeMaintenanceLog table serves as the centralized repository for bike maintenance and repair history within the Personal Finance Management System (PFMS). By recording the maintenance date, service provider, maintenance description, and maintenance amount, the table supports maintenance tracking, operational reporting, expenditure analysis, and long-term historical monitoring while maintaining business consistency and complete separation between operational information and Financial Transactions.


## Financial Transaction Tables

The Financial Transaction Tables maintain the complete financial transaction history within the Personal Finance Management System (PFMS).

These tables store all monetary transactions performed by the user, including Account-based Financial Transactions and HardCash movements. They serve as the financial ledger of the application by recording every Credit, Debit, Transfer, Payment, Receipt, and other Financial Transaction occurring throughout the system.

Financial Transaction Tables serve as the single financial source of truth within PFMS by integrating Financial Planning, Operational Activity Logs, Reserve Management, and other business modules. They provide the foundation for Account Balance calculation, Budget utilization, Financial Reporting, Dashboard generation, Financial Analytics, expenditure tracking, cash flow analysis, and long-term financial history.

The following Financial Transaction Tables are included within the Personal Finance Management System (PFMS).

| S.No | Table Name | Purpose |
|------|----------------------|--------------------------------------------------------------------------|
| 1 | HardCashWallet | Maintains the complete history of physical cash movements and HardCash balance history. |
| 2 | FinancialTransaction | Maintains the complete Financial Transaction history for all financial activities within PFMS. |


### HardCashWallet

The **HardCashWallet** table maintains the complete history of physical cash movements within the Personal Finance Management System (PFMS).

It serves as one of the Financial Transaction Tables and stores every physical cash movement performed by the user. Each record represents one physical cash transaction, enabling complete cash flow tracking, wallet reconciliation, expenditure analysis, financial reporting, and long-term historical analysis.

The HardCashWallet table maintains only physical cash movements and remains synchronized with the FinancialTransaction table, which serves as the centralized financial ledger of the Personal Finance Management System (PFMS).

#### Related Module Functional Business Rules

- MFBR-HCW-001 – HardCash Ledger
- MFBR-HCW-002 – HardCash Transaction Type
- MFBR-HCW-003 – Wallet Balance
- MFBR-HCW-004 – Physical Cash Reconciliation
- MFBR-HCW-005 – HardCash Group Association
- MFBR-HCW-006 – HardCash Group Creation
- MFBR-HCW-007 – HardCash Group Number
- MFBR-HCW-008 – HardCash Group Continuation
- MFBR-HCW-009 – Logical Cash Cycle
- MFBR-HCW-010 – Initial HardCash Group
- MFBR-HCW-011 – External Cash Receipt
- MFBR-HCW-012 – Bank Deposit
- MFBR-HCW-013 – Financial Association
- MFBR-HCW-014 – Cash Acquisition
- MFBR-HCW-015 – HardCash Group Authority
- MFBR-HCW-016 – Historical HardCash Integrity
- MFBR-HCW-017 – Wallet Independence
- MFBR-HCW-018 – HardCash Balance Integrity

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| hard_cash_wallet_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the HardCashWallet record. |
| transaction_id | BIGINT | - | No | No | Yes | Yes | - | References the corresponding FinancialTransaction. |
| hard_cash_group | VARCHAR | 20 | No | No | No | No | - | Logical HardCash Group (HC1, HC2, HC3...). |
| account_id | BIGINT | - | No | No | Yes | No | - | References the Physical Cash Account from the Account table. |
| category_id | BIGINT | - | No | No | Yes | No | - | References the associated Category. |
| sub_category_id | BIGINT | - | Yes | No | Yes | No | NULL | References the associated SubCategory. |
| merchant_id | BIGINT | - | Yes | No | Yes | No | NULL | References the Merchant when applicable. |
| transaction_date | DATE | - | No | No | No | No | - | Date of the physical cash movement. |
| transaction_type | VARCHAR | 20 | No | No | No | No | - | Credit or Debit. |
| amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Physical cash movement amount. |
| current_balance | NUMERIC | 12,2 | No | No | No | No | 0.00 | Current physical cash balance after the transaction. |
| description | VARCHAR | 500 | Yes | No | No | No | NULL | Optional description. |

#### Relationships

The HardCashWallet table references the following Master Tables through Foreign Key relationships:

- Account
- Category
- SubCategory
- Merchant

The HardCashWallet table references the following Financial Transaction Table:

- FinancialTransaction

#### Business Rules

- Each HardCashWallet record shall represent one physical cash movement.
- Every HardCashWallet record shall reference one FinancialTransaction.
- Every HardCashWallet record shall belong to one HardCash Group.
- Every HardCashWallet record shall reference the Physical Cash Account.
- Every HardCashWallet record shall reference one valid Category.
- SubCategory shall be optional.
- Merchant shall be optional.
- Transaction Type shall be either Credit or Debit.
- Amount shall be greater than zero.
- Current Balance shall be maintained after every HardCash transaction.
- Description shall be optional.
- Every HardCashWallet record shall remain synchronized with the corresponding FinancialTransaction.

#### Remarks

The HardCashWallet table serves as the centralized repository for physical cash movements within the Personal Finance Management System (PFMS). By maintaining the complete history of physical cash movements together with the running wallet balance and HardCash Groups, it supports reconciliation, expenditure analysis, financial reporting, and long-term historical monitoring while remaining synchronized with the FinancialTransaction table.


### FinancialTransaction

The **FinancialTransaction** table maintains the complete history of Financial Transactions within the Personal Finance Management System (PFMS).

It serves as the single financial source of truth for the Personal Finance Management System (PFMS) and stores every Financial Transaction performed by the user. Each record represents one Financial Transaction and supports account balance calculation, Budget management, Salary Boundary processing, financial reporting, historical financial recalculation, financial analytics, and long-term financial history.

The FinancialTransaction table serves as the centralized financial ledger for all business modules within PFMS. Operational modules and Financial Planning modules shall maintain only their respective business information, while every financial impact shall be represented through the FinancialTransaction table in accordance with the applicable Module Functional Business Rules.

#### Related Module Functional Business Rules

- MFBR-TRN-001 – Financial Source of Truth
- MFBR-TRN-002 – Financial Event
- MFBR-TRN-003 – Transaction Business Information
- MFBR-TRN-004 – Financial Participation
- MFBR-TRN-005 – Salary Boundary
- MFBR-TRN-006 – Budget Assignment
- MFBR-TRN-007 – Financial Chronology
- MFBR-TRN-008 – Automatic Budget Participation
- MFBR-TRN-009 – Historical Transactions
- MFBR-TRN-010 – Historical Financial Recalculation
- MFBR-TRN-011 – Transaction Synchronization
- MFBR-TRN-012 – Balance Integrity

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| transaction_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the FinancialTransaction record. |
| transaction_date | DATE | - | No | No | No | No | - | Date on which the Financial Transaction occurred. |
| is_salary_boundary | CHAR | 1 | No | No | No | No | 'N' | Indicates whether the Financial Transaction establishes the Salary Boundary ('Y' / 'N'). |
| budget_month | SMALLINT | - | No | No | No | No | - | Budget Month to which the Financial Transaction belongs. |
| budget_year | INTEGER | - | No | No | No | No | - | Budget Year to which the Financial Transaction belongs. |
| account_id | BIGINT | - | No | No | Yes | No | - | References the Account associated with the Financial Transaction. |
| category_id | BIGINT | - | No | No | Yes | No | - | References the Category associated with the Financial Transaction. |
| sub_category_id | BIGINT | - | No | No | Yes | No | - | References the SubCategory associated with the Financial Transaction. |
| payment_mode_id | BIGINT | - | No | No | Yes | No | - | References the Payment Mode associated with the Financial Transaction. |
| merchant_id | BIGINT | - | Yes | No | Yes | No | NULL | References the Merchant associated with the Financial Transaction when applicable. |
| transaction_type | VARCHAR | 20 | No | No | No | No | - | Type of Financial Transaction (Credit or Debit). |
| amount | NUMERIC | 12,2 | No | No | No | No | 0.00 | Amount associated with the Financial Transaction. |
| current_balance | NUMERIC | 12,2 | No | No | No | No | System Maintained | Running balance of the associated Account immediately after completion of the Financial Transaction. |
| description | VARCHAR | 500 | Yes | No | No | No | NULL | User-defined description explaining the purpose of the Financial Transaction. |

#### Relationships

The FinancialTransaction table references the following Master Tables through Foreign Key relationships:

- Account
- Category
- SubCategory
- PaymentMode
- Merchant

#### Business Rules

- Each FinancialTransaction record shall represent one Financial Transaction.
- Every FinancialTransaction record shall reference one valid Account.
- Every FinancialTransaction record shall reference one valid Category.
- Every FinancialTransaction record shall reference one valid SubCategory.
- Every FinancialTransaction record shall reference one valid Payment Mode.
- Merchant shall be optional and shall be maintained only when applicable.
- Transaction Type shall be restricted to **Credit** or **Debit**.
- Amount shall be greater than zero.
- Budget Month and Budget Year shall be automatically derived and assigned in accordance with the Salary Boundary Processing business rules. These values shall represent the applicable Budget Period (salary utilization period) associated with the Financial Transaction and shall not necessarily correspond to the calendar month and year of the Transaction Date.
- Only one Salary Boundary FinancialTransaction shall exist for a Budget Cycle in accordance with the applicable Module Functional Business Rules.
- Current Balance shall be maintained automatically by PFMS and shall not be manually modified.
- Description shall be optional and may be used to capture additional information regarding the Financial Transaction.
- Historical FinancialTransaction modifications shall automatically trigger the applicable historical financial recalculation process.
- Operational modules and Financial Planning modules shall maintain only their respective business information. Financial impacts shall be represented through the FinancialTransaction table in accordance with the applicable Module Functional Business Rules.

#### Remarks

The FinancialTransaction table serves as the single financial source of truth within the Personal Finance Management System (PFMS). By maintaining the complete history of every Financial Transaction, it supports Account Balance calculation, Budget management, Salary Boundary processing, historical financial recalculation, expenditure analysis, Financial Reporting, Financial Analytics, and long-term financial monitoring while preserving complete financial integrity throughout the application.



## Reserve Planning Tables

The **Reserve Planning Tables** maintain Reserve planning and lifecycle information within the Personal Finance Management System (PFMS).

These tables enable the user to establish, monitor, and manage Emergency Fund Reserve Generations independently of monthly Budget allocations while remaining synchronized with the FinancialTransaction table.

Reserve Planning supports long-term financial preparedness by organizing Emergency Fund accumulation into logical Reserve Generations and preserving the complete lifecycle of each Reserve Generation for historical analysis and future reference.

The Reserve Planning Tables maintain only Reserve planning and lifecycle information. All financial movements related to Reserve accumulation, Reserve utilization, Reserve restoration, and Reserve adjustments shall be be represented through the FinancialTransaction table, which serves as the single financial source of truth within the Personal Finance Management System (PFMS).

The following Reserve Planning Table is included within the Personal Finance Management System (PFMS).

| S.No | Table Name | Purpose |
|------|------------|---------|
| 1 | Reserve | Maintains the lifecycle, planning information, and historical information of Reserve Generations used for Emergency Fund management. |



### Reserve

The **Reserve** table maintains the lifecycle information of Reserve Generations within the Personal Finance Management System (PFMS).

It serves as the Reserve Planning Table of PFMS and maintains one record for each logical Reserve Generation. A Reserve Generation represents an uninterrupted logical grouping of Emergency Fund accumulation and utilization activities. Reserve Generations are business groupings used for planning, historical analysis, and reporting and do not represent separate physical Reserve balances.

The Reserve table maintains Reserve planning and lifecycle information only. All financial movements related to Reserve accumulation, Reserve utilization, Reserve restoration, and Reserve adjustments shall be represented through the FinancialTransaction table, which serves as the single financial source of truth within the Personal Finance Management System (PFMS).

#### Related Module Functional Business Rules

- MFBR-RES-001 – Reserve Purpose
- MFBR-RES-002 – Reserve Account Association
- MFBR-RES-003 – Reserve Generation
- MFBR-RES-004 – Reserve Cycle Initiation
- MFBR-RES-005 – Active Reserve Generation
- MFBR-RES-006 – Reserve Cycle Closure
- MFBR-RES-007 – Reserve Generation Continuity
- MFBR-RES-008 – Subsequent Reserve Generation
- MFBR-RES-009 – Reserve Balance
- MFBR-RES-010 – Historical Reserve Integrity
- MFBR-RES-011 – Reserve Generation Sequence
- MFBR-RES-012 – Reserve Generation Management
- MFBR-RES-013 – Emergency Fund Usage

#### Columns

| Column Name | Data Type | Length | Nullable | PK | FK | Unique | Default | Description |
|--------------|-----------|--------|----------|----|----|--------|---------|-------------|
| reserve_id | BIGSERIAL | - | No | Yes | No | Yes | Auto Generated | Unique identifier of the Reserve record. |
| reserve_generation_id | INTEGER | - | No | No | No | Yes | System Maintained | Sequential logical identifier assigned automatically to each Reserve Generation. |
| primary_account_id | BIGINT | - | No | No | Yes | No | - | References the designated Primary Account used for Emergency Fund accumulation. |
| secondary_account_id | BIGINT | - | No | No | Yes | No | - | References the designated Secondary Account representing the Emergency Fund. |
| generation_start_date | DATE | - | No | No | No | No | - | Date on which the Reserve Generation became active. |
| generation_end_date | DATE | - | Yes | No | No | No | NULL | Date on which the Reserve Generation was closed upon initiation of the subsequent Reserve Generation. |
| is_active | BOOLEAN | - | No | No | No | No | TRUE | Indicates whether the Reserve Generation is currently active. |
| remarks | VARCHAR | 500 | Yes | No | No | No | NULL | Optional remarks related to the Reserve Generation. |

#### Relationships

The Reserve table references the following Master Tables through Foreign Key relationships:

- Account *(Primary Account)*
- Account *(Secondary Account)*

The Reserve table is operationally associated with the following Financial Transaction Table:

- FinancialTransaction

#### Business Rules

- Each Reserve record shall represent one logical Reserve Generation.
- Every Reserve Generation shall have a unique sequential Reserve Generation Identifier.
- Every Reserve Generation shall reference one designated Primary Account.
- Every Reserve Generation shall reference one designated Secondary Account.
- The first qualifying Emergency Fund transfer from the designated Primary Account to the designated Secondary Account shall create a new active Reserve Generation.
- Consecutive Emergency Fund accumulation and utilization activities shall belong to the active Reserve Generation until another qualifying Emergency Fund accumulation initiates the next Reserve Generation.
- Initiation of a new Reserve Generation shall automatically close the previously active Reserve Generation.
- At most one Reserve Generation shall be active at any given time.
- Reserve Generations shall represent logical business groupings only and shall not represent separate physical Reserve balances.
- Reserve Balance shall always be derived from the actual balance maintained within the designated Secondary Account and shall not be physically stored within the Reserve table.
- Users shall not manually create, modify, renumber, merge, split, reopen, or delete Reserve Generations.
- Financial movements associated with Reserve Management shall be represented through the FinancialTransaction table.
- Closed Reserve Generations shall preserve their original business information throughout their lifecycle.

#### Remarks

The Reserve table serves as the centralized repository for Reserve Generation lifecycle information within the Personal Finance Management System (PFMS). By maintaining one record for each logical Reserve Generation while representing all financial movements through the FinancialTransaction table, the Reserve module supports Emergency Fund planning, Reserve lifecycle management, historical analysis, reporting, and long-term financial management while preserving complete separation between logical Reserve planning information and the centralized financial ledger.


## Database Views

The **Database Views** provide business-oriented, read-only representations of data maintained within the Personal Finance Management System (PFMS).

Database Views consolidate, summarize, derive, and present business information from one or more underlying database tables without duplicating the stored data. They support Financial Reporting, Operational Reporting, Dashboard generation, reconciliation, business analysis, and decision-making while maintaining the single financial source of truth within the underlying database tables.

Database Views shall not store independent business data. All information presented through a Database View shall be derived dynamically from the underlying database tables.

The following mandatory Database Views are maintained within the Personal Finance Management System (PFMS).

| S.No | View Name | Description |
|------|-----------|-------------|
| 1 | Financial Transaction Details View | Provides a consolidated business view of Financial Transactions by combining the FinancialTransaction table with the related Master Tables, Operational Activity Log Tables, Reserve Planning Tables, HardCashWallet table, and Financial Planning Tables. The view presents complete Financial Transaction information required for dashboards, transaction history, search, reporting, reconciliation, and financial analysis. |
| 2 | Budget Utilization View | Provides Budget allocation, actual expenditure, remaining Budget, and Budget variance by combining Budget and FinancialTransaction information for the applicable Budget Month, Category, and SubCategory. |
| 3 | Milk Monthly Summary View | Provides monthly summarized dairy purchase information by aggregating daily records maintained within the MilkPurchaseLog table, including product quantities, purchase amounts, and total monthly payable amount. |
| 4 | Milk Payment Status View | Provides monthly milk payment information by combining the Milk Monthly Summary View with the FinancialTransaction table to determine payment status, payment transaction details, outstanding amounts, and payment history. |

The following sections define each Database View in detail, including its business purpose, source tables, derived columns, business rules, relationships, and implementation standards.

---

### Milk Monthly Summary View

The **Milk Monthly Summary View** provides a consolidated monthly summary of dairy purchases maintained within the Personal Finance Management System (PFMS).

The view aggregates daily purchase records maintained in the **MilkPurchaseLog** table and presents monthly purchase information for each calendar month. It summarizes product quantities, purchase amounts, billing period, and the total monthly payable amount without duplicating the underlying operational data.

The Milk Monthly Summary View serves as the primary source for monthly milk bill generation, payment verification, Financial Reporting, Dashboard presentation, and analytical processing.

#### Source Tables

- MilkPurchaseLog

#### Columns

| Column Name | Description |
|--------------|-------------|
| from_date | First Milk Purchase Date within the summarized month. |
| to_date | Last Milk Purchase Date within the summarized month. |
| purchase_days | Total number of distinct purchase dates recorded during the summarized month. |
| buffalo_quantity | Total quantity of Buffalo Milk purchased during the summarized month. |
| buffalo_amount | Total amount paid for Buffalo Milk during the summarized month. |
| cow_quantity | Total quantity of Cow Milk purchased during the summarized month. |
| cow_amount | Total amount paid for Cow Milk during the summarized month. |
| curd_quantity | Total quantity of Curd purchased during the summarized month. |
| curd_amount | Total amount paid for Curd during the summarized month. |
| total_quantity | Total quantity of all dairy products purchased during the summarized month. |
| total_amount | Total payable amount for all dairy products purchased during the summarized month. |

#### Business Rules

- The Milk Monthly Summary View shall derive all information exclusively from the **MilkPurchaseLog** table.
- The view shall summarize Milk Purchase records for each calendar month.
- The view shall display the first purchase date (`from_date`) and last purchase date (`to_date`) of the summarized period.
- The view shall calculate the total quantity and total amount separately for Buffalo Milk, Cow Milk, and Curd.
- The view shall calculate the overall `total_quantity` and `total_amount` for the summarized period.
- The view shall calculate `purchase_days` by counting the distinct purchase dates available within the summarized period.
- The view shall not maintain independent business data.
- The view shall automatically reflect the latest information maintained within the **MilkPurchaseLog** table.

#### Remarks

The Milk Monthly Summary View provides a consolidated monthly representation of daily dairy purchases without duplicating the underlying operational data. It serves as the primary source for monthly milk bill generation and acts as the foundation for the Milk Payment Status View.

---

### Milk Payment Status View

Replace every occurrence of **Transaction** with **FinancialTransaction**.

Specifically:

- **Source Objects**
  - Milk Monthly Summary View
  - **FinancialTransaction**

- Business Rule

> The view shall derive payment information from **Financial Transactions** classified under the applicable Milk Category and SubCategory for the corresponding billing period.

The remaining content remains unchanged.

---

### Budget Utilization View

Replace every occurrence of **Transaction** with **FinancialTransaction**.

Examples:

**Introduction**

> The view combines the monthly Budget allocation maintained in the **Budget** table with the corresponding Financial Transactions maintained in the **FinancialTransaction** table.

**Source Objects**

- Budget
- FinancialTransaction

**Column**

> spent_amount — Total expenditure recorded from the **FinancialTransaction** table.

**Business Rules**

- The Budget Utilization View shall derive expenditure information from the **FinancialTransaction** table.
- The view shall summarize Financial Transactions for the corresponding Budget Month, Budget Year, Category, and SubCategory.

All remaining content remains unchanged.

---

### Financial Transaction Details View

The **Financial Transaction Details View** provides a consolidated business view of Financial Transactions maintained within the Personal Finance Management System (PFMS).

The view combines Financial Transactions with the corresponding Master Data, Operational Activity information, Reserve Planning information, HardCashWallet information, and Financial Planning information to present a complete business representation of every Financial Transaction without duplicating the underlying transactional data.

The Financial Transaction Details View serves as the primary source for transaction history, Dashboard presentation, Financial Reporting, transaction search, audit, reconciliation, and analytical processing.

#### Source Objects

**Financial Transaction Tables**

- FinancialTransaction

**Master Tables**

- Account
- Category
- SubCategory
- Merchant
- PaymentMode

**Reserve Planning Tables**

- Reserve

**Operational Activity Log Tables**

- HardCashWallet
- MilkPurchaseLog
- GasCylinderLog
- BikeFuelLog
- EngineOilLog
- BikeMaintenanceLog

**Financial Planning Tables**

- Insurance
- Investment
- Loan
- Utility

#### Business Rules

- The Financial Transaction Details View shall derive Financial Transaction information from the **FinancialTransaction** table.
- The view shall derive descriptive business information from the applicable Master Tables, Operational Activity Log Tables, Reserve Planning Tables, HardCashWallet table, and Financial Planning Tables.
- Each Financial Transaction shall be represented only once within the view.
- The `display_description` shall present business-friendly information based on the originating business module.
- Only business modules having corresponding Financial Transactions shall appear within the view.
- The view shall not maintain independent business data.
- The view shall automatically reflect the latest information maintained within the underlying database objects.
- Financial Transactions shall be displayed in ascending order of `transaction_date`.
- Where multiple Financial Transactions exist for the same `transaction_date`, they shall be displayed in ascending order of `transaction_id`.

#### Remarks

The Financial Transaction Details View serves as the consolidated presentation layer for Financial Transactions within the Personal Finance Management System (PFMS). By combining Financial Transactions with their corresponding business information, it provides a unified representation of the user's financial activities for Dashboard presentation, transaction history, Financial Reporting, reconciliation, auditing, and financial analysis without duplicating the underlying business data.


## Database Triggers

Database Triggers automate mandatory database operations required to preserve business integrity, financial consistency, historical consistency, data synchronization, and system-maintained information within the Personal Finance Management System (PFMS).

Database Triggers execute automatically in response to applicable database events and are used only where mandatory Module Functional Business Rules require automatic processing that cannot be reliably enforced through database constraints or application logic alone.

Within PFMS, Database Triggers are primarily responsible for maintaining system-managed values, enforcing business rules, preserving financial integrity, recalculating historical information where applicable, and ensuring consistent data throughout the application.

The following mandatory Database Triggers are maintained within the Personal Finance Management System (PFMS).

| S.No | Trigger Name | Description |
|------|--------------|-------------|
| 1 | Financial Transaction Balance Trigger | Automatically recalculates and maintains the Current Balance of the corresponding Account whenever a FinancialTransaction is created, modified, or deleted, including historical Financial Transaction processing. |
| 2 | Budget Period Assignment Trigger | Automatically determines and maintains the applicable Budget Month and Budget Year for every FinancialTransaction according to the Salary Boundary business rules. |
| 3 | Reserve Generation Trigger | Automatically determines and maintains Reserve Generation lifecycle information according to the Reserve Management business rules. |
| 4 | Hard Cash Balance Trigger | Automatically recalculates and maintains the Current Balance of the Physical Cash Account whenever a HardCashWallet record is created, modified, or deleted. |

The following sections define each Database Trigger in detail, including its business purpose, triggering events, processing logic, affected database objects, business rules, and implementation standards.


### Financial Transaction Balance Trigger

The **Financial Transaction Balance Trigger** automatically maintains the Current Balance of the corresponding Account for every FinancialTransaction recorded within the Personal Finance Management System (PFMS).

The trigger recalculates the running Account Balance whenever a FinancialTransaction is created, modified, or deleted. It preserves financial integrity by ensuring that the Current Balance maintained for every FinancialTransaction accurately reflects the Account Balance immediately after completion of that FinancialTransaction.

The Financial Transaction Balance Trigger serves as the primary mechanism for maintaining Account Balances throughout PFMS.

#### Trigger Events

- INSERT
- UPDATE
- DELETE

#### Affected Tables

- FinancialTransaction

#### Processing Logic

1. Detect the affected FinancialTransaction.
2. Identify the corresponding Account.
3. Recalculate the running Account Balance beginning with the affected FinancialTransaction.
4. Update the Current Balance for the affected and all subsequent FinancialTransaction records of the same Account.
5. Complete processing.

#### Business Rules

- The trigger shall execute automatically after every INSERT, UPDATE, and DELETE operation.
- The trigger shall maintain the Current Balance for every FinancialTransaction.
- Historical FinancialTransaction modifications shall trigger Account Balance recalculation where applicable.
- The trigger shall preserve Account Balance integrity.
- The trigger shall execute within the same database transaction.

#### Remarks

The Financial Transaction Balance Trigger ensures that the Current Balance maintained for every FinancialTransaction always remains accurate and consistent regardless of historical modifications or future FinancialTransaction activity. It preserves complete financial integrity while supporting historical financial recalculation throughout PFMS.



### Budget Period Assignment Trigger

The **Budget Period Assignment Trigger** automatically determines and maintains the applicable Budget Month and Budget Year for every FinancialTransaction recorded within the Personal Finance Management System (PFMS).

The trigger evaluates every FinancialTransaction according to the Salary Boundary business rules and automatically assigns the appropriate Budget Month and Budget Year. It preserves Budget integrity by ensuring that every FinancialTransaction belongs to the correct Budget Period irrespective of the transaction entry sequence or historical modifications.

The Budget Period Assignment Trigger serves as the primary mechanism for maintaining Budget Period consistency throughout PFMS.

#### Trigger Events

- INSERT
- UPDATE
- DELETE

#### Affected Tables

- FinancialTransaction

#### Processing Logic

1. Detect the affected FinancialTransaction.
2. Identify the applicable Salary Boundary.
3. Determine the appropriate Budget Month and Budget Year.
4. Recalculate the Budget Period for the affected FinancialTransaction and all subsequent FinancialTransactions where applicable.
5. Update the affected FinancialTransaction records.
6. Complete processing.

#### Business Rules

- The trigger shall execute automatically after every INSERT, UPDATE, and DELETE operation.
- The trigger shall determine the applicable Budget Month and Budget Year according to the Salary Boundary business rules.
- Historical FinancialTransaction modifications shall trigger Budget Period recalculation where applicable.
- Salary Boundary corrections shall be processed according to the applicable Module Functional Business Rules.
- The trigger shall preserve Budget Period integrity.
- The trigger shall execute within the same database transaction.

#### Remarks

The Budget Period Assignment Trigger ensures that every FinancialTransaction always belongs to the correct Budget Period, thereby preserving Budget integrity, Salary Boundary consistency, historical financial consistency, and accurate Financial Reporting throughout PFMS.


### Reserve Generation Trigger

The **Reserve Generation Trigger** automatically determines and maintains the lifecycle information of Reserve Generations within the Personal Finance Management System (PFMS).

The trigger evaluates Reserve Management activities according to the applicable Module Functional Business Rules and automatically maintains the logical Reserve Generation information. It preserves Reserve Generation integrity by ensuring that Emergency Fund accumulation and utilization activities are correctly grouped throughout their lifecycle.

The Reserve Generation Trigger serves as the primary mechanism for maintaining Reserve Generation consistency throughout PFMS.

#### Trigger Events

- INSERT
- UPDATE
- DELETE

#### Affected Tables

- Reserve
- FinancialTransaction

#### Processing Logic

1. Detect the affected FinancialTransaction associated with Reserve Management.
2. Determine whether the FinancialTransaction represents a qualifying Emergency Fund accumulation activity.
3. If no active Reserve Generation exists, create a new Reserve Generation.
4. If an active Reserve Generation exists, determine whether the FinancialTransaction belongs to the active Reserve Generation or initiates a subsequent Reserve Generation.
5. Automatically close the previously active Reserve Generation where applicable.
6. Maintain the Reserve Generation lifecycle information.
7. Complete processing.

#### Business Rules

- The trigger shall execute automatically after every INSERT, UPDATE, and DELETE operation affecting Reserve Management activities.
- The first qualifying Emergency Fund transfer from the designated Primary Account to the designated Secondary Account shall initiate a new Reserve Generation.
- Consecutive Emergency Fund accumulation and utilization activities shall belong to the active Reserve Generation until another qualifying Emergency Fund accumulation initiates the next Reserve Generation.
- Initiation of a subsequent Reserve Generation shall automatically close the previously active Reserve Generation.
- At most one Reserve Generation shall remain active at any given time.
- Historical FinancialTransaction modifications shall trigger Reserve Generation recalculation where applicable.
- The trigger shall preserve Reserve Generation integrity.
- The trigger shall execute within the same database transaction.

#### Remarks

The Reserve Generation Trigger automatically maintains the logical lifecycle of Reserve Generations without duplicating financial information. By grouping Emergency Fund accumulation and utilization activities according to the applicable Module Functional Business Rules, the trigger preserves Reserve planning integrity, historical consistency, and long-term analytical capability while maintaining the FinancialTransaction table as the single financial source of truth within PFMS.


### Hard Cash Balance Trigger

The **Hard Cash Balance Trigger** automatically maintains the Current Balance of the Physical Cash Account for every HardCashWallet record maintained within the Personal Finance Management System (PFMS).

The trigger recalculates the running Physical Cash Balance whenever a HardCashWallet record is created, modified, or deleted. It preserves Physical Cash integrity by ensuring that the Current Balance accurately reflects the available Physical Cash immediately after completion of each HardCashWallet record.

The Hard Cash Balance Trigger serves as the primary mechanism for maintaining Physical Cash Balance consistency throughout PFMS.

#### Trigger Events

- INSERT
- UPDATE
- DELETE

#### Affected Tables

- HardCashWallet

#### Processing Logic

1. Detect the affected HardCashWallet record.
2. Identify the Physical Cash Account associated with the record.
3. Recalculate the running Physical Cash Balance beginning with the affected HardCashWallet record.
4. Update the Current Balance for the affected and all subsequent HardCashWallet records.
5. Complete processing.

#### Business Rules

- The trigger shall execute automatically after every INSERT, UPDATE, and DELETE operation.
- The trigger shall maintain the Current Balance for every HardCashWallet record.
- Historical HardCashWallet modifications shall trigger Physical Cash Balance recalculation where applicable.
- The trigger shall preserve Physical Cash Balance integrity.
- The trigger shall execute within the same database transaction.

#### Remarks

The Hard Cash Balance Trigger ensures that the Current Balance maintained for every HardCashWallet record always remains accurate and consistent regardless of historical modifications or future Physical Cash activities. It preserves Physical Cash integrity while supporting historical financial recalculation and synchronized financial reporting throughout PFMS.


## Database Indexes

Database Indexes improve the performance of data retrieval operations within the Personal Finance Management System (PFMS).

Database Indexes enable efficient searching, filtering, sorting, joining, Financial Reporting, Dashboard presentation, and analytical processing while preserving the integrity of the underlying business data.

Indexes shall be created only where necessary to support business operations, reporting requirements, and application performance. Database Indexes shall not alter business logic, maintain independent business information, or replace database constraints.

The following mandatory Database Indexes are maintained within the Personal Finance Management System (PFMS).

| S.No | Index Name | Description |
|------|------------|-------------|
| 1 | Primary Key Indexes | Automatically created for every Primary Key to ensure efficient record identification and retrieval. |
| 2 | Foreign Key Indexes | Created on Foreign Key columns to improve join performance and referential integrity operations. |
| 3 | Financial Transaction Indexes | Created on frequently searched FinancialTransaction columns, including Transaction Date, Budget Period, Account, Category, SubCategory, and Merchant, to improve Financial Transaction retrieval, reporting, and analytical performance. |
| 4 | Operational Activity Indexes | Created on frequently searched Operational Activity Log columns to improve operational reporting, historical data retrieval, and analytical processing. |
| 5 | Financial Planning Indexes | Created on frequently searched Financial Planning Table columns to improve monitoring, reporting, dashboard presentation, and analytical processing. |

The following sections define each Database Index in detail, including its purpose, indexed columns, affected database objects, and implementation standards.


## Database Integrity

The Personal Finance Management System (PFMS) maintains database integrity through a combination of database constraints, referential relationships, automated processing, database views, database indexes, and Module Functional Business Rule enforcement.

Database integrity ensures that all financial and operational information remains accurate, consistent, reliable, traceable, and historically correct throughout the lifecycle of the application.

The following integrity mechanisms are maintained within the Personal Finance Management System (PFMS).

| S.No | Integrity Mechanism | Description |
|------|---------------------|-------------|
| 1 | Primary Keys | Ensure the unique identification of every business record. |
| 2 | Foreign Keys | Maintain referential integrity between related database tables. |
| 3 | NOT NULL Constraints | Ensure mandatory business information is always available before business processing. |
| 4 | UNIQUE Constraints | Prevent duplicate business records where uniqueness is required. |
| 5 | CHECK Constraints | Enforce supported business values and valid data ranges. |
| 6 | Database Triggers | Automatically maintain system-managed information, Account Balances, Budget Periods, Reserve Generation lifecycle information, and other mandatory business processing. |
| 7 | Database Views | Present consolidated business information without duplicating the underlying business data. |
| 8 | Database Indexes | Improve database retrieval performance while preserving business data integrity. |

The above integrity mechanisms collectively preserve Financial Integrity, Budget Integrity, Reserve Generation Integrity, Salary Boundary Integrity, Referential Integrity, Historical Consistency, Data Consistency, and overall Business Integrity throughout the Personal Finance Management System (PFMS).


## Database Design Summary

### Overview

The Personal Finance Management System (PFMS) database has been designed to provide a structured, normalized, scalable, maintainable, and business-oriented foundation for managing personal financial information.

The database architecture clearly separates Financial Information from Operational Information while preserving complete historical data and maintaining the FinancialTransaction table as the single financial source of truth within PFMS.

The database emphasizes business-driven design, data integrity, historical consistency, reporting capability, analytical processing, performance, scalability, extensibility, and long-term maintainability while minimizing data redundancy through database normalization.

---

### Database Design Principles

The PFMS database has been designed based on the following principles:

- Business-Oriented Database Design
- Single Financial Source of Truth
- Separation of Financial and Operational Information
- Historical Data Preservation
- Financial Integrity and Consistency
- Database Normalization
- Referential Integrity
- Modular Business Architecture
- Scalability and Extensibility
- Performance-Oriented Data Retrieval
- Reporting and Analytical Support

---

### Database Structure

The PFMS database consists of the following major components:

#### Master Tables

Master Tables maintain reusable business reference information shared across multiple business modules within PFMS.

#### Financial Planning Tables

Financial Planning Tables maintain budgeting, insurance, investment, loan, and utility management information required for financial planning and long-term financial management.

#### Reserve Planning Tables

Reserve Planning Tables maintain the logical lifecycle information of Reserve Generations used for Emergency Fund planning and historical Reserve analysis.

#### Operational Activity Log Tables

Operational Activity Log Tables maintain operational information and historical records generated through day-to-day activities while synchronizing financial impacts through the FinancialTransaction table where applicable.

#### Core Transaction Tables

Core Transaction Tables maintain the complete financial history of PFMS and serve as the centralized financial repository for all Financial Transactions and Physical Cash activities.

#### Database Views

Database Views provide consolidated, business-oriented reporting, dashboard presentation, monitoring, reconciliation, and analytical information without duplicating the underlying business data.

#### Database Triggers

Database Triggers automatically maintain Account Balances, Budget Period assignments, Reserve Generation lifecycle information, Physical Cash Balances, and other system-managed business information required to preserve database integrity.

#### Database Indexes

Database Indexes improve query performance for frequently searched, filtered, sorted, joined, and reported business information while preserving database integrity.

---

### Database Integrity

The PFMS database preserves database integrity through:

- Primary Keys
- Foreign Keys
- NOT NULL Constraints
- UNIQUE Constraints
- CHECK Constraints
- Database Views
- Database Triggers
- Database Indexes
- Module Functional Business Rule Enforcement

These mechanisms collectively preserve Financial Integrity, Referential Integrity, Budget Integrity, Salary Boundary Integrity, Reserve Generation Integrity, Historical Consistency, Data Consistency, and overall Business Integrity throughout PFMS.

---

### Conclusion

The Personal Finance Management System (PFMS) database provides a normalized, scalable, maintainable, extensible, and business-oriented logical database design capable of supporting Financial Transaction processing, Budget Management, Reserve Planning, Operational Activity Management, Financial Planning, reporting, analytical processing, and future business expansion while preserving complete financial integrity, historical consistency, and long-term maintainability.

The database design establishes a clear separation between Financial Information and Operational Information while ensuring that all financial impacts are represented through the FinancialTransaction table, which serves as the single financial source of truth within the Personal Finance Management System (PFMS).