# Document Information

| Attribute           | Details                                   |
| ------------------- | ----------------------------------------- |
| **Project Name**    | Personal Finance Management System (PFMS) |
| **Document Name**   | Business Requirements Specification (BRS) |
| **Document ID**     | PFMS-BRS-001                              |
| **Version**         | 1.0                                       |
| **Document Status** | Final                                     |
| **Prepared By**     | SaiAnjaneyaVinayKumar Parnandi            |
| **Reviewed By**     | SaiAnjaneyaVinayKumar Parnandi                |
| **Approved By**     | SaiAnjaneyaVinayKumar Parnandi             |
| **Creation Date**   | 29-Jul-2026   |
| **Last Updated**    | 04-Aug-2026   |

---

## Version History

| Version | Date                | Author                         | Description                                                                                                            |
| ------- | ------------------- | ------------------------------ | ---------------------------------------------------------------------------------------------------------------------- |
| 1.0     | 04-Aug-2026 | SaiAnjaneyaVinayKumar Parnandi | Initial baseline release of the Business Requirements Specification for the Personal Finance Management System (PFMS). |





## Purpose

The purpose of this Business Requirements Specification (BRS) is to define the complete business requirements for the **Personal Finance Management System (PFMS)**.

This document serves as the primary business reference for designing, developing, testing, deploying, and maintaining the application by documenting the business objectives, functional requirements, non-functional requirements, business rules, and operational expectations of the system.

The Business Requirements Specification (BRS) is the authoritative business document and the single business source of truth for the Personal Finance Management System (PFMS). It provides complete traceability from business requirements through database design, system architecture, application development, testing, deployment, and future system enhancements.

This document also serves as the foundation for the following project deliverables:

* Database Design
* Data Dictionary
* System Architecture
* API Specifications
* User Interface Design
* Application Development
* Test Planning and Validation
* System Integration
* Deployment Planning
* Future System Enhancements

The Business Requirements Specification is the authoritative business document for the Personal Finance Management System (PFMS) and provides complete traceability from business requirements through system implementation.


## Business Overview

The **Personal Finance Management System (PFMS)** is a comprehensive personal finance application designed to help users efficiently manage their day-to-day financial activities through a centralized, structured, and business-oriented platform.

The system enables users to record, monitor, and analyze financial transactions while supporting budgeting, reserve planning, operational activity management, and financial management. It consolidates financial information from multiple business domains into a single financial ecosystem, providing complete visibility into personal financial health.

PFMS is designed around the principle of maintaining the **financal transaction** module as the centralized financial ledger and the single financial source of truth. Operational activities and financial management modules maintain their respective business information while the corresponding financial impact is recorded through the Transaction module.

The system provides integrated support for:

* Budget Planning and Monitoring
* Reserve Planning and Management
* Financial Transaction Management
* Operational Activity Management
* Insurance Management
* Investment Management
* Loan Management
* Utility Management
* Hard Cash Management
* Financial Reporting and Analytics

The system preserves complete historical information, maintains financial integrity through business-driven processing, and provides a scalable foundation for future enhancements while minimizing data redundancy through a normalized database design.

PFMS is intended to simplify personal financial management by improving financial visibility, supporting informed decision-making, and enabling effective financial planning through accurate, reliable, and consolidated business information.



## Business Goals

The Personal Finance Management System (PFMS) has been designed to achieve the following business goals:

* Centralize all personal financial information within a single integrated system.
* Maintain the Financial Transaction module as the centralized financial ledger and the single financial source of truth.
* Simplify the recording and management of day-to-day financial transactions.
* Support effective Budget Planning and expenditure monitoring.
* Enable efficient Reserve Planning and reserve utilization management.
* Maintain accurate operational activity records and their corresponding financial impact.
* Support comprehensive Financial Management, including Insurance, Investment, Loan, and Utility management.
* Provide complete historical financial information for analysis and decision-making.
* Improve financial visibility through consolidated reporting and analytical capabilities.
* Preserve financial integrity through standardized business rules and automated processing.
* Minimize data redundancy through a normalized database design.
* Provide a scalable and maintainable foundation for future system enhancements.
* Support informed financial decision-making through accurate, reliable, and business-oriented information.
* Establish a consistent business framework for future application development, integration, and reporting.


## System Modules

The Personal Finance Management System (PFMS) consists of the following business modules.

### Master Tables

The Master Tables maintain reusable business reference information used throughout the Personal Finance Management System (PFMS).

* Account
* Category
* SubCategory
* PaymentMode
* Merchant

---

### Financial Planning Tables

The Financial Planning Tables maintain budgeting and long-term financial planning information.

* Budget
* Insurance
* Investment
* Loan
* Utility

---

### Reserve Management Tables

The Reserve Management Tables maintain reserve planning, reserve cycles, reserve balances, and reserve transaction history.

* Reserve

---

### Operational Activity Log Tables

The Operational Activity Log Tables maintain historical records of recurring day-to-day operational activities.

* MilkPurchaseLog
* GasCylinderLog
* BikeFuelLog
* EngineOilLog
* BikeMaintenanceLog

---

### Core Financial Transaction Tables

The Core Financial Transaction Tables maintain the complete financial impact of all business operations and serve as the centralized financial ledger of the Personal Finance Management System (PFMS).

* Financial Transaction
* HardCashWallet


## Business Domains

The Personal Finance Management System (PFMS) is organized into multiple **Business Domains**. A Business Domain represents a major business capability within the application. Each Business Domain consists of one or more related business functions that collectively support a specific area of personal financial management.

Organizing PFMS into Business Domains promotes modularity, maintainability, scalability, clear separation of business responsibilities, and future extensibility while ensuring alignment with the approved Business Requirements Specification (BRS).

The following Business Domains are included in Version 1.0 of PFMS.

---

### Financial Planning

The Financial Planning domain enables users to plan, organize, and monitor their short-term and long-term financial commitments.

**Business Functions**

* Budget Planning
* Insurance Management
* Investment Management
* Loan Management
* Utility Management

---

### Reserve Management

The Reserve Management domain enables users to build, maintain, monitor, and utilize reserve funds for planned and unforeseen financial requirements.

**Business Functions**

* Reserve Planning
* Reserve Contributions
* Reserve Withdrawals
* Reserve Cycle Management
* Reserve Balance Monitoring

---

### Financial Transaction Management

The Financial Transaction Management domain maintains the complete financial history of all business activities performed within PFMS. It serves as the centralized financial ledger and the single financial source of truth for the application.

**Business Functions**

* Financial Transaction Recording
* Account Balance Management
* Budget Period Management
* Transaction History
* Financial Monitoring

---

### Master Data Management

The Master Data Management domain maintains reusable reference information shared across multiple business domains.

**Business Functions**

* Account Management
* Category Management
* SubCategory Management
* Payment Mode Management
* Merchant Management

---

### Operational Activity Management

The Operational Activity Management domain maintains day-to-day operational activities and their corresponding financial impact.

**Business Functions**

* Milk Purchase Management
* Gas Cylinder Management
* Bike Fuel Management
* Engine Oil Management
* Bike Maintenance Management
* Hard Cash Management

---

### Reporting & Analytics

The Reporting & Analytics domain provides consolidated business reporting, dashboards, financial analysis, and operational insights to support informed decision-making.

**Business Functions**

* Transaction Reporting
* Budget Analysis
* Reserve Analysis
* Operational Activity Reporting
* Financial Dashboards

---

### Artificial Intelligence (Future)

The Artificial Intelligence domain represents future business capabilities that leverage historical financial and operational information to provide intelligent recommendations and predictive insights.

**Potential Business Functions**

* Spending Pattern Analysis
* Budget Recommendations
* Financial Forecasting
* Anomaly Detection
* Intelligent Financial Insights


## Business Scope

The Personal Finance Management System (PFMS) Version 1.0 is designed to provide a comprehensive solution for managing personal financial activities through a centralized, structured, and business-oriented platform.

### In Scope

The following business capabilities are included in Version 1.0:

* Master Data Management
* Budget Planning and Monitoring
* Reserve Planning and Management
* Financial Transaction Management
* Hard Cash Management
* Milk Purchase Management
* Gas Cylinder Management
* Bike Fuel Management
* Engine Oil Management
* Bike Maintenance Management
* Insurance Management
* Investment Management
* Loan Management
* Utility Management
* Financial Reporting and Analytics

### Out of Scope

The following capabilities are not included in Version 1.0 and may be considered for future releases:

* Multi-user support
* User authentication and role-based access control
* Bank account integration
* Automatic transaction synchronization
* SMS or email notifications
* Mobile application support
* Cloud synchronization
* AI-driven financial recommendations
* Predictive financial analytics
* Third-party payment gateway integration

The defined scope establishes the functional boundary of PFMS Version 1.0 and serves as the baseline for design, development, testing, and future enhancements.



## Business Hierarchy

Every business requirement within the Personal Finance Management System (PFMS) follows the hierarchical structure shown below. This hierarchy establishes complete traceability from high-level business objectives to the final system implementation.

```text
Business Domain
        │
        ▼
Business Module
        │
        ▼
Business Feature
        │
        ▼
Business Process
        │
        ▼
Business Rule
        │
        ▼
Functional Requirement
        │
        ▼
Business Requirements Specification (BRS)
        │
        ▼
Database Design
        │
        ▼
Data Dictionary
        │
        ▼
System Architecture
        │
        ▼
API Specifications
        │
        ▼
Application Development
        │
        ▼
Testing & Validation
        │
        ▼
Deployment
```

This hierarchy serves as the foundation for all project deliverables and ensures complete traceability from business requirements through database design, application development, testing, deployment, and future system enhancements.



## Requirement Identification Standard

To ensure consistency and traceability throughout the Personal Finance Management System (PFMS), every Functional Requirement shall be assigned a unique Requirement Identifier (Requirement ID).

The Requirement ID shall follow the format:

```text
FR-<Domain Code>-<Sequence Number>
```

Where:

* **FR** represents **Functional Requirement**.
* **Domain Code** identifies the corresponding Business Domain.
* **Sequence Number** is a unique three-digit number assigned within the respective Business Domain.

---

### Business Domain Codes

| Business Domain                  | Domain Code | Example Requirement ID |
| -------------------------------- | ----------- | ---------------------- |
| Financial Planning               | FPL         | FR-FPL-001             |
| Reserve Management               | RES         | FR-RES-001             |
| Financial Transaction Management | FTM         | FR-FTM-001             |
| Master Data Management           | MDM         | FR-MDM-001             |
| Operational Activity Management  | OAM         | FR-OAM-001             |
| Reporting & Analytics            | RPT         | FR-RPT-001             |
| Artificial Intelligence (Future) | AI          | FR-AI-001              |

---

These Requirement IDs provide complete traceability between business requirements, database design, data dictionary, system architecture, API specifications, application development, testing, deployment, and future enhancements.


## Functional Requirements

The Functional Requirements define the business capabilities provided by the Personal Finance Management System (PFMS) to support personal financial management.

Each Functional Requirement is uniquely identified using the Requirement Identification Standard defined in this document. Every Functional Requirement belongs to a specific Business Domain, Business Module, and Business Feature, providing complete traceability from business requirements through database design, application development, testing, deployment, and future enhancements.

The Functional Requirements describe the business capabilities and business processes of PFMS. They do not describe generic Create, Read, Update, or Delete (CRUD) operations. Database operations are implementation details and are outside the scope of this Business Requirements Specification.

Unless otherwise specified, every Functional Requirement shall comply with all applicable Business Rules, General Rules, Global Business Rules, Financial Business Rules, Module-Specific Business Rules, and Non-Functional Requirements defined in this document.

The Functional Requirements are organized according to the Business Domains established in this specification.

## Master Data Management

The Master Data Management domain defines the business capabilities required to maintain and manage the foundational reference information used throughout the Personal Finance Management System (PFMS).

The master data maintained within this domain serves as the foundation for financial planning, operational activities, financial transactions, reporting, and other business processes by providing standardized and reusable reference information across the application.

The Functional Requirements under this Business Domain are organized into the following Business Modules:

* Account Management
* Category Management
* SubCategory Management
* Payment Mode Management
* Merchant Management


### Account Management

The Account Management module enables users to maintain financial accounts within the Personal Finance Management System (PFMS).

The module supports recording and maintaining financial account information used to perform and classify financial transactions throughout the application. Every financial transaction recorded within PFMS shall be associated with a valid financial account.

The following Functional Requirements define the complete business capabilities provided by the Account Management module.

---

#### FR-MDM-001 – Account Management

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Account Management

---

**Business Feature**

Account Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain financial account information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining financial accounts used throughout the Personal Finance Management System (PFMS). Financial accounts provide the source or destination for financial transactions and support financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Inputs**

The following business information shall be captured while maintaining an account.

| Field          | Mandatory | Description                                                                                        |
| -------------- | --------- | -------------------------------------------------------------------------------------------------- |
| Account Name   | Yes       | Name of the financial account.                                                                     |
| Account Type   | Yes       | Type of financial account (e.g., Cash, Bank Account, Credit Card, Debit Card, Wallet, UPI, Other). |
| Account Status | Yes       | Current status of the financial account (e.g., Active or Inactive).                                |
| Remarks        | No        | Additional business information or supporting remarks, where applicable.                           |

---

**Preconditions**

* Account Name has been provided.
* Account Type has been specified.
* Account Status has been specified.
* Account Name is unique.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.

---

**Processing Logic**

1. Accept the account information.
2. Validate all mandatory information.
3. Validate the uniqueness of the Account Name.
4. Apply all applicable Business Rules.
5. Record a new account or update the existing account information in accordance with the applicable Business Rules.
6. Make the account available for all applicable business modules.

---

**Postconditions**

* Account information is successfully maintained.
* The latest account information is available for Financial Planning, Operational Activity Management, Financial Transaction Management, Reporting & Analytics, and Reserve Management.

---

**Expected Outcome**

The user shall be able to maintain financial accounts used throughout the Personal Finance Management System (PFMS) to support financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Mandatory account information is missing.
* Duplicate Account Name.
* Invalid Account Type.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-MDM-002 – Account Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Account Management

---

**Business Feature**

Account Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view financial account information within the Personal Finance Management System (PFMS).

Account Inquiry provides read-only access to financial account information and serves as a reference for financial planning, operational activities, financial transaction management, reporting, and reserve management without modifying the underlying account records.

---

**Inputs**

The following business information shall be used while retrieving account information.

| Field          | Mandatory | Description                                   |
| -------------- | --------- | --------------------------------------------- |
| Account Name   | No        | Retrieves a specific financial account.       |
| Account Type   | No        | Filters financial accounts by Account Type.   |
| Account Status | No        | Filters financial accounts by Account Status. |

---

**Preconditions**

* At least one financial account exists.
* Account information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.

---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the account information.
4. Apply the selected filters.
5. Display the account information in read-only mode.

---

**Account Information**

The system shall display the following information.

| Information    | Description                                       |
| -------------- | ------------------------------------------------- |
| Account Name   | Name of the financial account.                    |
| Account Type   | Type of financial account.                        |
| Account Status | Current status of the financial account.          |
| Remarks        | Additional business information, where available. |

---

**Postconditions**

* Account information is successfully retrieved.
* Account information is displayed in read-only mode.
* No modifications are made to the account information.

---

**Expected Outcome**

The user shall be able to retrieve and review financial account information for reference across financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Account information is unavailable.
* No account matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Category Management

The Category Management module enables users to maintain financial categories within the Personal Finance Management System (PFMS).

The module supports recording and maintaining financial categories used to classify financial planning, operational activities, financial transactions, reporting, and reserve management. Every financial transaction recorded within PFMS shall be associated with a valid financial category.

The following Functional Requirements define the complete business capabilities provided by the Category Management module.

---

#### FR-MDM-003 – Category Management

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Category Management

---

**Business Feature**

Category Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain financial category information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining financial categories used throughout the Personal Finance Management System (PFMS). Financial categories provide the primary business classification for financial planning, operational activities, financial transactions, reporting, and reserve management.

---

**Inputs**

The following business information shall be captured while maintaining a category.

| Field           | Mandatory | Description                                                              |
| --------------- | --------- | ------------------------------------------------------------------------ |
| Category Name   | Yes       | Name of the financial category.                                          |
| Category Status | Yes       | Current status of the financial category (e.g., Active or Inactive).     |
| Remarks         | No        | Additional business information or supporting remarks, where applicable. |

---

**Preconditions**

* Category Name has been provided.
* Category Status has been specified.
* Category Name is unique.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the category information.
2. Validate all mandatory information.
3. Validate the uniqueness of the Category Name.
4. Apply all applicable Business Rules.
5. Record a new category or update the existing category information in accordance with the applicable Business Rules.
6. Make the category available for all applicable business domains.

---

**Postconditions**

* Category information is successfully maintained.
* The latest category information is available for Financial Planning, Operational Activity Management, Financial Transaction Management, Reporting & Analytics, and Reserve Management.

---

**Expected Outcome**

The user shall be able to maintain financial categories used throughout the Personal Finance Management System (PFMS) to classify financial planning, operational activities, financial transactions, reporting, and reserve management.

---

**Exceptions**

* Mandatory category information is missing.
* Duplicate Category Name.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-MDM-004 – Category Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Category Management

---

**Business Feature**

Category Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view financial category information within the Personal Finance Management System (PFMS).

Category Inquiry provides read-only access to financial category information and serves as a reference for financial planning, operational activities, financial transaction management, reporting, and reserve management without modifying the underlying category records.

---

**Inputs**

The following business information shall be used while retrieving category information.

| Field           | Mandatory | Description                                      |
| --------------- | --------- | ------------------------------------------------ |
| Category Name   | No        | Retrieves a specific financial category.         |
| Category Status | No        | Filters financial categories by Category Status. |

---

**Preconditions**

* At least one financial category exists.
* Category information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the category information.
4. Apply the selected filters.
5. Display the category information in read-only mode.

---

**Category Information**

The system shall display the following information.

| Information     | Description                                       |
| --------------- | ------------------------------------------------- |
| Category Name   | Name of the financial category.                   |
| Category Status | Current status of the financial category.         |
| Remarks         | Additional business information, where available. |

---

**Postconditions**

* Category information is successfully retrieved.
* Category information is displayed in read-only mode.
* No modifications are made to the category information.

---

**Expected Outcome**

The user shall be able to retrieve and review financial category information for reference across financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Category information is unavailable.
* No category matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### SubCategory Management

The SubCategory Management module enables users to maintain financial subcategories within the Personal Finance Management System (PFMS).

The module supports recording and maintaining financial subcategories used to provide detailed classification for financial planning, operational activities, financial transactions, reporting, and reserve management. Every financial subcategory shall be associated with a valid financial category.

The following Functional Requirements define the complete business capabilities provided by the SubCategory Management module.

---

#### FR-MDM-005 – SubCategory Management

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

SubCategory Management

---

**Business Feature**

SubCategory Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain financial subcategory information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining financial subcategories used throughout the Personal Finance Management System (PFMS). Financial subcategories provide detailed business classification within a financial category and support financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Inputs**

The following business information shall be captured while maintaining a subcategory.

| Field              | Mandatory | Description                                                              |
| ------------------ | --------- | ------------------------------------------------------------------------ |
| Category           | Yes       | Financial category to which the subcategory belongs.                     |
| SubCategory Name   | Yes       | Name of the financial subcategory.                                       |
| SubCategory Status | Yes       | Current status of the financial subcategory (e.g., Active or Inactive).  |
| Remarks            | No        | Additional business information or supporting remarks, where applicable. |

---

**Preconditions**

* A valid Category exists.
* Category has been specified.
* SubCategory Name has been provided.
* SubCategory Status has been specified.
* SubCategory Name is unique within the selected Category.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.


---

**Processing Logic**

1. Accept the subcategory information.
2. Validate all mandatory information.
3. Validate that the selected Category exists.
4. Validate the uniqueness of the SubCategory Name within the selected Category.
5. Apply all applicable Business Rules.
6. Record a new subcategory or update the existing subcategory information in accordance with the applicable Business Rules.
7. Make the subcategory available for all applicable business domains.

---

**Postconditions**

* SubCategory information is successfully maintained.
* The latest SubCategory information is available for Financial Planning, Operational Activity Management, Financial Transaction Management, Reporting & Analytics, and Reserve Management.

---

**Expected Outcome**

The user shall be able to maintain financial subcategories used throughout the Personal Finance Management System (PFMS) to provide detailed business classification for financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Mandatory subcategory information is missing.
* Selected Category does not exist.
* Duplicate SubCategory Name within the selected Category.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.



#### FR-MDM-006 – SubCategory Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

SubCategory Management

---

**Business Feature**

SubCategory Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view financial subcategory information within the Personal Finance Management System (PFMS).

SubCategory Inquiry provides read-only access to financial subcategory information and serves as a reference for financial planning, operational activities, financial transaction management, reporting, and reserve management without modifying the underlying subcategory records.

---

**Inputs**

The following business information shall be used while retrieving subcategory information.

| Field              | Mandatory | Description                                            |
| ------------------ | --------- | ------------------------------------------------------ |
| Category           | No        | Filters subcategories by Category.                     |
| SubCategory Name   | No        | Retrieves a specific financial subcategory.            |
| SubCategory Status | No        | Filters financial subcategories by SubCategory Status. |

---

**Preconditions**

* At least one financial category exists.
* At least one financial subcategory exists.
* SubCategory information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the subcategory information.
4. Apply the selected filters.
5. Display the subcategory information in read-only mode.

---

**SubCategory Information**

The system shall display the following information.

| Information        | Description                                       |
| ------------------ | ------------------------------------------------- |
| Category           | Parent financial category.                        |
| SubCategory Name   | Name of the financial subcategory.                |
| SubCategory Status | Current status of the financial subcategory.      |
| Remarks            | Additional business information, where available. |

---

**Postconditions**

* SubCategory information is successfully retrieved.
* SubCategory information is displayed in read-only mode.
* No modifications are made to the subcategory information.

---

**Expected Outcome**

The user shall be able to retrieve and review financial subcategory information for reference across financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* SubCategory information is unavailable.
* No subcategory matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Payment Mode Management

The Payment Mode Management module enables users to maintain payment types within the Personal Finance Management System (PFMS).

The module supports recording and maintaining payment types used to identify the payment method associated with financial transactions throughout the application. Every financial transaction recorded within PFMS shall be associated with a valid payment type.

The following Functional Requirements define the complete business capabilities provided by the Payment Mode Management module.

---

#### FR-MDM-007 – Payment Mode Management

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Payment Mode Management

---

**Business Feature**

Payment Mode Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain payment type information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining payment types used throughout the Personal Finance Management System (PFMS). Payment types identify the payment method used for financial transactions and support financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Inputs**

The following business information shall be captured while maintaining a payment type.

| Field               | Mandatory | Description                                                              |
| ------------------- | --------- | ------------------------------------------------------------------------ |
| Payment Mode Name   | Yes       | Name of the payment type.                                                |
| Payment Mode Status | Yes       | Current status of the payment type (e.g., Active or Inactive).           |
| Remarks             | No        | Additional business information or supporting remarks, where applicable. |

---

**Preconditions**

* Payment Mode Name has been provided.
* Payment Mode Status has been specified.
* Payment Mode Name is unique.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the payment type information.
2. Validate all mandatory information.
3. Validate the uniqueness of the Payment Mode Name.
4. Apply all applicable Business Rules.
5. Record a new payment type or update the existing payment type information in accordance with the applicable Business Rules.
6. Make the payment type available for all applicable business domains.

---

**Postconditions**

* Payment type information is successfully maintained.
* The latest payment type information is available for Financial Planning, Operational Activity Management, Financial Transaction Management, Reporting & Analytics, and Reserve Management.

---

**Expected Outcome**

The user shall be able to maintain payment types used throughout the Personal Finance Management System (PFMS) to identify payment methods for financial transactions and support financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Mandatory payment type information is missing.
* Duplicate Payment Mode Name.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-MDM-008 – Payment Mode Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Payment Mode Management

---

**Business Feature**

Payment Mode Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view payment type information within the Personal Finance Management System (PFMS).

Payment Mode Inquiry provides read-only access to payment type information and serves as a reference for financial planning, operational activities, financial transaction management, reporting, and reserve management without modifying the underlying payment type records.

---

**Inputs**

The following business information shall be used while retrieving payment type information.

| Field               | Mandatory | Description                                   |
| ------------------- | --------- | --------------------------------------------- |
| Payment Mode Name   | No        | Retrieves a specific payment type.            |
| Payment Mode Status | No        | Filters payment types by Payment Mode Status. |

---

**Preconditions**

* At least one payment type exists.
* Payment type information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the payment type information.
4. Apply the selected filters.
5. Display the payment type information in read-only mode.

---

**Payment Type Information**

The system shall display the following information.

| Information         | Description                                       |
| ------------------- | ------------------------------------------------- |
| Payment Mode Name   | Name of the payment type.                         |
| Payment Mode Status | Current status of the payment type.               |
| Remarks             | Additional business information, where available. |

---

**Postconditions**

* Payment type information is successfully retrieved.
* Payment type information is displayed in read-only mode.
* No modifications are made to the payment type information.

---

**Expected Outcome**

The user shall be able to retrieve and review payment type information for reference across financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Payment type information is unavailable.
* No payment type matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Merchant Management

The Merchant Management module enables users to maintain merchant information within the Personal Finance Management System (PFMS).

The module supports recording and maintaining merchant information used to identify merchants, vendors, service providers, and business establishments associated with financial transactions throughout the application. Financial transactions may be associated with a merchant, where applicable.

The following Functional Requirements define the complete business capabilities provided by the Merchant Management module.

---

#### FR-MDM-009 – Merchant Management

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Merchant Management

---

**Business Feature**

Merchant Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain merchant information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining merchant information used throughout the Personal Finance Management System (PFMS). Merchant information identifies merchants, vendors, service providers, and business establishments associated with financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Inputs**

The following business information shall be captured while maintaining merchant information.

| Field           | Mandatory | Description                                                                |
| --------------- | --------- | -------------------------------------------------------------------------- |
| Merchant Name   | Yes       | Name of the merchant, vendor, service provider, or business establishment. |
| Merchant Status | Yes       | Current status of the merchant (e.g., Active or Inactive).                 |
| Remarks         | No        | Additional business information or supporting remarks, where applicable.   |

---

**Preconditions**

* Merchant Name has been provided.
* Merchant Status has been specified.
* Merchant Name is unique.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the merchant information.
2. Validate all mandatory information.
3. Validate the uniqueness of the Merchant Name.
4. Apply all applicable Business Rules.
5. Record a new merchant or update the existing merchant information in accordance with the applicable Business Rules.
6. Make the merchant available for all applicable business domains.

---

**Postconditions**

* Merchant information is successfully maintained.
* The latest merchant information is available for Financial Planning, Operational Activity Management, Financial Transaction Management, Reporting & Analytics, and Reserve Management.

---

**Expected Outcome**

The user shall be able to maintain merchant information used throughout the Personal Finance Management System (PFMS) to identify merchants associated with financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Mandatory merchant information is missing.
* Duplicate Merchant Name.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-MDM-010 – Merchant Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Master Data Management

---

**Business Module**

Merchant Management

---

**Business Feature**

Merchant Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view merchant information within the Personal Finance Management System (PFMS).

Merchant Inquiry provides read-only access to merchant information and serves as a reference for financial planning, operational activities, financial transaction management, reporting, and reserve management without modifying the underlying merchant records.

---

**Inputs**

The following business information shall be used while retrieving merchant information.

| Field           | Mandatory | Description                           |
| --------------- | --------- | ------------------------------------- |
| Merchant Name   | No        | Retrieves a specific merchant.        |
| Merchant Status | No        | Filters merchants by Merchant Status. |

---

**Preconditions**

* At least one merchant exists.
* Merchant information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Master Data Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the merchant information.
4. Apply the selected filters.
5. Display the merchant information in read-only mode.

---

**Merchant Information**

The system shall display the following information.

| Information     | Description                                                                |
| --------------- | -------------------------------------------------------------------------- |
| Merchant Name   | Name of the merchant, vendor, service provider, or business establishment. |
| Merchant Status | Current status of the merchant.                                            |
| Remarks         | Additional business information, where available.                          |

---

**Postconditions**

* Merchant information is successfully retrieved.
* Merchant information is displayed in read-only mode.
* No modifications are made to the merchant information.

---

**Expected Outcome**

The user shall be able to retrieve and review merchant information for reference across financial planning, operational activities, financial transaction management, reporting, and reserve management.

---

**Exceptions**

* Merchant information is unavailable.
* No merchant matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reporting & Analytics
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


## Financial Planning

The Financial Planning domain defines the business capabilities required to plan, organize, and manage the user's financial commitments within the Personal Finance Management System (PFMS).

The Functional Requirements under this Business Domain are organized into the following Business Modules:

* Budget Management
* Insurance Management
* Investment Management
* Loan Management
* Utility Management

### Budget Management

The Budget Management module enables users to plan, maintain, and monitor budget allocations for each Budget Period within the Personal Finance Management System (PFMS).

The module supports the creation and maintenance of budget allocations across Categories and SubCategories while providing visibility into planned budgets, actual spending, and budget variance based on financial transactions recorded within PFMS.

The following Functional Requirements define the complete business capabilities provided by the Budget Management module.


#### FR-FPL-001 – Budget Planning

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Budget Management

---

**Business Feature**

Budget Planning

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to prepare and maintain a Budget Plan for a Budget Period by defining planned budget allocations for Categories and SubCategories.

The Budget Planning process shall support financial planning by allowing users to allocate planned amounts for a Budget Period after the Salary Boundary has been established and before Budget Monitoring begins. Once a Budget Plan has been finalized for a Budget Period, it shall not be modified.

---

**Inputs**

The following business information shall be captured while preparing a Budget Plan.

| Field          | Mandatory | Description                                                                                                 |
| -------------- | --------- | ----------------------------------------------------------------------------------------------------------- |
| Budget Month   | Yes       | Budget Month for which the Budget Plan is being prepared.                                                   |
| Budget Year    | Yes       | Budget Year for which the Budget Plan is being prepared.                                                    |
| Category       | Yes       | Primary business classification for the planned budget allocation.                                          |
| SubCategory    | Yes       | Detailed business classification within the selected Category.                                              |
| Planned Amount | Yes       | Planned budget allocation for the selected Category and SubCategory. The amount shall be greater than zero. |
| Remarks        | No        | Additional business information or supporting justification, where applicable.                              |

---

**Preconditions**

* The selected Budget Period is valid.
* A Budget Plan does not already exist for the selected Budget Period.
* The selected Category exists and is active.
* The selected SubCategory exists and is active.
* All mandatory Budget Planning information has been provided.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the Budget Period.
2. Validate the Budget Period.
3. Verify that a Budget Plan does not already exist for the selected Budget Period.
4. Accept the planned budget information.
5. Validate all mandatory information.
6. Validate the selected Category and SubCategory.
7. Validate the Planned Amount.
8. Apply all applicable Business Rules.
9. Record the Budget Plan for the specified Budget Period.
10. Finalize the Budget Plan.
11. Make the Budget Plan available for Budget Monitoring and Reporting.

---

**Postconditions**

* The Budget Plan is successfully recorded.
* All applicable business validations are completed successfully.
* The Budget Plan is finalized for the selected Budget Period.
* The Budget Plan is available for Budget Monitoring and Reporting.
* Historical Budget Planning information is preserved.

---

**Expected Outcome**

The user shall be able to prepare and finalize a Budget Plan for the selected Budget Period while maintaining planning consistency and compliance with all applicable Business Rules. The finalized Budget Plan shall serve as the baseline for Budget Monitoring and Variance Analysis.

---

**Exceptions**

* Mandatory Budget Planning information is missing.
* Invalid Budget Period.
* A Budget Plan already exists for the selected Budget Period.
* Invalid Category selected.
* Invalid SubCategory selected.
* Invalid Planned Amount.
* Budget Planning is not permitted according to the applicable Business Rules.
* Unexpected system validation failure.

---

**Priority**

Critical

---

**Related Components**

**Business Modules**

* Category Management
* SubCategory Management
* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-002 – Budget Monitoring

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Budget Management

---

**Business Feature**

Budget Monitoring

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to monitor budget utilization for a selected Budget Period by comparing the planned budget allocations against the actual financial transactions recorded within PFMS.

Budget Monitoring shall provide visibility into planned budgets, actual spending, budget variance, and budget status for each Category and SubCategory, enabling users to identify overspending, monitor financial discipline, and make informed financial decisions.

---

**Inputs**

The following business information shall be used while monitoring the Budget.

| Field        | Mandatory | Description                                          |
| ------------ | --------- | ---------------------------------------------------- |
| Budget Month | Yes       | Budget Month to be monitored.                        |
| Budget Year  | Yes       | Budget Year to be monitored.                         |
| Category     | No        | Filters Budget Monitoring to a specific Category.    |
| SubCategory  | No        | Filters Budget Monitoring to a specific SubCategory. |

---

**Preconditions**

* A valid Budget Period is selected.
* Financial Transactions exist or a Budget Plan exists for the selected Budget Period.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected Budget Period.
2. Retrieve the Budget Plan for the selected Budget Period.
3. Retrieve the corresponding financial transactions.
4. Calculate the Actual Spending for each Category and SubCategory.
5. Calculate the Budget Variance.
6. Determine the Budget Status based on the applicable Business Rules.
7. Present the Budget Monitoring information to the user.

---

**Budget Monitoring Information**

The system shall display the following information for each Category and SubCategory.

| Information     | Description                                             |
| --------------- | ------------------------------------------------------- |
| Planned Budget  | Planned budget allocation.                              |
| Actual Spending | Total spending recorded through financial transactions. |
| Budget Variance | Difference between Planned Budget and Actual Spending.  |
| Budget Status   | Within Budget, Over Budget, or No Budget Planned.       |

---

**Budget Status**

The Budget Status shall be determined as follows:

| Condition                                     | Status            |
| --------------------------------------------- | ----------------- |
| Actual Spending ≤ Planned Budget              | Within Budget     |
| Actual Spending > Planned Budget              | Over Budget       |
| No Budget Plan exists and Actual Spending > 0 | No Budget Planned |

---

**Postconditions**

* Budget Monitoring information is successfully generated.
* Budget Variance is calculated.
* Budget Status is determined.
* The user is provided with the latest Budget Monitoring information.

---

**Expected Outcome**

The user shall be able to monitor budget utilization, identify overspending, recognize unplanned expenses, and make informed financial decisions based on the Budget Monitoring information.

---

**Exceptions**

* Invalid Budget Period.
* Budget information is unavailable.
* Financial Transaction information is unavailable.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-003 – Budget Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Budget Management

---

**Business Feature**

Budget Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view the Budget Plan for a selected Budget Period. Budget Inquiry provides read-only access to planned budget information and serves as a reference for financial planning without performing budget analysis or budget monitoring.

---

**Inputs**

The following business information shall be used while retrieving the Budget Plan.

| Field        | Mandatory | Description                                             |
| ------------ | --------- | ------------------------------------------------------- |
| Budget Month | Yes       | Budget Month for which the Budget Plan is to be viewed. |
| Budget Year  | Yes       | Budget Year for which the Budget Plan is to be viewed.  |
| Category     | No        | Filters the Budget Plan to a specific Category.         |
| SubCategory  | No        | Filters the Budget Plan to a specific SubCategory.      |

---

**Preconditions**

* A valid Budget Period is selected.
* A Budget Plan exists for the selected Budget Period.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected Budget Period.
2. Validate the Budget Period.
3. Retrieve the Budget Plan for the selected Budget Period.
4. Apply the selected Category and SubCategory filters, where applicable.
5. Display the Budget Plan information.

---

**Budget Plan Information**

The system shall display the following information.

| Information    | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Budget Month   | Budget Month of the Budget Plan.                             |
| Budget Year    | Budget Year of the Budget Plan.                              |
| Category       | Planned Category.                                            |
| SubCategory    | Planned SubCategory.                                         |
| Planned Amount | Budget allocation for the selected Category and SubCategory. |
| Remarks        | Additional business information, where available.            |

---

**Postconditions**

* The Budget Plan is successfully retrieved.
* The Budget Plan information is displayed in read-only mode.
* No modifications are made to the Budget Plan.

---

**Expected Outcome**

The user shall be able to retrieve and review the Budget Plan for the selected Budget Period as a reference for financial planning.

---

**Exceptions**

* Invalid Budget Period.
* Budget Plan does not exist for the selected Budget Period.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Components**

**Business Modules**

* Category Management
* SubCategory Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Insurance Management

The Insurance Management module enables users to maintain and monitor insurance policies within the Personal Finance Management System (PFMS).

The module supports the recording and management of insurance policy information, premium schedules, policy validity, renewal tracking, and policy history while preserving complete historical information for future reference and financial planning.

The following Functional Requirements define the complete business capabilities provided by the Insurance Management module.


#### FR-FPL-004 – Insurance Policy Management

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Insurance Management

---

**Business Feature**

Insurance Policy Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain insurance policy information within the Personal Finance Management System (PFMS). The module shall support maintaining insurance policy information and updating the latest policy details throughout the policy lifecycle.

Insurance Policy Management shall maintain the current policy information for financial planning and renewal monitoring while preserving the complete financial payment history through the Financial Transaction module.

---

**Inputs**

The following business information shall be captured while maintaining an insurance policy.

| Field              | Mandatory | Description                                                                   |
| ------------------ | --------- | ----------------------------------------------------------------------------- |
| Insurance Type     | Yes       | Type of insurance (e.g., Health, Life, Vehicle).                              |
| Policy Name        | Yes       | Name of the insurance policy.                                                 |
| Policy Number      | Yes       | Unique policy number issued by the insurance provider.                        |
| Insurance Provider | Yes       | Insurance company providing the policy.                                       |
| Policy Holder      | Yes       | Name of the insured person.                                                   |
| Coverage Amount    | Yes       | Total insured amount under the policy.                                        |
| Premium Amount     | Yes       | Premium amount payable for the policy.                                        |
| Premium Frequency  | Yes       | Frequency of premium payment (Monthly, Quarterly, Half-Yearly, Yearly, etc.). |
| Policy Start Date  | Yes       | Date from which the policy becomes effective.                                 |
| Policy End Date    | Yes       | Date on which the policy expires.                                             |
| Renewal Due Date   | Yes       | Next scheduled renewal due date.                                              |
| Remarks            | No        | Additional business information or supporting remarks, where applicable.      |

---

**Preconditions**

* All mandatory insurance information has been provided.
* The Policy Number is unique.
* The Insurance Provider has been specified.
* The Coverage Amount is greater than zero.
* The Premium Amount is greater than zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the insurance policy information.
2. Validate all mandatory information.
3. Verify that the Policy Number is unique.
4. Validate the policy dates.
5. Validate the Coverage Amount and Premium Amount.
6. Apply all applicable Business Rules.
7. Record a new insurance policy or update the existing insurance policy information in accordance with the applicable Business Rules.
8. Make the insurance policy available for Renewal Monitoring and Inquiry.

---

**Postconditions**

* The insurance policy information is successfully maintained.
* The latest insurance policy information is available for financial planning, renewal monitoring, and inquiry.
* The insurance policy is available for Renewal Monitoring.
* Financial payment history continues to be maintained through the Financial Transaction module.

---

**Expected Outcome**

The user shall be able to maintain the latest insurance policy information throughout the policy lifecycle while supporting financial planning, renewal monitoring, and policy inquiry.

---

**Exceptions**

* Mandatory insurance information is missing.
* Duplicate Policy Number.
* Invalid policy dates.
* Invalid Coverage Amount.
* Invalid Premium Amount.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-005 – Insurance Renewal Monitoring

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Insurance Management

---

**Business Feature**

Insurance Renewal Monitoring

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to monitor insurance policies approaching their renewal due date or policy expiry date within the Personal Finance Management System (PFMS).

Insurance Renewal Monitoring shall provide visibility into upcoming renewals, expired policies, and the current policy status, enabling users to renew policies on time and maintain uninterrupted insurance coverage.

---

**Inputs**

The following business information shall be used while monitoring insurance renewals.

| Field              | Mandatory | Description                                    |
| ------------------ | --------- | ---------------------------------------------- |
| Insurance Type     | No        | Filters policies by Insurance Type.            |
| Insurance Provider | No        | Filters policies by Insurance Provider.        |
| Policy Status      | No        | Filters policies by the derived Policy Status. |

---

**Preconditions**

* At least one insurance policy exists.
* Insurance policy information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Retrieve all insurance policies.
2. Determine the policy validity using the Policy End Date and Renewal Due Date.
3. Identify policies approaching renewal.
4. Identify expired policies.
5. Derive the current Policy Status based on the Current Date, Renewal Due Date, and Policy End Date.
6. Present the insurance renewal monitoring information to the user.

---

**Insurance Renewal Information**

The system shall display the following information.

| Information        | Description                                                                   |
| ------------------ | ----------------------------------------------------------------------------- |
| Insurance Type     | Type of insurance policy.                                                     |
| Policy Name        | Name of the insurance policy.                                                 |
| Insurance Provider | Insurance company providing the policy.                                       |
| Renewal Due Date   | Next scheduled renewal due date.                                              |
| Policy End Date    | Policy expiry date.                                                           |
| Policy Status      | Derived status of the insurance policy (Active, Due for Renewal, or Expired). |

---

**Policy Status Determination**

The system shall derive the Policy Status as follows:

| Condition                                                          | Policy Status   |
| ------------------------------------------------------------------ | --------------- |
| Current Date < Renewal Due Date                                    | Active          |
| Current Date ≥ Renewal Due Date and Current Date ≤ Policy End Date | Due for Renewal |
| Current Date > Policy End Date                                     | Expired         |

---

**Postconditions**

* Insurance renewal information is successfully generated.
* Policies approaching renewal are identified.
* Expired policies are identified.
* The derived Policy Status is available for user review.

---

**Expected Outcome**

The user shall be able to monitor insurance policy renewals, identify upcoming renewals and expired policies, and take timely action to maintain continuous insurance coverage.

---

**Exceptions**

* Insurance policy information is unavailable.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-006 – Insurance Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Insurance Management

---

**Business Feature**

Insurance Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view insurance policy information within the Personal Finance Management System (PFMS).

Insurance Inquiry provides read-only access to the latest insurance policy information and serves as a reference for financial planning, policy verification, and renewal preparation without modifying the underlying insurance records.

---

**Inputs**

The following business information shall be used while retrieving insurance policy information.

| Field              | Mandatory | Description                             |
| ------------------ | --------- | --------------------------------------- |
| Insurance Type     | No        | Filters policies by Insurance Type.     |
| Insurance Provider | No        | Filters policies by Insurance Provider. |
| Policy Number      | No        | Retrieves a specific insurance policy.  |

---

**Preconditions**

* At least one insurance policy exists.
* Insurance policy information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the latest insurance policy information.
4. Apply the selected filters.
5. Display the insurance policy information in read-only mode.

---

**Insurance Policy Information**

The system shall display the following information.

| Information        | Description                                       |
| ------------------ | ------------------------------------------------- |
| Insurance Type     | Type of insurance policy.                         |
| Policy Name        | Name of the insurance policy.                     |
| Policy Number      | Unique policy number.                             |
| Insurance Provider | Insurance company providing the policy.           |
| Policy Holder      | Name of the insured person.                       |
| Coverage Amount    | Total insured amount.                             |
| Premium Amount     | Premium amount payable.                           |
| Premium Frequency  | Frequency of premium payment.                     |
| Policy Start Date  | Policy effective date.                            |
| Policy End Date    | Policy expiry date.                               |
| Renewal Due Date   | Next scheduled renewal due date.                  |
| Remarks            | Additional business information, where available. |

---

**Postconditions**

* Insurance policy information is successfully retrieved.
* The latest insurance policy information is displayed in read-only mode.
* No modifications are made to the insurance policy information.

---

**Expected Outcome**

The user shall be able to retrieve and review the latest insurance policy information for reference, financial planning, and renewal preparation.

---

**Exceptions**

* Insurance policy information is unavailable.
* No insurance policy matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Investment Management

The Investment Management module enables users to maintain and monitor investment information within the Personal Finance Management System (PFMS).

The module supports recording and maintaining investment information for various investment instruments while providing visibility into investment maturity, returns, and portfolio information for financial planning and decision-making.

The following Functional Requirements define the complete business capabilities provided by the Investment Management module.


#### FR-FPL-007 – Investment Management

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Investment Management

---

**Business Feature**

Investment Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain investment information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining investment information for multiple investment instruments while preserving complete investment history. Each investment shall follow the lifecycle of its respective investment instrument in accordance with the applicable business rules.

---

**Inputs**

The following business information shall be captured while maintaining an investment.

| Field               | Mandatory | Description                                                                              |
| ------------------- | --------- | ---------------------------------------------------------------------------------------- |
| Investment Type     | Yes       | Type of investment (e.g., APY, FD, RD, PPF, NPS, Mutual Fund, Stock, Bond, Gold, Other). |
| Investment Name     | Yes       | Name or description of the investment.                                                   |
| Investment Provider | Yes       | Financial institution or organization managing the investment.                           |
| Investment Amount   | Yes       | Amount invested. The amount shall be greater than zero.                                  |
| Investment Date     | Yes       | Date on which the investment was initiated.                                              |
| Maturity Date       | No        | Maturity or completion date, where applicable.                                           |
| Nominee             | No        | Nominee associated with the investment, where applicable.                                |
| Remarks             | No        | Additional business information or supporting remarks, where applicable.                 |

---

**Preconditions**

* All mandatory investment information has been provided.
* Investment Amount is greater than zero.
* Investment Type has been specified.
* Investment Provider has been specified.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the investment information.
2. Validate all mandatory information.
3. Validate the Investment Amount.
4. Validate the investment dates, where applicable.
5. Apply all applicable Business Rules.
6. Record a new investment or update the existing investment information in accordance with the lifecycle of the respective investment instrument.
7. Make the investment available for Investment Monitoring and Inquiry.

---

**Postconditions**

* The investment information is successfully maintained.
* The latest investment information is available for financial planning.
* The investment is available for Investment Monitoring and Inquiry.
* Investment history is preserved in accordance with the lifecycle of the respective investment instrument.

---

**Expected Outcome**

The user shall be able to maintain investment information throughout the lifecycle of each investment instrument while supporting financial planning, investment monitoring, and investment inquiry.

---

**Exceptions**

* Mandatory investment information is missing.
* Invalid Investment Type.
* Invalid Investment Amount.
* Invalid investment dates.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-008 – Investment Monitoring

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Investment Management

---

**Business Feature**

Investment Monitoring

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to monitor investments maintained within the Personal Finance Management System (PFMS).

Investment Monitoring shall provide visibility into investment maturity, investment lifecycle, and the current investment status, enabling users to monitor active investments, identify investments approaching maturity, and make informed financial planning decisions.

---

**Inputs**

The following business information shall be used while monitoring investments.

| Field               | Mandatory | Description                                           |
| ------------------- | --------- | ----------------------------------------------------- |
| Investment Type     | No        | Filters investments by Investment Type.               |
| Investment Provider | No        | Filters investments by Investment Provider.           |
| Investment Status   | No        | Filters investments by the derived Investment Status. |

---

**Preconditions**

* At least one investment exists.
* Investment information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Retrieve all investment information.
2. Determine the lifecycle of each investment based on its Investment Type.
3. Determine investment maturity, where applicable.
4. Derive the current Investment Status based on the Investment Type, Current Date, and Maturity Date, where applicable.
5. Present the investment monitoring information to the user.

---

**Investment Monitoring Information**

The system shall display the following information.

| Information         | Description                                                    |
| ------------------- | -------------------------------------------------------------- |
| Investment Type     | Type of investment.                                            |
| Investment Name     | Name or description of the investment.                         |
| Investment Provider | Financial institution or organization managing the investment. |
| Investment Date     | Date on which the investment was initiated.                    |
| Maturity Date       | Maturity date, where applicable.                               |
| Investment Status   | Derived status of the investment based on its lifecycle.       |

---

**Postconditions**

* Investment monitoring information is successfully generated.
* Investment maturity information is available, where applicable.
* The derived Investment Status is available for user review.

---

**Expected Outcome**

The user shall be able to monitor investments, identify investments approaching maturity where applicable, and review the current lifecycle status of each investment for financial planning purposes.

---

**Exceptions**

* Investment information is unavailable.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-009 – Investment Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Investment Management

---

**Business Feature**

Investment Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view investment information within the Personal Finance Management System (PFMS).

Investment Inquiry provides read-only access to investment information and serves as a reference for financial planning, investment verification, and portfolio review without modifying the underlying investment records.

---

**Inputs**

The following business information shall be used while retrieving investment information.

| Field               | Mandatory | Description                                 |
| ------------------- | --------- | ------------------------------------------- |
| Investment Type     | No        | Filters investments by Investment Type.     |
| Investment Provider | No        | Filters investments by Investment Provider. |
| Investment Name     | No        | Retrieves a specific investment.            |

---

**Preconditions**

* At least one investment exists.
* Investment information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the investment information.
4. Apply the selected filters.
5. Display the investment information in read-only mode.

---

**Investment Information**

The system shall display the following information.

| Information         | Description                                                    |
| ------------------- | -------------------------------------------------------------- |
| Investment Type     | Type of investment.                                            |
| Investment Name     | Name or description of the investment.                         |
| Investment Provider | Financial institution or organization managing the investment. |
| Investment Amount   | Amount invested.                                               |
| Investment Date     | Date on which the investment was initiated.                    |
| Maturity Date       | Maturity date, where applicable.                               |
| Nominee             | Nominee associated with the investment, where applicable.      |
| Remarks             | Additional business information, where available.              |

---

**Postconditions**

* Investment information is successfully retrieved.
* Investment information is displayed in read-only mode.
* No modifications are made to the investment information.

---

**Expected Outcome**

The user shall be able to retrieve and review investment information for reference, financial planning, and portfolio verification.

---

**Exceptions**

* Investment information is unavailable.
* No investment matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Loan Management

The Loan Management module enables users to maintain and monitor loan information within the Personal Finance Management System (PFMS).

The module supports recording and maintaining loan information while providing visibility into loan repayment, outstanding commitments, and loan lifecycle for financial planning and decision-making.

The following Functional Requirements define the complete business capabilities provided by the Loan Management module.


#### FR-FPL-010 – Loan Management

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Loan Management

---

**Business Feature**

Loan Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain loan information within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining loan information throughout the loan lifecycle while preserving complete financial repayment history through the Financial Transaction module.

---

**Inputs**

The following business information shall be captured while maintaining a loan.

| Field           | Mandatory | Description                                                                                    |
| --------------- | --------- | ---------------------------------------------------------------------------------------------- |
| Loan Type       | Yes       | Type of loan (e.g., Home Loan, Vehicle Loan, Personal Loan, Education Loan, Gold Loan, Other). |
| Loan Name       | Yes       | Name or description of the loan.                                                               |
| Loan Provider   | Yes       | Financial institution providing the loan.                                                      |
| Loan Amount     | Yes       | Original sanctioned loan amount. The amount shall be greater than zero.                        |
| EMI Amount      | Yes       | Periodic installment amount payable towards the loan. The amount shall be greater than zero.   |
| Loan Tenure     | Yes       | Duration of the loan repayment period.                                                         |
| Loan Start Date | Yes       | Date on which the loan becomes effective.                                                      |
| Loan End Date   | No        | Expected loan completion date, where applicable.                                               |
| EMI Due Date    | Yes       | Scheduled due date for EMI payment.                                                            |
| Loan Status     | Yes       | Current status of the loan (e.g., Active or Closed).                                           |
| Remarks         | No        | Additional business information or supporting remarks, where applicable.                       |

---

**Preconditions**

* All mandatory loan information has been provided.
* Loan Type has been specified.
* Loan Provider has been specified.
* Loan Amount is greater than zero.
* EMI Amount is greater than zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the loan information.
2. Validate all mandatory information.
3. Validate the Loan Amount and EMI Amount.
4. Validate the loan dates.
5. Apply all applicable Business Rules.
6. Record a new loan or update the existing loan information.
7. Make the loan available for Loan Monitoring and Inquiry.

---

**Postconditions**

* The loan information is successfully maintained.
* The latest loan information is available for financial planning.
* The loan is available for Loan Monitoring and Inquiry.
* Financial repayment history continues to be maintained through the Financial Transaction module.

---

**Expected Outcome**

The user shall be able to maintain loan information throughout the loan lifecycle while supporting financial planning, loan monitoring, and loan inquiry.

---

**Exceptions**

* Mandatory loan information is missing.
* Invalid Loan Type.
* Invalid Loan Amount.
* Invalid EMI Amount.
* Invalid loan dates.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.



#### FR-FPL-011 – Loan Monitoring

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Loan Management

---

**Business Feature**

Loan Monitoring

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to monitor loans maintained within the Personal Finance Management System (PFMS).

Loan Monitoring shall provide visibility into active loans, upcoming EMI due dates, expected loan completion dates, and the current loan status, enabling users to manage loan commitments and make informed financial planning decisions.

---

**Inputs**

The following business information shall be used while monitoring loans.

| Field         | Mandatory | Description                     |
| ------------- | --------- | ------------------------------- |
| Loan Type     | No        | Filters loans by Loan Type.     |
| Loan Provider | No        | Filters loans by Loan Provider. |
| Loan Status   | No        | Filters loans by Loan Status.   |

---

**Preconditions**

* At least one loan exists.
* Loan information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Retrieve all loan information.
2. Identify active and closed loans.
3. Identify upcoming EMI due dates.
4. Determine expected loan completion dates, where applicable.
5. Present the loan monitoring information to the user.

---

**Loan Monitoring Information**

The system shall display the following information.

| Information   | Description                                      |
| ------------- | ------------------------------------------------ |
| Loan Type     | Type of loan.                                    |
| Loan Name     | Name or description of the loan.                 |
| Loan Provider | Financial institution providing the loan.        |
| Loan Amount   | Original sanctioned loan amount.                 |
| EMI Amount    | Periodic installment amount.                     |
| EMI Due Date  | Next scheduled EMI due date.                     |
| Loan End Date | Expected loan completion date, where applicable. |
| Loan Status   | Current loan status (Active or Closed).          |

---

**Postconditions**

* Loan monitoring information is successfully generated.
* Loan status is available for user review.
* Upcoming EMI due dates are available for financial planning.

---

**Expected Outcome**

The user shall be able to monitor loan commitments, review loan status, and track upcoming EMI due dates for effective financial planning.

---

**Exceptions**

* Loan information is unavailable.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-FPL-012 – Loan Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Loan Management

---

**Business Feature**

Loan Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view loan information within the Personal Finance Management System (PFMS).

Loan Inquiry provides read-only access to loan information and serves as a reference for financial planning, loan verification, and repayment management without modifying the underlying loan records.

---

**Inputs**

The following business information shall be used while retrieving loan information.

| Field         | Mandatory | Description                     |
| ------------- | --------- | ------------------------------- |
| Loan Type     | No        | Filters loans by Loan Type.     |
| Loan Provider | No        | Filters loans by Loan Provider. |
| Loan Name     | No        | Retrieves a specific loan.      |

---

**Preconditions**

* At least one loan exists.
* Loan information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the loan information.
4. Apply the selected filters.
5. Display the loan information in read-only mode.

---

**Loan Information**

The system shall display the following information.

| Information     | Description                                       |
| --------------- | ------------------------------------------------- |
| Loan Type       | Type of loan.                                     |
| Loan Name       | Name or description of the loan.                  |
| Loan Provider   | Financial institution providing the loan.         |
| Loan Amount     | Original sanctioned loan amount.                  |
| EMI Amount      | Periodic installment amount.                      |
| Loan Tenure     | Duration of the loan repayment period.            |
| Loan Start Date | Date on which the loan becomes effective.         |
| Loan End Date   | Expected loan completion date, where applicable.  |
| EMI Due Date    | Scheduled EMI due date.                           |
| Loan Status     | Current loan status.                              |
| Remarks         | Additional business information, where available. |

---

**Postconditions**

* Loan information is successfully retrieved.
* Loan information is displayed in read-only mode.
* No modifications are made to the loan information.

---

**Expected Outcome**

The user shall be able to retrieve and review loan information for reference, financial planning, and loan verification.

---

**Exceptions**

* Loan information is unavailable.
* No loan matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Utility Management

The Utility Management module enables users to maintain and monitor recurring utility services and expiry-based records within the Personal Finance Management System (PFMS).

The module supports recording and maintaining utility services, subscriptions, renewals, and expiry-based records while providing visibility into upcoming due dates, renewal dates, and service validity for effective financial planning and timely renewals.

The following Functional Requirements define the complete business capabilities provided by the Utility Management module.


#### FR-FPL-013 – Utility Management

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Utility Management

---

**Business Feature**

Utility Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to maintain utility services and expiry-based records within the Personal Finance Management System (PFMS).

The module shall support recording and maintaining utility services, subscriptions, renewals, and expiry-based records while providing the necessary information for financial planning, service continuity, and timely renewals.

---

**Inputs**

The following business information shall be captured while maintaining a utility record.

| Field                                | Mandatory | Description                                                                                                                                                                                                                                            |
| ------------------------------------ | --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Utility Type                         | Yes       | Type of utility service or expiry-based record (e.g., Electricity, Water, Broadband, Mobile, OTT Subscription, Domain Renewal, Software Subscription, Driving Licence, Registration Certificate (RC), Pollution Under Control (PUC), Passport, Other). |
| Utility Name                         | Yes       | Name or description of the utility service or document.                                                                                                                                                                                                |
| Service Provider / Issuing Authority | No        | Name of the service provider or issuing authority, where applicable.                                                                                                                                                                                   |
| Amount                               | No        | Expected payment or renewal amount, where applicable.                                                                                                                                                                                                  |
| Renewal Frequency                    | No        | Frequency of payment or renewal (e.g., Monthly, Quarterly, Half-Yearly, Yearly, Every X Months, Every X Years), where applicable.                                                                                                                      |
| Start Date                           | No        | Date from which the utility service or document becomes effective.                                                                                                                                                                                     |
| End Date                             | No        | Expiry or validity end date, where applicable.                                                                                                                                                                                                         |
| Renewal Due Date                     | No        | Next scheduled payment or renewal date, where applicable.                                                                                                                                                                                              |
| Utility Status                       | Yes       | Current status of the utility service or document (e.g., Active or Inactive).                                                                                                                                                                          |
| Remarks                              | No        | Additional business information or supporting remarks, where applicable.                                                                                                                                                                               |

---

**Preconditions**

* Utility Type has been specified.
* Utility Name has been provided.
* Utility Status has been specified.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the utility information.
2. Validate all mandatory information.
3. Validate the utility dates, where applicable.
4. Apply all applicable Business Rules.
5. Record a new utility or update the existing utility information.
6. Make the utility available for Utility Monitoring and Inquiry.

---

**Postconditions**

* Utility information is successfully maintained.
* The latest utility information is available for financial planning.
* The utility is available for Utility Monitoring and Inquiry.

---

**Expected Outcome**

The user shall be able to maintain utility services and expiry-based records for financial planning, timely renewals, and uninterrupted service management.

---

**Exceptions**

* Mandatory utility information is missing.
* Invalid Utility Type.
* Invalid utility dates.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.



#### FR-FPL-014 – Utility Monitoring

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Utility Management

---

**Business Feature**

Utility Monitoring

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to monitor utility services and expiry-based records maintained within the Personal Finance Management System (PFMS).

Utility Monitoring shall provide visibility into upcoming payment due dates, renewal due dates, expiry dates, and the current utility status, enabling users to perform timely payments, renewals, and maintain uninterrupted services and valid documents.

---

**Inputs**

The following business information shall be used while monitoring utility records.

| Field                                | Mandatory | Description                                                                             |
| ------------------------------------ | --------- | --------------------------------------------------------------------------------------- |
| Utility Type                         | No        | Filters utility records by Utility Type.                                                |
| Service Provider / Issuing Authority | No        | Filters utility records by the Service Provider or Issuing Authority, where applicable. |
| Utility Status                       | No        | Filters utility records by Utility Status.                                              |

---

**Preconditions**

* At least one utility record exists.
* Utility information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Retrieve all utility records.
2. Identify upcoming payment due dates and renewal due dates, where applicable.
3. Identify upcoming expiry dates, where applicable.
4. Retrieve the current Utility Status.
5. Present the utility monitoring information to the user.

---

**Utility Monitoring Information**

The system shall display the following information.

| Information                          | Description                                                          |
| ------------------------------------ | -------------------------------------------------------------------- |
| Utility Type                         | Type of utility service or expiry-based record.                      |
| Utility Name                         | Name or description of the utility service or document.              |
| Service Provider / Issuing Authority | Name of the service provider or issuing authority, where applicable. |
| Amount                               | Expected payment or renewal amount, where applicable.                |
| Renewal Frequency                    | Frequency of payment or renewal, where applicable.                   |
| Renewal Due Date                     | Next scheduled payment or renewal date, where applicable.            |
| End Date                             | Expiry or validity end date, where applicable.                       |
| Utility Status                       | Current status of the utility record.                                |

---

**Postconditions**

* Utility monitoring information is successfully generated.
* Upcoming payment due dates, renewal due dates, and expiry dates are available for user review.
* Utility status is available for financial planning.

---

**Expected Outcome**

The user shall be able to monitor utility services and expiry-based records, identify upcoming payments, renewals, and expiries, and ensure uninterrupted services and valid documents through timely action.

---

**Exceptions**

* Utility information is unavailable.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.



#### FR-FPL-015 – Utility Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Financial Planning

---

**Business Module**

Utility Management

---

**Business Feature**

Utility Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view utility services and expiry-based records within the Personal Finance Management System (PFMS).

Utility Inquiry provides read-only access to utility information and serves as a reference for financial planning, utility verification, renewal planning, and document management without modifying the underlying utility records.

---

**Inputs**

The following business information shall be used while retrieving utility records.

| Field                                | Mandatory | Description                                                                             |
| ------------------------------------ | --------- | --------------------------------------------------------------------------------------- |
| Utility Type                         | No        | Filters utility records by Utility Type.                                                |
| Service Provider / Issuing Authority | No        | Filters utility records by the Service Provider or Issuing Authority, where applicable. |
| Utility Name                         | No        | Retrieves a specific utility service or expiry-based record.                            |

---

**Preconditions**

* At least one utility record exists.
* Utility information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the utility information.
4. Apply the selected filters.
5. Display the utility information in read-only mode.

---

**Utility Information**

The system shall display the following information.

| Information                          | Description                                                                          |
| ------------------------------------ | ------------------------------------------------------------------------------------ |
| Utility Type                         | Type of utility service or expiry-based record.                                      |
| Utility Name                         | Name or description of the utility service or document.                              |
| Service Provider / Issuing Authority | Name of the service provider or issuing authority, where applicable.                 |
| Amount                               | Expected payment or renewal amount, where applicable.                                |
| Renewal Frequency                    | Frequency of payment or renewal, where applicable.                                   |
| Start Date                           | Date from which the utility service or document becomes effective, where applicable. |
| End Date                             | Expiry or validity end date, where applicable.                                       |
| Renewal Due Date                     | Next scheduled payment or renewal date, where applicable.                            |
| Utility Status                       | Current status of the utility service or document.                                   |
| Remarks                              | Additional business information, where available.                                    |

---

**Postconditions**

* Utility information is successfully retrieved.
* Utility information is displayed in read-only mode.
* No modifications are made to the utility information.

---

**Expected Outcome**

The user shall be able to retrieve and review utility services and expiry-based records for reference, financial planning, renewal planning, and document verification.

---

**Exceptions**

* Utility information is unavailable.
* No utility record matches the specified search criteria.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Components**

**Business Modules**

* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.



## Operational Activity Management

The Operational Activity Management domain defines the business capabilities required to record, maintain, and monitor the user's day-to-day operational activities within the Personal Finance Management System (PFMS).

The operational activities maintained within this domain support routine household and personal activities while preserving historical operational records. These activities may generate financial transactions, which shall be recorded independently through the Financial Transaction Management domain in accordance with the business rules defined within this specification.

The Functional Requirements under this Business Domain are organized into the following Business Modules:

* Milk Purchase Management
* Gas Cylinder Management
* Bike Fuel Management
* Engine Oil Management
* Bike Maintenance Management


### Milk Purchase Management

The Milk Purchase Management module enables users to record and maintain daily milk purchase activities within the Personal Finance Management System (PFMS).

The module supports maintaining historical records of milk purchases for operational tracking, consumption analysis, expenditure analysis, and reporting. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

The following Functional Requirements define the complete business capabilities provided by the Milk Purchase Management module.

---

#### FR-OAM-001 – Milk Purchase Management

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Milk Purchase Management

---

**Business Feature**

Milk Purchase Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to record and maintain daily milk purchase information within the Personal Finance Management System (PFMS).

The module shall maintain historical operational information related to daily milk purchases. Financial payment information shall be maintained separately through the Financial Transaction Management domain.

---

**Inputs**

The following business information shall be captured while maintaining a milk purchase record.

| Field                 | Mandatory | Description                               |
| --------------------- | --------- | ----------------------------------------- |
| Purchase Date         | Yes       | Date on which the milk purchase was made. |
| Buffalo Milk Quantity | No        | Quantity of buffalo milk purchased.       |
| Buffalo Milk Amount   | No        | Amount paid for buffalo milk.             |
| Cow Milk Quantity     | No        | Quantity of cow milk purchased.           |
| Cow Milk Amount       | No        | Amount paid for cow milk.                 |
| Curd Quantity         | No        | Quantity of curd purchased.               |
| Curd Amount           | No        | Amount paid for curd.                     |

---

**Preconditions**

- Purchase Date has been specified.
- Purchase Date shall be unique.
- All quantities shall be greater than or equal to zero.
- All amounts shall be greater than or equal to zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

1. Accept the milk purchase information.
2. Validate all mandatory information.
3. Validate that no milk purchase record already exists for the specified Purchase Date.
4. Validate the quantities and corresponding amounts for each milk product.
5. Apply all applicable Business Rules.
6. Record a new milk purchase or update the existing milk purchase information in accordance with the applicable Business Rules.
7. Derive the Total Purchase Amount by summing the individual product amounts whenever required.
8. Make the milk purchase information available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Postconditions**

* Milk purchase information is successfully maintained.
* Historical milk purchase information is preserved.
* Total Purchase Amount shall be derived whenever required.
* The information shall be available for Reporting & Analytics and Financial Transaction Management.

---

**Expected Outcome**

The user shall be able to record and maintain historical milk purchase information for consumption tracking, expenditure analysis, operational reporting, and financial transaction processing.

---

**Exceptions**

- Mandatory information is missing.
- Invalid quantity or amount.
- Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.



#### FR-OAM-002 – Milk Purchase Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Milk Purchase Management

---

**Business Feature**

Milk Purchase Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical milk purchase information within the Personal Finance Management System (PFMS).

Milk Purchase Inquiry provides read-only access to historical milk purchase records for operational tracking, consumption analysis, expenditure analysis, and reporting. Financial transaction information shall be retrieved independently through the Financial Transaction Management domain, where applicable.

---

**Inputs**

The following business information shall be used while retrieving milk purchase information.

| Field              | Mandatory | Description                                                      |
| ------------------ | --------- | ---------------------------------------------------------------- |
| From Purchase Date | No        | Retrieves milk purchase records from the specified date onwards. |
| To Purchase Date   | No        | Retrieves milk purchase records up to the specified date.        |

---

**Preconditions**

* Milk purchase information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the milk purchase information.
4. Derive the Total Purchase Amount for each record whenever required by summing the individual product amounts.
5. Apply the selected filters.
6. Display the milk purchase information in read-only mode.

---

**Milk Purchase Information**

The system shall display the following information.

| Information           | Description                                                               |
| --------------------- | ------------------------------------------------------------------------- |
| Purchase Date         | Date on which the milk purchase was recorded.                             |
| Buffalo Milk Quantity | Quantity of buffalo milk purchased.                                       |
| Buffalo Milk Amount   | Amount paid for buffalo milk.                                             |
| Cow Milk Quantity     | Quantity of cow milk purchased.                                           |
| Cow Milk Amount       | Amount paid for cow milk.                                                 |
| Curd Quantity         | Quantity of curd purchased.                                               |
| Curd Amount           | Amount paid for curd.                                                     |
| Total Purchase Amount | Derived by summing Buffalo Milk Amount, Cow Milk Amount, and Curd Amount. |

---

**Postconditions**

* Milk purchase information is successfully retrieved.
* Historical milk purchase information is displayed in read-only mode.
* No modifications are made to the stored milk purchase records.

---

**Expected Outcome**

The user shall be able to retrieve and review historical milk purchase information for operational tracking, consumption analysis, expenditure analysis, and reporting.

---

**Exceptions**

* Milk purchase information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Gas Cylinder Management

The Gas Cylinder Management module enables users to record and maintain gas cylinder replacement activities within the Personal Finance Management System (PFMS).

The module supports maintaining historical records of domestic gas cylinder replacements for operational tracking, consumption analysis, expenditure analysis, and reporting. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

The following Functional Requirements define the complete business capabilities provided by the Gas Cylinder Management module.

---

#### FR-OAM-003 – Gas Cylinder Management

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Gas Cylinder Management

---

**Business Feature**

Gas Cylinder Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to record and maintain gas cylinder replacement information within the Personal Finance Management System (PFMS).

The module shall maintain historical operational information related to domestic gas cylinder replacements. Financial payment information shall be maintained separately through the Financial Transaction Management domain.

---

**Inputs**

The following business information shall be captured while maintaining a gas cylinder record.

| Field            | Mandatory | Description                                  |
| ---------------- | --------- | -------------------------------------------- |
| Replacement Date | Yes       | Date on which the gas cylinder was replaced. |
| Cylinder Amount  | Yes       | Amount paid for the gas cylinder.            |

---

**Preconditions**

* Replacement Date has been specified.
* Replacement Date shall be unique.
* Cylinder Amount shall be greater than or equal to zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the gas cylinder replacement information.
2. Validate all mandatory information.
3. Validate that no gas cylinder replacement record already exists for the specified Replacement Date.
4. Validate the Cylinder Amount.
5. Apply all applicable Business Rules.
6. Record a new gas cylinder replacement or update the existing gas cylinder information in accordance with the applicable Business Rules.
7. Make the gas cylinder information available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Postconditions**

* Gas cylinder information is successfully maintained.
* Historical gas cylinder information is preserved.
* The information shall be available for Reporting & Analytics and Financial Transaction Management.

---

**Expected Outcome**

The user shall be able to record and maintain historical gas cylinder replacement information for operational tracking, expenditure analysis, operational reporting, and financial transaction processing.

---

**Exceptions**

* Mandatory information is missing.
* Invalid Cylinder Amount.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.



#### FR-OAM-004 – Gas Cylinder Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Gas Cylinder Management

---

**Business Feature**

Gas Cylinder Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical gas cylinder replacement information within the Personal Finance Management System (PFMS).

Gas Cylinder Inquiry provides read-only access to historical gas cylinder replacement records for operational tracking, expenditure analysis, usage analysis, and reporting. Financial transaction information shall be retrieved independently through the Financial Transaction Management domain, where applicable.

---

**Inputs**

The following business information shall be used while retrieving gas cylinder information.

| Field                 | Mandatory | Description                                                     |
| --------------------- | --------- | --------------------------------------------------------------- |
| From Replacement Date | No        | Retrieves gas cylinder records from the specified date onwards. |
| To Replacement Date   | No        | Retrieves gas cylinder records up to the specified date.        |

---

**Preconditions**

* Gas cylinder replacement information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the gas cylinder replacement information.
4. Apply the selected filters.
5. Display the gas cylinder replacement information in read-only mode.

---

**Gas Cylinder Information**

The system shall display the following information.

| Information      | Description                                  |
| ---------------- | -------------------------------------------- |
| Replacement Date | Date on which the gas cylinder was replaced. |
| Cylinder Amount  | Amount paid for the gas cylinder.            |

---

**Postconditions**

* Gas cylinder replacement information is successfully retrieved.
* Historical gas cylinder replacement information is displayed in read-only mode.
* No modifications are made to the stored gas cylinder records.

---

**Expected Outcome**

The user shall be able to retrieve and review historical gas cylinder replacement information for operational tracking, expenditure analysis, usage analysis, and reporting.

---

**Exceptions**

* Gas cylinder replacement information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Bike Fuel Management

The Bike Fuel Management module enables users to record and maintain completed bike fuel refill cycles within the Personal Finance Management System (PFMS).

The module supports maintaining historical records of completed bike fuel refill cycles for fuel consumption analysis, mileage analysis, expenditure analysis, and operational reporting. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

The following Functional Requirements define the complete business capabilities provided by the Bike Fuel Management module.

---

#### FR-OAM-005 – Bike Fuel Management

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Bike Fuel Management

---

**Business Feature**

Bike Fuel Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to record and maintain completed bike fuel refill cycle information within the Personal Finance Management System (PFMS).

The module shall maintain historical operational information related to completed bike fuel refill cycles. Financial payment information shall be maintained separately through the Financial Transaction Management domain.

---

**Inputs**

The following business information shall be captured while maintaining a bike fuel record.

| Field           | Mandatory | Description                                                                                         |
| --------------- | --------- | --------------------------------------------------------------------------------------------------- |
| Purchase Date   | Yes       | Date on which the bike was refuelled.                                                               |
| Trip Kilometres | Yes       | Total kilometres travelled during the completed fuel refill cycle as recorded using the Trip Meter. |
| Fuel Quantity   | Yes       | Quantity of fuel filled in litres.                                                                  |
| Fuel Type       | Yes       | Type of fuel filled (Normal or Premium).                                                            |
| Amount          | Yes       | Amount paid for the completed fuel refill.                                                          |

---

**Preconditions**

* Purchase Date has been specified.
* Trip Kilometres shall be greater than zero.
* Fuel Quantity shall be greater than zero.
* Fuel Type shall be either **Normal** or **Premium**.
* Amount shall be greater than zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the completed bike fuel refill cycle information.
2. Validate all mandatory information.
3. Validate Trip Kilometres, Fuel Quantity, Fuel Type, and Amount.
4. Apply all applicable Business Rules.
5. Record a new completed bike fuel refill cycle or update the existing bike fuel information in accordance with the applicable Business Rules.
6. Make the bike fuel information available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Postconditions**

* Bike fuel refill cycle information is successfully maintained.
* Historical bike fuel refill cycle information is preserved.
* The information shall be available for Reporting & Analytics and Financial Transaction Management.

---

**Expected Outcome**

The user shall be able to record and maintain historical completed bike fuel refill cycle information for mileage analysis, fuel consumption analysis, expenditure analysis, operational reporting, and financial transaction processing.

---

**Exceptions**

* Mandatory information is missing.
* Invalid Trip Kilometres.
* Invalid Fuel Quantity.
* Invalid Fuel Type.
* Invalid Amount.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-OAM-006 – Bike Fuel Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Bike Fuel Management

---

**Business Feature**

Bike Fuel Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical completed bike fuel refill cycle information within the Personal Finance Management System (PFMS).

Bike Fuel Inquiry provides read-only access to historical bike fuel refill cycle records for mileage analysis, fuel consumption analysis, expenditure analysis, operational reporting, and trend analysis. Financial transaction information shall be retrieved independently through the Financial Transaction Management domain, where applicable.

---

**Inputs**

The following business information shall be used while retrieving bike fuel information.

| Field              | Mandatory | Description                                                  |
| ------------------ | --------- | ------------------------------------------------------------ |
| From Purchase Date | No        | Retrieves bike fuel records from the specified date onwards. |
| To Purchase Date   | No        | Retrieves bike fuel records up to the specified date.        |
| Fuel Type          | No        | Retrieves records for the selected fuel type.                |

---

**Preconditions**

* Bike fuel information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the bike fuel information.
4. Apply the selected filters.
5. Display the bike fuel information in read-only mode.

---

**Bike Fuel Information**

The system shall display the following information.

| Information     | Description                                                        |
| --------------- | ------------------------------------------------------------------ |
| Purchase Date   | Date on which the bike was refuelled.                              |
| Trip Kilometres | Total kilometres travelled during the completed fuel refill cycle. |
| Fuel Quantity   | Quantity of fuel filled in litres.                                 |
| Fuel Type       | Type of fuel filled.                                               |
| Amount          | Amount paid for the completed fuel refill.                         |

---

**Postconditions**

* Bike fuel information is successfully retrieved.
* Historical bike fuel refill cycle information is displayed in read-only mode.
* No modifications are made to the stored bike fuel records.

---

**Expected Outcome**

The user shall be able to retrieve and review historical bike fuel refill cycle information for mileage analysis, fuel consumption analysis, expenditure analysis, operational reporting, and trend analysis.

---

**Exceptions**

* Bike fuel information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.



### Engine Oil Management

The Engine Oil Management module enables users to record and maintain completed bike engine oil replacement activities within the Personal Finance Management System (PFMS).

The module supports maintaining historical records of engine oil replacements for maintenance tracking, service history, expenditure analysis, and operational reporting. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

The following Functional Requirements define the complete business capabilities provided by the Engine Oil Management module.

---

#### FR-OAM-007 – Engine Oil Management

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Engine Oil Management

---

**Business Feature**

Engine Oil Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to record and maintain completed engine oil replacement information within the Personal Finance Management System (PFMS).

The module shall maintain historical operational information related to completed engine oil replacements. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

---

**Inputs**

The following business information shall be captured while maintaining an engine oil replacement record.

| Field            | Mandatory | Description                                                                |
| ---------------- | --------- | -------------------------------------------------------------------------- |
| Merchant         | Yes       | Service center or merchant where the engine oil replacement was performed. |
| Replacement Date | Yes       | Date on which the engine oil replacement was completed.                    |
| Odometer Reading | Yes       | Odometer reading of the bike at the time of engine oil replacement.        |
| Amount           | Yes       | Total amount paid for the engine oil replacement.                          |

---

**Preconditions**

* Merchant has been specified.
* Replacement Date has been specified.
* Odometer Reading shall be greater than zero.
* Amount shall be greater than zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the engine oil replacement information.
2. Validate all mandatory information.
3. Validate the Merchant.
4. Validate the Replacement Date.
5. Validate the Odometer Reading.
6. Validate the Amount.
7. Apply all applicable Business Rules.
8. Record a new engine oil replacement or update the existing engine oil replacement information in accordance with the applicable Business Rules.
9. Make the engine oil replacement information available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Postconditions**

* Engine oil replacement information is successfully maintained.
* Historical engine oil replacement information is preserved.
* The information shall be available for Reporting & Analytics and Financial Transaction Management.

---

**Expected Outcome**

The user shall be able to record and maintain historical engine oil replacement information for maintenance tracking, service history, expenditure analysis, operational reporting, and financial transaction processing.

---

**Exceptions**

* Mandatory information is missing.
* Invalid Odometer Reading.
* Invalid Amount.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-OAM-008 – Engine Oil Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Engine Oil Management

---

**Business Feature**

Engine Oil Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical engine oil replacement information within the Personal Finance Management System (PFMS).

Engine Oil Inquiry provides read-only access to historical engine oil replacement records for maintenance tracking, service history, expenditure analysis, operational reporting, and trend analysis. Financial transaction information shall be retrieved independently through the Financial Transaction Management domain, where applicable.

---

**Inputs**

The following business information shall be used while retrieving engine oil replacement information.

| Field                 | Mandatory | Description                                                               |
| --------------------- | --------- | ------------------------------------------------------------------------- |
| From Replacement Date | No        | Retrieves engine oil replacement records from the specified date onwards. |
| To Replacement Date   | No        | Retrieves engine oil replacement records up to the specified date.        |
| Merchant              | No        | Retrieves engine oil replacement records for the selected merchant.       |

---

**Preconditions**

* Engine oil replacement information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the engine oil replacement information.
4. Apply the selected filters.
5. Display the engine oil replacement information in read-only mode.

---

**Engine Oil Replacement Information**

The system shall display the following information.

| Information      | Description                                                                |
| ---------------- | -------------------------------------------------------------------------- |
| Merchant         | Service center or merchant where the engine oil replacement was performed. |
| Replacement Date | Date on which the engine oil replacement was completed.                    |
| Odometer Reading | Odometer reading of the bike at the time of engine oil replacement.        |
| Amount           | Total amount paid for the engine oil replacement.                          |

---

**Postconditions**

* Engine oil replacement information is successfully retrieved.
* Historical engine oil replacement information is displayed in read-only mode.
* No modifications are made to the stored engine oil replacement records.

---

**Expected Outcome**

The user shall be able to retrieve and review historical engine oil replacement information for maintenance tracking, service history, expenditure analysis, operational reporting, and trend analysis.

---

**Exceptions**

* Engine oil replacement information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


### Bike Maintenance Management

The Bike Maintenance Management module enables users to record and maintain completed bike maintenance activities within the Personal Finance Management System (PFMS).

The module supports maintaining historical records of bike maintenance activities for maintenance tracking, service history, expenditure analysis, and operational reporting. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

The following Functional Requirements define the complete business capabilities provided by the Bike Maintenance Management module.

---

#### FR-OAM-009 – Bike Maintenance Management

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Bike Maintenance Management

---

**Business Feature**

Bike Maintenance Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to record and maintain completed bike maintenance information within the Personal Finance Management System (PFMS).

The module shall maintain historical operational information related to completed bike maintenance activities. The corresponding financial transaction shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

---

**Inputs**

The following business information shall be captured while maintaining a bike maintenance record.

| Field                   | Mandatory | Description                                                              |
| ----------------------- | --------- | ------------------------------------------------------------------------ |
| Merchant                | Yes       | Service center or merchant where the maintenance activity was performed. |
| Maintenance Date        | Yes       | Date on which the maintenance activity was completed.                    |
| Maintenance Description | Yes       | User-defined description of the maintenance activity performed.          |
| Amount                  | Yes       | Total amount paid for the maintenance activity.                          |

---

**Preconditions**

* Merchant has been specified.
* Maintenance Date has been specified.
* Maintenance Description has been specified.
* Amount shall be greater than zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the bike maintenance information.
2. Validate all mandatory information.
3. Validate the Merchant.
4. Validate the Maintenance Date.
5. Validate the Maintenance Description.
6. Validate the Amount.
7. Apply all applicable Business Rules.
8. Record a new bike maintenance activity or update the existing bike maintenance information in accordance with the applicable Business Rules.
9. Make the bike maintenance information available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Postconditions**

* Bike maintenance information is successfully maintained.
* Historical bike maintenance information is preserved.
* The information shall be available for Reporting & Analytics and Financial Transaction Management.

---

**Expected Outcome**

The user shall be able to record and maintain historical bike maintenance information for maintenance tracking, service history, expenditure analysis, operational reporting, and financial transaction processing.

---

**Exceptions**

* Mandatory information is missing.
* Invalid Amount.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-OAM-010 – Bike Maintenance Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Operational Activity Management

---

**Business Module**

Bike Maintenance Management

---

**Business Feature**

Bike Maintenance Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical bike maintenance information within the Personal Finance Management System (PFMS).

Bike Maintenance Inquiry provides read-only access to historical bike maintenance records for maintenance tracking, service history, expenditure analysis, operational reporting, and trend analysis. Financial transaction information shall be retrieved independently through the Financial Transaction Management domain, where applicable.

---

**Inputs**

The following business information shall be used while retrieving bike maintenance information.

| Field                 | Mandatory | Description                                                         |
| --------------------- | --------- | ------------------------------------------------------------------- |
| From Maintenance Date | No        | Retrieves bike maintenance records from the specified date onwards. |
| To Maintenance Date   | No        | Retrieves bike maintenance records up to the specified date.        |
| Merchant              | No        | Retrieves bike maintenance records for the selected merchant.       |

---

**Preconditions**

* Bike maintenance information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Operational Activity Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the bike maintenance information.
4. Apply the selected filters.
5. Display the bike maintenance information in read-only mode.

---

**Bike Maintenance Information**

The system shall display the following information.

| Information             | Description                                                              |
| ----------------------- | ------------------------------------------------------------------------ |
| Merchant                | Service center or merchant where the maintenance activity was performed. |
| Maintenance Date        | Date on which the maintenance activity was completed.                    |
| Maintenance Description | User-defined description of the maintenance activity performed.          |
| Amount                  | Total amount paid for the maintenance activity.                          |

---

**Postconditions**

* Bike maintenance information is successfully retrieved.
* Historical bike maintenance information is displayed in read-only mode.
* No modifications are made to the stored bike maintenance records.

---

**Expected Outcome**

The user shall be able to retrieve and review historical bike maintenance information for maintenance tracking, service history, expenditure analysis, operational reporting, and trend analysis.

---

**Exceptions**

* Bike maintenance information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


## Financial Transaction Management

The Financial Transaction Management domain defines the business capabilities required to record, manage, and maintain financial transactions within the Personal Finance Management System (PFMS).

This domain serves as the central financial ledger of the Personal Finance Management System (PFMS) by maintaining the complete history of all financial transactions. It supports transactions involving financial accounts such as Bank Accounts, Credit Cards, UPI Accounts, Wallets (including Physical Cash), and other financial account types. The domain integrates with the Master Data Management, Financial Planning, Operational Activity Management, and Reserve Management domains to provide a comprehensive and accurate record of the user's financial activities.

The Functional Requirements under this Business Domain are organized into the following Business Modules:

* Transaction Management

---


#### FR-FTM-002 – Transaction Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Financial Transaction Management

---

**Business Module**

Transaction Management

---

**Business Feature**

Transaction Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical financial transaction information within the Personal Finance Management System (PFMS).

Transaction Inquiry provides read-only access to historical financial transaction records for financial tracking, budgeting, reconciliation, expenditure analysis, income analysis, operational reporting, and financial decision-making. The module supports transactions originating from manual user entries as well as transactions generated by Financial Planning, Operational Activity Management, and Reserve Management.

---

**Inputs**

The following business information shall be used while retrieving financial transaction information.

| Field                 | Mandatory | Description                                                            |
| --------------------- | --------- | ---------------------------------------------------------------------- |
| From Transaction Date | No        | Retrieves financial transactions from the specified date onwards.      |
| To Transaction Date   | No        | Retrieves financial transactions up to the specified date.             |
| Transaction Type      | No        | Retrieves transactions for the selected transaction type.              |
| Financial Account     | No        | Retrieves transactions associated with the selected Financial Account. |
| Transaction Mode      | No        | Retrieves transactions executed using the selected Transaction Mode.   |
| Category              | No        | Retrieves transactions belonging to the selected Category.             |
| Subcategory           | No        | Retrieves transactions belonging to the selected Subcategory.          |

---

**Preconditions**

* Financial transaction information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Financial Transaction Management Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the financial transaction information.
4. Apply the selected filters.
5. Display the financial transaction information in read-only mode.

---

**Financial Transaction Information**

The system shall display the following information.

| Information       | Description                                                                        |
| ----------------- | ---------------------------------------------------------------------------------- |
| Transaction Date  | Date on which the financial transaction occurred.                                  |
| Transaction Type  | Type of financial transaction.                                                     |
| Financial Account | Financial Account associated with the transaction.                                 |
| Transaction Mode  | Mode through which the transaction was executed.                                   |
| Category          | Transaction category.                                                              |
| Subcategory       | Transaction subcategory, where applicable.                                         |
| Amount            | Financial transaction amount.                                                      |
| Description       | Additional remarks or description, where available.                                |
| Reference Source  | Business domain or module from which the transaction originated, where applicable. |

---

**Postconditions**

* Financial transaction information is successfully retrieved.
* Historical financial transaction information is displayed in read-only mode.
* No modifications are made to the stored financial transaction records.

---

**Expected Outcome**

The user shall be able to retrieve and review historical financial transaction information for financial tracking, budgeting, reconciliation, expenditure analysis, income analysis, operational reporting, and financial decision-making.

---

**Exceptions**

* Financial transaction information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Master Data Management
* Financial Planning
* Operational Activity Management
* Reserve Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.



### Reserve Management

The Reserve Management module enables users to create, maintain, allocate, utilize, adjust, and retrieve reserve information within the Personal Finance Management System (PFMS).

The module maintains the complete history of reserve allocations, reserve utilization, reserve adjustments, and reserve activities. The corresponding financial transactions shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

The following Functional Requirements define the complete business capabilities provided by the Reserve Management module.

---

#### FR-RSM-001 – Reserve Management

**Requirement Type**

Functional

---

**Business Domain**

Reserve Management

---

**Business Module**

Reserve Management

---

**Business Feature**

Reserve Management

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to create, maintain, allocate, utilize, and adjust reserve information within the Personal Finance Management System (PFMS).

The module shall maintain historical reserve information, including reserve allocations, reserve utilization, reserve adjustments, and reserve activities. The corresponding financial transactions shall be maintained independently through the Financial Transaction Management domain in accordance with the applicable business rules.

---

**Inputs**

The following business information shall be captured while maintaining reserve information.

| Field                    | Mandatory | Description                                                                     |
| ------------------------ | --------- | ------------------------------------------------------------------------------- |
| Reserve                  | Yes       | Reserve associated with the reserve activity.                                   |
| Reserve Transaction Type | Yes       | Type of reserve activity (Allocation, Utilization, Adjustment, Transfer, etc.). |
| Transaction Date         | Yes       | Date on which the reserve activity occurred.                                    |
| Financial Account        | Yes       | Financial Account associated with the reserve activity.                         |
| Amount                   | Yes       | Amount allocated, utilized, transferred, or adjusted.                           |
| Description              | No        | Additional remarks or description for the reserve activity.                     |

---

**Preconditions**

* Reserve has been specified.
* Reserve Transaction Type has been specified.
* Transaction Date has been specified.
* Financial Account has been specified.
* Amount shall be greater than zero.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Reserve Management Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the reserve information.
2. Validate all mandatory information.
3. Validate the selected Reserve.
4. Validate the Reserve Transaction Type.
5. Validate the Transaction Date.
6. Validate the selected Financial Account.
7. Validate the Amount.
8. Apply all applicable Business Rules.
9. Record the reserve activity in accordance with the applicable Business Rules.
10. Derive the reserve balance whenever required based on the historical reserve activities.
11. Create or update the corresponding financial transaction through the Financial Transaction Management domain.
12. Make the reserve information available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Postconditions**

* Reserve information is successfully maintained.
* Historical reserve activities are preserved.
* Reserve balance shall be derived whenever required based on the historical reserve activities.
* The corresponding financial transaction is maintained.
* The information shall be available for Inquiry, Reporting & Analytics, and Financial Transaction Management.

---

**Expected Outcome**

The user shall be able to create and maintain reserve information for reserve planning, reserve allocation, reserve utilization, dynamically derived reserve balance tracking, financial control, reporting, and financial decision-making.

---

**Exceptions**

* Mandatory information is missing.
* Invalid Reserve.
* Invalid Reserve Transaction Type.
* Invalid Financial Account.
* Invalid Amount.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Master Data Management
* Financial Planning
* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


#### FR-RSM-002 – Reserve Inquiry

**Requirement Type**

Functional

---

**Business Domain**

Reserve Management

---

**Business Module**

Reserve Management

---

**Business Feature**

Reserve Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve and view historical reserve information within the Personal Finance Management System (PFMS).

Reserve Inquiry provides read-only access to historical reserve activities for reserve planning, reserve allocation, reserve utilization, reserve monitoring, financial control, operational reporting, and financial decision-making. The reserve balance shall be derived dynamically from the historical reserve activities whenever required.

---

**Inputs**

The following business information shall be used while retrieving reserve information.

| Field                    | Mandatory | Description                                                                  |
| ------------------------ | --------- | ---------------------------------------------------------------------------- |
| Reserve                  | No        | Retrieves information for the selected Reserve.                              |
| Reserve Transaction Type | No        | Retrieves information for the selected Reserve Transaction Type.             |
| From Transaction Date    | No        | Retrieves reserve activities from the specified date onwards.                |
| To Transaction Date      | No        | Retrieves reserve activities up to the specified date.                       |
| Financial Account        | No        | Retrieves reserve activities associated with the selected Financial Account. |

---

**Preconditions**

* Reserve information is available.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Reserve Management Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected search criteria.
2. Validate the search criteria, where applicable.
3. Retrieve the reserve information.
4. Apply the selected filters.
5. Derive the current reserve balance whenever required based on the historical reserve activities.
6. Display the reserve information in read-only mode.

---

**Reserve Information**

The system shall display the following information.

| Information              | Description                                                 |
| ------------------------ | ----------------------------------------------------------- |
| Reserve                  | Reserve associated with the activity.                       |
| Reserve Transaction Type | Type of reserve activity performed.                         |
| Transaction Date         | Date on which the reserve activity occurred.                |
| Financial Account        | Financial Account associated with the reserve activity.     |
| Amount                   | Amount allocated, utilized, transferred, or adjusted.       |
| Description              | Additional remarks or description, where available.         |
| Current Reserve Balance  | Dynamically derived from the historical reserve activities. |

---

**Postconditions**

* Reserve information is successfully retrieved.
* Historical reserve information is displayed in read-only mode.
* Current reserve balance is derived dynamically whenever required.
* No modifications are made to the stored reserve information.

---

**Expected Outcome**

The user shall be able to retrieve and review historical reserve information for reserve planning, reserve allocation, reserve utilization, dynamically derived reserve balance tracking, financial control, operational reporting, and financial decision-making.

---

**Exceptions**

* Reserve information is unavailable.
* Unexpected system validation failure.

---

**Priority**

Medium

---

**Related Business Domains**

* Financial Planning
* Financial Transaction Management
* Reporting & Analytics

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


## Reporting & Analytics

The Reporting & Analytics domain defines the business capabilities required to retrieve, analyze, summarize, and present financial and operational information within the Personal Finance Management System (PFMS).

This domain provides meaningful insights by utilizing information maintained across the Master Data Management, Financial Planning, Operational Activity Management, Financial Transaction Management, and Reserve Management domains. It supports financial monitoring, operational analysis, budgeting, trend analysis, performance measurement, and informed decision-making through reports, dashboards, summaries, key performance indicators (KPIs), and analytical views.

The Functional Requirements under this Business Domain are organized into the following Business Modules:

* Reporting & Analytics

---

## Reporting & Analytics

The Reporting & Analytics module enables users to retrieve, analyze, summarize, and visualize financial and operational information within the Personal Finance Management System (PFMS).

The module derives analytical information dynamically from the underlying business domains without maintaining duplicate transactional or summary data. It provides reports, dashboards, summaries, trends, comparisons, and key performance indicators (KPIs) to support financial planning, operational monitoring, expenditure analysis, and decision-making.

The following Functional Requirements define the complete business capabilities provided by the Reporting & Analytics module.

---

### FR-RNA-001 – Reporting & Analytics

**Requirement Type**

Functional

---

**Business Domain**

Reporting & Analytics

---

**Business Module**

Reporting & Analytics

---

**Business Feature**

Reporting & Analytics

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to retrieve, analyze, summarize, and visualize financial and operational information within the Personal Finance Management System (PFMS).

The module shall dynamically derive reports, dashboards, summaries, trends, comparisons, and analytical information from the underlying business domains without storing duplicate analytical or summary information.

---

**Inputs**

The following business information may be used while generating reports and analytical information.

| Field             | Mandatory | Description                                              |
| ----------------- | --------- | -------------------------------------------------------- |
| Report Type       | Yes       | Type of report or analytical view to be generated.       |
| From Date         | No        | Beginning of the reporting period.                       |
| To Date           | No        | End of the reporting period.                             |
| Financial Account | No        | Filters information for the selected Financial Account.  |
| Category          | No        | Filters information for the selected Category.           |
| Subcategory       | No        | Filters information for the selected Subcategory.        |
| Business Domain   | No        | Filters information for the selected business domain.    |
| Report Format     | No        | Preferred output format (Screen, PDF, Excel, CSV, etc.). |

---

**Preconditions**

* Relevant business information is available.
* The selected report type is supported.

---

**Applicable Business Rules**

* Applicable Global Business Rules.
* Applicable General Rules.
* Applicable Reporting & Analytics Business Rules.
* Applicable Module-Specific Business Rules.
* Applicable Non-Functional Requirements.



---

**Processing Logic**

1. Accept the selected report criteria.
2. Validate all applicable input criteria.
3. Retrieve information from the applicable business domains.
4. Apply the selected filters.
5. Dynamically derive all required calculations, summaries, balances, trends, comparisons, KPIs, and analytical information.
6. Generate the requested report, dashboard, or analytical view.
7. Present the information in the selected output format.

---

**Output Information**

The module may generate information including, but not limited to:

* Financial summaries
* Budget analysis
* Income and expenditure analysis
* Investment analysis
* Loan analysis
* Insurance analysis
* Utility analysis
* Reserve analysis
* Operational activity analysis
* Financial transaction analysis
* Merchant-wise expenditure
* Category-wise expenditure
* Monthly and yearly trends
* Dashboards
* Charts and graphs
* Key Performance Indicators (KPIs)
* Comparative analysis

---

**Postconditions**

* Requested reports or analytical information are successfully generated.
* All calculations, summaries, balances, and KPIs are dynamically derived.
* No transactional or summary information is modified.

---

**Expected Outcome**

The user shall be able to retrieve comprehensive financial and operational insights for monitoring, planning, analysis, budgeting, reporting, forecasting, and informed financial decision-making.

---

**Exceptions**

* Required business information is unavailable.
* Invalid report selection or filter criteria.
* Unexpected system validation failure.

---

**Priority**

High

---

**Related Business Domains**

* Master Data Management
* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reserve Management

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, dashboards, reports, analytical views, export formats, and test cases shall be defined during the subsequent design, development, integration, and testing phases of the project.


## Data Architecture

The Data Architecture defines the logical organization and classification of business data within the Personal Finance Management System (PFMS).

It provides a structured framework for managing business information across the application by organizing data into logical Data Domains based on their business purpose and lifecycle. The Data Architecture establishes the foundation for maintaining data consistency, integrity, scalability, maintainability, and efficient information retrieval while minimizing redundancy through dynamic derivation wherever applicable.

The Data Architecture supports the business capabilities, business rules, reporting requirements, and overall information management of the Personal Finance Management System (PFMS). It also serves as the foundation for the system's Data Dictionary, Database Design, Reporting & Analytics, and future extensibility.

The Data Architecture is organized into the following Data Domains:

* Master Data
* Planning Data
* Operational Data
* Financial Transaction Data
* Reserve Data
* Reporting & Analytics Data


### Master Data

The Master Data domain defines the foundational reference information required to support the Personal Finance Management System (PFMS).

Master Data consists of relatively stable business entities that are shared across multiple Data Domains. These entities provide standardized reference information to ensure data consistency, referential integrity, and business reusability throughout the application.

The Master Data domain serves as the foundation for Planning Data, Operational Data, Financial Transaction Data, Reserve Data, and Reporting & Analytics Data.

The Master Data domain consists of the following Master Data entities:

* Account
* Category
* SubCategory
* Payment Mode
* Merchant


### Planning Data

The Planning Data domain defines the business information required to support financial planning within the Personal Finance Management System (PFMS).

Planning Data consists of business entities used to plan, organize, and manage future financial commitments and obligations. These entities enable users to maintain planned financial information, support financial forecasting, and facilitate effective financial decision-making.

The Planning Data domain serves as the foundation for Financial Transaction Data, Reporting & Analytics Data, and overall financial planning activities within the application.

The Planning Data domain consists of the following Planning Data entities:

* Budget
* Insurance
* Investment
* Loan
* Utility


### Operational Data

The Operational Data domain defines the business information required to support day-to-day operational activities within the Personal Finance Management System (PFMS).

Operational Data consists of business entities that record and maintain operational activities performed by the user. These entities capture historical operational information to support operational tracking, expenditure analysis, maintenance history, consumption analysis, and reporting.

The Operational Data domain serves as the foundation for Financial Transaction Data, Reporting & Analytics Data, and historical operational analysis within the application.

The Operational Data domain consists of the following Operational Data entities:

* Milk
* Gas Cylinder
* Bike Fuel
* Engine Oil
* Bike Maintenance


### Financial Transaction Data

The Financial Transaction Data domain defines the business information required to support financial transaction processing within the Personal Finance Management System (PFMS).

Financial Transaction Data consists of business entities that record and maintain the complete history of financial transactions and hard cash activities. These entities capture financial movements associated with financial planning, operational activities, reserve management, and other financial events to support financial tracking, reconciliation, reporting, and historical financial analysis.

The Financial Transaction Data domain serves as the central financial ledger of the application and provides the foundation for Reserve Data, Reporting & Analytics Data, and comprehensive financial monitoring.

The Financial Transaction Data domain consists of the following Financial Transaction Data entities:

* Financial Transaction
* Hard Cash


### Reserve Data

The Reserve Data domain defines the business information required to support reserve planning and reserve management within the Personal Finance Management System (PFMS).

Reserve Data consists of business entities that record and maintain reserve activities, including reserve allocations, reserve utilization, reserve adjustments, and other reserve-related transactions. These entities support reserve planning, financial control, historical reserve tracking, and dynamically derived reserve balance calculations.

The Reserve Data domain serves as the foundation for Reporting & Analytics Data by providing historical reserve information for reserve analysis, monitoring, and financial decision-making.

The Reserve Data domain consists of the following Reserve Data entities:

* Reserve



### Reporting & Analytics Data

The Reporting & Analytics Data domain defines the business information required to support reporting, analysis, and business intelligence within the Personal Finance Management System (PFMS).

Reporting & Analytics Data consists of dynamically derived information generated from the Master Data, Planning Data, Operational Data, Financial Transaction Data, and Reserve Data domains. It provides reports, dashboards, summaries, trends, comparisons, key performance indicators (KPIs), and analytical insights to support financial monitoring, operational analysis, planning, and informed decision-making.

The Reporting & Analytics Data domain does not maintain independent business entities. Instead, it derives analytical information dynamically from the underlying Data Domains whenever required, thereby ensuring data consistency, eliminating redundancy, and presenting the most current business information.

The Reporting & Analytics Data domain does not contain any physical business entities.


## Non-Functional Requirements

The Non-Functional Requirements define the quality attributes, operational characteristics, and technical expectations that the Personal Finance Management System (PFMS) shall satisfy to support the business capabilities defined within this Business Requirements Specification (BRS).

Unlike the Functional Requirements, which define **what** the system shall do, the Non-Functional Requirements define **how well** the system shall perform, operate, secure, maintain, and support those business capabilities. These requirements ensure that the Personal Finance Management System (PFMS) delivers a reliable, secure, consistent, maintainable, and user-friendly solution while preserving business integrity and financial accuracy.

The Non-Functional Requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS).

The Non-Functional Requirements are organized into the following Quality Attributes:

* Performance
* Reliability
* Security
* Data Integrity
* Maintainability
* Usability
* Compatibility
* Backup & Recovery
* Auditability
* Error Handling

The following Non-Functional Requirements define the complete quality expectations applicable to the Personal Finance Management System (PFMS).


### Performance

Performance requirements define the quality expectations that ensure the Personal Finance Management System (PFMS) performs business operations efficiently while maintaining acceptable response times, responsiveness, and overall system performance under normal operating conditions.

Performance requirements apply to all business domains and business modules within the Personal Finance Management System (PFMS). They ensure that business operations, data processing, reporting, and analytical activities are completed within acceptable time limits while preserving business integrity and data consistency.

The following Non-Functional Requirements define the performance expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-PER-001 – Business Operation Response Time

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Performance

---

**Purpose**

To ensure that business operations are completed within acceptable response times, providing an efficient and responsive user experience.

---

**Description**

The Personal Finance Management System (PFMS) shall execute business operations within acceptable response times under normal operating conditions while preserving business integrity and data consistency.

---

**Requirement Statement**

The system shall complete standard business operations within acceptable response times during normal operating conditions.

---

**Acceptance Criteria**

* Standard business operations shall normally complete within two seconds.
* Long-running business operations shall provide appropriate progress indicators or user feedback.
* Business operations shall not compromise business integrity or data consistency while meeting the required response times.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

Critical

---

**Verification Method**

* Performance Testing
* Response Time Measurement



#### NFR-PER-002 – Report Generation Performance

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Reporting & Analytics

---

**Quality Attribute**

Performance

---

**Purpose**

To ensure that reports, dashboards, and analytical information are generated efficiently while preserving business integrity and data accuracy.

---

**Description**

The Personal Finance Management System (PFMS) shall generate reports, dashboards, and analytical information within acceptable response times under normal operating conditions while maintaining business integrity and data consistency.

---

**Requirement Statement**

Standard reports, dashboards, and analytical views shall normally be generated within acceptable response times during normal operating conditions.

---

**Acceptance Criteria**

* Standard reports shall normally be generated within ten seconds.
* Dashboard information shall be displayed within acceptable response times.
* Dynamically derived calculations shall not compromise business integrity or data consistency.
* Report generation shall not adversely impact the performance of normal business operations.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

High

---

**Verification Method**

* Performance Testing
* Response Time Measurement


#### NFR-PER-003 – Concurrent Business Operations

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Entire PFMS

---

**Quality Attribute**

Performance

---

**Purpose**

To ensure that the Personal Finance Management System (PFMS) maintains acceptable performance while supporting concurrent business operations.

---

**Description**

The Personal Finance Management System (PFMS) shall continue to perform within acceptable performance limits while multiple business operations are executed concurrently under normal operating conditions.

---

**Requirement Statement**

Concurrent business operations shall not result in unacceptable performance degradation, data inconsistency, or business operation failures.

---

**Acceptance Criteria**

* Expected concurrent business operations shall remain within the defined performance limits.
* Concurrent execution of business operations shall not compromise business integrity or data consistency.
* The application shall remain responsive during concurrent business operations.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

Medium

---

**Verification Method**

* Performance Testing
* Load Testing
* Stress Testing



### Reliability

Reliability requirements define the quality expectations that ensure the Personal Finance Management System (PFMS) consistently performs business operations while preserving business continuity, business integrity, financial accuracy, and data consistency under normal operating conditions.

Reliability requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS). They ensure that business operations are executed consistently, failures are handled gracefully, and business information remains complete, accurate, and consistent throughout the application lifecycle.

The following Non-Functional Requirements define the reliability expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-REL-001 – Business Operation Reliability

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Reliability

---

**Purpose**

To ensure that business operations execute reliably without compromising business integrity, financial accuracy, or data consistency.

---

**Description**

The Personal Finance Management System (PFMS) shall consistently execute business operations while preserving business integrity, financial accuracy, and data consistency throughout every successful business operation.

---

**Requirement Statement**

Business operations shall either complete successfully or terminate safely without leaving the Personal Finance Management System (PFMS) in an inconsistent business or financial state.

---

**Acceptance Criteria**

* Business operations shall either complete successfully or be safely rolled back.
* No partially completed business operation shall remain following an unsuccessful operation.
* Business integrity, financial accuracy, and data consistency shall be preserved throughout every business operation.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

Critical

---

**Verification Method**

* Functional Testing
* Integration Testing
* Failure Testing


#### NFR-REL-002 – System Availability

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Reliability

---

**Purpose**

To ensure that the Personal Finance Management System (PFMS) remains available whenever users need to perform business operations while minimizing interruptions to normal application usage.

---

**Description**

The Personal Finance Management System (PFMS) shall remain available for normal business operations except during planned maintenance or unavoidable operational interruptions.

---

**Requirement Statement**

The application shall remain available whenever required for normal business use.

---

**Acceptance Criteria**

* The application shall be available except during planned maintenance or unavoidable operational interruptions.
* Planned maintenance activities shall be communicated to users in advance, where applicable.

---

**Dependencies**

None.

---

**Priority**

High

---

**Verification Method**

* Operational Testing
* Availability Monitoring

````

---

```md
#### NFR-REL-003 – Graceful Failure Handling

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Reliability

---

**Purpose**

To ensure that unexpected failures do not compromise business integrity, financial accuracy, or data consistency.

---

**Description**

Unexpected failures shall be handled in a controlled manner while preserving business integrity, financial accuracy, and data consistency and preventing business information corruption.

---

**Requirement Statement**

Unexpected failures shall not leave the Personal Finance Management System (PFMS) in an inconsistent business or financial state.

---

**Acceptance Criteria**

- Business information shall remain complete and consistent following unexpected application failures.
- No partial updates shall remain following unexpected failures.
- Users shall receive an appropriate user-friendly error message.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

Critical

---

**Verification Method**

- Failure Testing
- Recovery Testing
- Integration Testing
````


### Security

Security requirements define the quality expectations that ensure the Personal Finance Management System (PFMS) protects business information against unauthorized access, unauthorized modification, unauthorized disclosure, and misuse while preserving confidentiality, integrity, and availability.

Security requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS).

The following Non-Functional Requirements define the security expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-SEC-001 – Authentication

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Security

---

**Purpose**

To ensure that only authenticated users are permitted to access the Personal Finance Management System (PFMS).

---

**Description**

The Personal Finance Management System (PFMS) shall authenticate every user before granting access to business information and business operations.

---

**Requirement Statement**

Only authenticated users shall be permitted to access the Personal Finance Management System (PFMS).

---

**Acceptance Criteria**

* Unauthenticated users shall not be permitted to access protected application functionality.
* Every authenticated user shall be uniquely identifiable.

---

**Dependencies**

None.

---

**Priority**

Critical

---

**Verification Method**

* Functional Testing
* Security Testing

---

#### NFR-SEC-002 – Authorization

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Security

---

**Purpose**

To ensure that authenticated users perform only those business operations that they are authorized to perform.

---

**Description**

The Personal Finance Management System (PFMS) shall enforce authorization controls before allowing access to protected business operations.

---

**Requirement Statement**

Authenticated users shall perform only those business operations permitted by the applicable authorization rules.

---

**Acceptance Criteria**

* Unauthorized business operations shall be prevented.
* Users shall only access information permitted by their assigned roles and privileges.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

* Functional Testing
* Security Testing

---

#### NFR-SEC-003 – Credential Protection

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Authentication Services

---

**Quality Attribute**

Security

---

**Purpose**

To protect authentication credentials against unauthorized disclosure.

---

**Description**

Authentication credentials shall be protected using secure storage mechanisms.

---

**Requirement Statement**

Authentication credentials shall never be stored in plain text.

---

**Acceptance Criteria**

* Stored authentication credentials comply with approved security practices.
* Passwords shall be stored using secure one-way hashing algorithms.

---

**Dependencies**

NFR-SEC-001

---

**Priority**

Critical

---

**Verification Method**

* Security Review
* Inspection

---

#### NFR-SEC-004 – Secure Communication

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Security

---

**Purpose**

To protect sensitive business information during transmission between application components.

---

**Description**

Sensitive business information shall be protected against unauthorized disclosure and modification during transmission.

---

**Requirement Statement**

Sensitive business information shall be transmitted using secure communication mechanisms.

---

**Acceptance Criteria**

* Sensitive business information shall not be transmitted through unsecured communication channels.
* All communication containing sensitive information shall use approved secure protocols.

---

**Dependencies**

None.

---

**Priority**

Critical

---

**Verification Method**

* Security Testing
* Inspection


### Data Integrity

Data Integrity requirements define the quality expectations that ensure business information within the Personal Finance Management System (PFMS) remains complete, accurate, consistent, valid, and reliable throughout its lifecycle.

Data Integrity requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS). They ensure that business information is correctly captured, processed, stored, retrieved, and presented while preserving referential integrity, business integrity, and financial accuracy.

The following Non-Functional Requirements define the data integrity expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-DAT-001 – Business Information Integrity

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Data Integrity

---

**Purpose**

To ensure that business information remains complete, accurate, consistent, and reliable throughout its lifecycle.

---

**Description**

The Personal Finance Management System (PFMS) shall preserve the integrity of business information during data capture, processing, storage, retrieval, and presentation.

---

**Requirement Statement**

Business information shall remain complete, accurate, consistent, and reliable throughout all business operations.

---

**Acceptance Criteria**

* Business information shall remain complete and accurate following every successful business operation.
* Business information shall remain internally consistent across all related business entities.
* Business integrity and financial accuracy shall be preserved.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

Critical

---

**Verification Method**

* Functional Testing
* Data Validation
* Review

---

#### NFR-DAT-002 – Business Information Quality

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Data Integrity

---

**Purpose**

To ensure that the Personal Finance Management System (PFMS) maintains high-quality business information throughout its lifecycle.

---

**Description**

The Personal Finance Management System (PFMS) shall preserve the completeness, consistency, accuracy, validity, and reliability of business information during all business operations.

---

**Requirement Statement**

Business information shall remain complete, consistent, accurate, valid, and reliable throughout the application lifecycle.

---

**Acceptance Criteria**

* Business information shall satisfy the applicable Business Rules.
* Inconsistent or invalid business information shall be prevented.
* Business information quality shall be maintained throughout all business operations.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

* Functional Testing
* Data Validation
* Review


### Maintainability

Maintainability requirements define the quality expectations that ensure the Personal Finance Management System (PFMS) remains modular, maintainable, extensible, and adaptable to future business and technical changes while minimizing the impact on existing functionality.

Maintainability requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS). They ensure that future enhancements, business changes, and system maintenance activities can be performed efficiently while preserving business integrity and application stability.

The following Non-Functional Requirements define the maintainability expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-MNT-001 – Future Extensibility

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Entire PFMS

---

**Quality Attribute**

Maintainability

---

**Purpose**

To ensure that future business capabilities can be incorporated into the Personal Finance Management System (PFMS) without significant redesign.

---

**Description**

The Personal Finance Management System (PFMS) shall support future business enhancements while preserving existing business functionality, data integrity, and application stability.

---

**Requirement Statement**

The application architecture shall support future business expansion with minimal impact on existing business functionality.

---

**Acceptance Criteria**

* Future business capabilities can be incorporated without requiring significant architectural redesign.
* Existing business functionality shall remain unaffected by future enhancements.
* Data integrity and application stability shall be preserved during system evolution.

---

**Dependencies**

None.

---

**Priority**

High

---

**Verification Method**

* Architecture Review
* Design Review

---

#### NFR-MNT-002 – Modular Architecture

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Entire PFMS

---

**Quality Attribute**

Maintainability

---

**Purpose**

To ensure that the Personal Finance Management System (PFMS) remains modular, maintainable, and adaptable as new business capabilities are introduced.

---

**Description**

The Personal Finance Management System (PFMS) shall organize business functionality into independent modules with clearly defined responsibilities and minimal interdependencies.

---

**Requirement Statement**

Business modules shall remain logically separated, loosely coupled, and independently maintainable.

---

**Acceptance Criteria**

* Business modules shall demonstrate clear functional boundaries.
* Modules shall have minimal interdependencies.
* Changes within one business module shall not unnecessarily impact other business modules.

---

**Dependencies**

Business Architecture.

---

**Priority**

High

---

**Verification Method**

* Architecture Review
* Design Review


### Usability

Usability requirements define the quality expectations that ensure the Personal Finance Management System (PFMS) provides a consistent, intuitive, efficient, and user-friendly experience for all users while minimizing operational complexity and reducing the likelihood of user errors.

Usability requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS). They ensure that users can perform business operations efficiently through consistent navigation, business terminology, user interface design, and meaningful system feedback.

The following Non-Functional Requirements define the usability expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-USA-001 – User Interface Consistency

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Usability

---

**Purpose**

To provide users with a consistent, intuitive, and predictable user experience throughout the Personal Finance Management System (PFMS).

---

**Description**

The Personal Finance Management System (PFMS) shall provide consistent business terminology, navigation, screen layouts, user interface components, and interaction patterns across all business modules.

---

**Requirement Statement**

The application shall maintain a consistent user interface throughout the Personal Finance Management System (PFMS).

---

**Acceptance Criteria**

* Business terminology shall remain consistent throughout the application.
* Similar business operations shall follow consistent interaction patterns.
* Navigation and screen layouts shall remain consistent across all business modules.
* Common user interface components shall behave consistently throughout the application.

---

**Dependencies**

Applicable Functional Requirements.

---

**Priority**

High

---

**Verification Method**

* User Acceptance Testing
* Usability Review

---

#### NFR-USA-002 – User-Friendly Error Messages

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Usability

---

**Purpose**

To ensure that business validation failures and unexpected application errors are communicated clearly and meaningfully to users.

---

**Description**

The Personal Finance Management System (PFMS) shall display meaningful, understandable, and actionable messages while preventing exposure of technical implementation details.

---

**Requirement Statement**

Business validation failures and application errors shall be communicated using meaningful, user-friendly messages.

---

**Acceptance Criteria**

* Users shall receive clear and understandable messages.
* Technical implementation details shall not be exposed to users.
* Messages shall assist users in taking appropriate corrective actions, where applicable.

---

**Dependencies**

Applicable Functional Requirements.

---

**Priority**

High

---

**Verification Method**

* Functional Testing
* User Acceptance Testing


### Compatibility

Compatibility requirements define the quality expectations that ensure the Personal Finance Management System (PFMS) operates consistently across the supported platforms, environments, and software components without affecting business functionality.

Compatibility requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS). They ensure that business operations remain consistent regardless of the supported deployment environment.

The following Non-Functional Requirements define the compatibility expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-CMP-001 – Platform Compatibility

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Entire PFMS

---

**Quality Attribute**

Compatibility

---

**Purpose**

To ensure that the Personal Finance Management System (PFMS) operates correctly within all supported deployment environments.

---

**Description**

The Personal Finance Management System (PFMS) shall function correctly on all supported deployment platforms without affecting business functionality or data integrity.

---

**Requirement Statement**

The application shall operate consistently across all supported deployment platforms.

---

**Acceptance Criteria**

* All supported business functions shall operate correctly on the supported platforms.
* Platform-specific issues shall not affect business functionality.
* Business integrity and data consistency shall be maintained across supported environments.

---

**Dependencies**

None.

---

**Priority**

Medium

---

**Verification Method**

* Compatibility Testing
* Functional Testing



### Auditability

Auditability requirements define the quality expectations that ensure significant business operations performed within the Personal Finance Management System (PFMS) can be traced, reviewed, verified, and investigated while preserving business integrity and accountability.

Auditability requirements apply across all Business Domains, Data Domains, business processes, workflows, and system components within the Personal Finance Management System (PFMS). They ensure that sufficient audit information is available to support operational monitoring, business verification, troubleshooting, and compliance activities.

The following Non-Functional Requirements define the auditability expectations applicable to the Personal Finance Management System (PFMS).

---

#### NFR-AUD-001 – Business Audit Information

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

All Business Modules

---

**Quality Attribute**

Auditability

---

**Purpose**

To support investigation, verification, troubleshooting, and accountability for significant business operations.

---

**Description**

The Personal Finance Management System (PFMS) shall maintain sufficient audit information for significant business operations in accordance with the applicable Business Rules.

---

**Requirement Statement**

Significant business operations shall produce sufficient audit information to support future investigation, verification, and accountability.

---

**Acceptance Criteria**

* Audit information shall be available for applicable business operations.
* Audit information shall support business investigation and verification.
* Audit information shall preserve accountability for significant business operations.

---

**Dependencies**

* Applicable Functional Requirements.
* Applicable Business Rules.

> **Note:** Requirement references shall be updated during the final traceability review.

---

**Priority**

High

---

**Verification Method**

* Functional Testing
* Audit Review
* Inspection


## Business Rules

The Business Rules define the business policies, constraints, validations, and decision logic that govern the operation of the Personal Finance Management System (PFMS).

Business Rules establish the conditions under which business operations shall be performed and ensure that business information is processed consistently, accurately, and in accordance with the business objectives of the Personal Finance Management System (PFMS). They provide the foundation for implementing the Functional Requirements, maintaining business integrity, preserving financial accuracy, and ensuring consistent business behavior throughout the application.

Unless otherwise specified, every Functional Requirement shall comply with the applicable Global Business Rules, General Business Rules, Functional Business Rules, Module Functional Business Rules, and any other applicable business rules defined within this Business Requirements Specification (BRS).

The Business Rules are organized into the following categories:

* Global Business Rules (GBR)
* General Business Rules (GEN)
* Functional Business Rules (FBR)
* Module Functional Business Rules (MFBR)

---

### Global Business Rules (GBR)

Global Business Rules define the fundamental business policies that apply across the entire Personal Finance Management System (PFMS), regardless of the Business Domain or Business Module.

These rules establish common business constraints, validation principles, and system-wide policies that shall be satisfied by all applicable business operations.

---

### General Business Rules (GEN)

General Business Rules define common business policies that apply across multiple Business Domains or Business Modules within the Personal Finance Management System (PFMS).

These rules promote consistency and standardization throughout the application while allowing more specific Functional Business Rules or Module Functional Business Rules to extend or refine the applicable business behavior where explicitly defined.

---

### Functional Business Rules (FBR)

Functional Business Rules define business policies applicable to one or more business functions within the Personal Finance Management System (PFMS).

These rules govern the business behavior of specific Functional Requirements and provide detailed business validations, constraints, calculations, and decision logic for the applicable business capabilities.

---

### Module Functional Business Rules (MFBR)

Module Functional Business Rules define detailed business policies that are applicable to a specific Business Module within a Business Domain.

These rules provide specialized validations, constraints, calculations, and decision logic that supplement the applicable Global Business Rules, General Business Rules, and Functional Business Rules for the respective Business Module.


### Global Business Rules (GBR)

Global Business Rules define the fundamental business policies that apply across the entire Personal Finance Management System (PFMS), regardless of the Business Domain or Business Module.

These rules establish common business constraints, validation principles, and system-wide policies that shall be satisfied by all applicable business operations.

---

#### GBR-001 – Unique Business Identifier

Every business entity maintained within the Personal Finance Management System (PFMS) shall possess a unique system-generated business identifier.

---

#### GBR-002 – Business Data Validation

Business information shall satisfy all applicable Business Rules before it is processed, stored, updated, or committed.

---

#### GBR-003 – Master Data Validation

Every business operation that references Master Data shall use valid and existing Master Data maintained within the Personal Finance Management System (PFMS).

---

#### GBR-004 – Positive Monetary Values

All monetary values shall be greater than zero unless explicitly permitted otherwise by the applicable Functional Business Rule or Module Functional Business Rule.

---

#### GBR-005 – Business Rule Hierarchy

Business operations shall comply with the applicable Business Rules according to the following precedence:

1. Global Business Rules (GBR)
2. General Business Rules (GEN)
3. Functional Business Rules (FBR)
4. Module Functional Business Rules (MFBR)

Where multiple Business Rules apply, the more specific Business Rule shall take precedence unless explicitly stated otherwise.

---

#### GBR-006 – System-Derived Values

System-derived business information shall not be manually modified unless explicitly permitted by the applicable Business Rule.

All system-derived values shall be dynamically derived in accordance with the applicable Business Rules.

---

#### GBR-007 – Business Rule Compliance

Every business operation performed within the Personal Finance Management System (PFMS) shall comply with all applicable Global Business Rules, General Business Rules, Functional Business Rules, and Module Functional Business Rules before successful completion.


### General Business Rules (GEN)

General Business Rules define common business policies that apply across multiple Business Domains or Business Modules within the Personal Finance Management System (PFMS) but are not considered fundamental system-wide policies.

These rules establish standardized business behavior, common validations, processing principles, and operational guidelines that may be reused by multiple Functional Requirements and Business Modules. They promote consistency and standardization throughout the application while allowing more specific Functional Business Rules or Module Functional Business Rules to extend or refine the applicable business behavior where explicitly defined.


#### GR-001 – Business Reconciliation Processing

Business operations that require reconciliation between Operational Activity Management and Financial Transaction Management shall comply with the applicable reconciliation processing rules defined within the Personal Finance Management System (PFMS).

The reconciliation process provides the applicable waiting period before reminder processing begins, allowing related business information to be completed in accordance with the applicable Business Rules.

The following reconciliation scenarios shall apply unless otherwise specified by the applicable Functional Business Rule or Module Functional Business Rule:

* **Operational Activity Management → Financial Transaction Management**

  Where an Operational Activity record exists without the corresponding Financial Transaction, the system shall allow a reconciliation period of 24 hours. If the required Financial Transaction is not recorded within this period, reminder notifications shall be generated daily until the reconciliation is completed.

* **Financial Transaction Management → Operational Activity Management**

  Where a Financial Transaction exists without the corresponding Operational Activity record, the system shall generate the first reminder on the sixth day and the second reminder on the eleventh day after the transaction date. No additional reminders shall be generated after the second reminder unless otherwise specified.

* **Hard Cash Reconciliation**

  Hard Cash reconciliation shall follow the same reconciliation process as Financial Transaction Management → Operational Activity Management. However, after the second reminder, reminder notifications shall continue daily until the corresponding Hard Cash entry is recorded or the associated Payment Mode is changed to a non-Hard Cash payment method.

**Exception**

This General Business Rule does not apply to Milk processing. Milk payment reconciliation shall be performed through the applicable reconciliation mechanism and shall be governed by the corresponding Functional Business Rules or Module Functional Business Rules.


#### GR-002 – Mandatory Business Information

All mandatory business information required to perform a business operation shall be provided before the operation is processed.

Where applicable, additional mandatory business information may be required by the corresponding Functional Business Rule or Module Functional Business Rule.

Mandatory business information shall satisfy the applicable validation requirements before the business operation is successfully completed.


#### GR-003 – Business Date Validation

Business dates shall comply with the date validation rules applicable to the corresponding Business Module.

Business operations involving historical, current, or future business dates shall satisfy the applicable business date validation requirements before the operation is successfully completed.

Where future-dated business operations are permitted, they shall comply with the applicable Functional Business Rules or Module Functional Business Rules.


#### GR-004 – Duplicate Business Processing

Business operations shall prevent or appropriately manage duplicate business information in accordance with the applicable Business Rules.

Where duplicate business information is permitted, it shall comply with the corresponding Functional Business Rules or Module Functional Business Rules.

Business operations shall ensure that duplicate processing does not compromise business integrity, financial accuracy, or data consistency.


#### GR-005 – Historical Business Processing

Business operations involving historical business information shall comply with the historical processing rules applicable to the corresponding Business Module.

Where historical business information affects subsequent business operations, the system shall ensure that all dependent business information remains complete, accurate, consistent, and synchronized in accordance with the applicable Business Rules.

The specific historical processing behavior shall be governed by the corresponding Functional Business Rules or Module Functional Business Rules.


#### GR-006 – User Confirmation

The system shall obtain user confirmation before completing business operations that require explicit user acknowledgement in accordance with the applicable Business Rules.

The requirement for user confirmation and the corresponding confirmation behavior shall be governed by the applicable Functional Business Rules or Module Functional Business Rules.

---

#### GR-007 – Business Timestamp Management

Business information shall maintain the required business timestamps in accordance with the applicable Business Rules and operational requirements.

System-generated timestamps shall be maintained automatically wherever applicable to preserve business integrity, historical traceability, and auditability.

---

#### GR-008 – Business Visibility

Business information presented to users shall comply with the applicable visibility rules defined for the corresponding Business Module.

Business information shall be displayed accurately, consistently, and in accordance with the applicable Business Rules while preventing unauthorized disclosure of restricted business information.

---

#### GR-009 – Business Ordering

Business information shall be presented according to the default ordering rules defined for the corresponding Business Module.

Where applicable, business information shall support alternative ordering without affecting business integrity, business processing, or data consistency.

The default and alternative ordering behavior shall be governed by the corresponding Functional Business Rules or Module Functional Business Rules.


### Functional Business Rules (FBR)

Functional Business Rules define the business policies, processing principles, calculations, validations, and decision logic that govern the core business functions of the Personal Finance Management System (PFMS).

These rules apply across one or more Business Domains and Business Modules where common business functionality is required. Functional Business Rules establish standardized business processing that supports financial integrity, business consistency, chronological processing, dynamic calculations, reconciliation, and other cross-functional business operations throughout the application.

Functional Business Rules shall comply with the applicable Global Business Rules (GBR) and General Business Rules (GEN). Module Functional Business Rules (MFBR) may extend or specialize these rules where explicitly permitted by the corresponding business requirements.


#### FBR-001 – Financial Transaction

Every business event that results in a financial impact shall constitute a Financial Transaction within the Personal Finance Management System (PFMS).

A Financial Transaction represents the authoritative financial event that drives financial processing throughout the Personal Finance Management System (PFMS). It serves as the foundation for Budget determination, Budget utilization, Account Balance calculations, Reserve processing, Financial Reporting, Financial Analytics, Dashboard presentation, reconciliation, and all other dependent financial processing.

Where a Financial Transaction is associated with another Business Domain or Business Module, it shall comply with the applicable Global Business Rules (GBR), General Business Rules (GEN), Functional Business Rules (FBR), and Module Functional Business Rules (MFBR) governing that business relationship.

A Financial Transaction shall remain the single source of truth for all financial processing within the Personal Finance Management System (PFMS).


#### FBR-002 – Financial Currency

All Financial Transactions within the Personal Finance Management System (PFMS) shall use the configured application currency.

The Personal Finance Management System (PFMS) shall support only one application currency at any given time.

Where the application currency is changed in the future, all subsequent Financial Transactions shall use the newly configured application currency. Simultaneous processing of multiple application currencies shall not be supported unless introduced through a future business enhancement.

All financial calculations, budgeting, reserve processing, reporting, analytics, dashboards, and other dependent financial processing shall use the configured application currency consistently throughout the application.


#### FBR-003 – Salary Boundary Processing

Salary Boundary Processing shall determine the Budget Period associated with every Financial Transaction within the Personal Finance Management System (PFMS).

Every Financial Transaction shall belong to one and only one Budget Period. A Budget Period consists of a Budget Month and the corresponding Budget Year, determined in accordance with the applicable Salary Boundary.

The Salary Boundary shall remain the logical separator between consecutive Budget Periods and shall govern the assignment of Financial Transactions to the appropriate Budget Period.

When a Financial Transaction is designated as the Salary Boundary (`is_salary_boundary = 'Y'`), the system shall automatically establish the next Budget Period. The assigned `budget_month` and `budget_year` shall represent the salary utilization period rather than the calendar month and year of the Salary Boundary transaction date.

All Financial Transactions recorded after a Salary Boundary transaction shall automatically inherit the corresponding Budget Month and Budget Year until the next Salary Boundary transaction establishes a new Budget Period.

Only one Salary Boundary transaction shall exist for a Budget Period unless explicitly permitted by the applicable Historical Financial Processing rules.

The assigned Budget Period shall remain associated with the Financial Transaction unless modified in accordance with the applicable Historical Financial Processing and Salary Boundary Modification rules.

Any business operation affecting the Salary Boundary shall comply with the applicable Global Business Rules (GBR), General Business Rules (GEN), Functional Business Rules (FBR), and Module Functional Business Rules (MFBR) before completion.

##### Example

| Transaction Date | is_salary_boundary | Budget Month | Budget Year | Remarks |
|------------------|--------------------|--------------|-------------|---------|
| 25-Aug-2026 | Y | 9 | 2026 | Establishes the September 2026 Budget Period. |
| 28-Aug-2026 | N | 9 | 2026 | Inherits the September 2026 Budget Period. |
| 10-Sep-2026 | N | 9 | 2026 | Inherits the September 2026 Budget Period. |
| 24-Sep-2026 | N | 9 | 2026 | Inherits the September 2026 Budget Period. |
| 25-Sep-2026 | Y | 10 | 2026 | Establishes the October 2026 Budget Period. |


#### FBR-004 – Financial Chronology

Financial Transactions shall be interpreted according to their Business Transaction Date and the applicable Salary Boundary.

The Salary Boundary shall determine the logical separation between consecutive Budget Periods and shall establish the chronological relationship of Financial Transactions across Budget Periods.

Financial Transactions belonging to the same Budget Period may be entered in any order. The sequence of transaction entry within a Budget Period shall not affect Budget determination, Budget utilization, financial calculations, or business integrity.

The chronological relationship between Financial Transactions shall be preserved for all financial processing, reporting, budgeting, reserve processing, reconciliation, dashboard presentation, and analytical activities.

Where multiple Financial Transactions occur on the same Business Transaction Date, the applicable Functional Business Rules shall determine the processing sequence.


#### FBR-005 – Historical Financial Processing

Business operations involving historical Financial Transactions shall preserve the financial integrity of the Personal Finance Management System (PFMS).

Where a historical Financial Transaction is created or modified, the system shall determine the scope of the historical impact before completing the business operation.

Historical Financial Processing shall preserve the correctness of the associated Budget Period, Salary Boundary, Account Balances, Reserve processing, Financial Reports, Financial Analytics, Dashboard presentation, and all other dependent financial information.

Where Historical Financial Processing affects the Salary Boundary, the corresponding Salary Boundary Processing rules and Salary Boundary Modification rules shall also apply.

The scope of Historical Financial Processing shall be determined in accordance with the applicable Functional Business Rules and Module Functional Business Rules.


#### FBR-006 – Financial Recalculation

Whenever a business operation affects dependent financial information, the Personal Finance Management System (PFMS) shall automatically recalculate all affected financial information before the business operation is successfully completed.

The scope of Financial Recalculation shall be determined based on the affected Financial Transactions and their dependent business information.

Dependent financial information includes, but is not limited to:

* Budget determination
* Budget utilization
* Account Balances
* Reserve processing
* Financial Summaries
* Financial Reports
* Financial Analytics
* Dashboard presentation
* Any other dependent financial information defined within the Personal Finance Management System (PFMS)

Financial Recalculation shall preserve business integrity, financial accuracy, chronological consistency, and data consistency throughout the application.

The scope and sequence of Financial Recalculation shall be governed by the applicable Functional Business Rules and Module Functional Business Rules.


#### FBR-007 – Financial Data Synchronization

Financial information maintained across multiple Business Domains and Business Modules shall remain synchronized in accordance with the applicable Business Rules.

Where a Financial Transaction depends upon information maintained by another Business Domain or Business Module, or another Business Domain or Business Module depends upon a Financial Transaction, the Personal Finance Management System (PFMS) shall ensure that all related business information remains synchronized throughout its business lifecycle.

Financial Data Synchronization shall preserve business integrity, financial accuracy, chronological consistency, and data consistency across all dependent business information.

The synchronization process shall comply with the applicable Global Business Rules (GBR), General Business Rules (GEN), Functional Business Rules (FBR), and Module Functional Business Rules (MFBR).


#### FBR-008 – Financial Dependency Processing

Business operations may establish dependencies between Financial Transactions and related business information maintained within one or more Business Domains or Business Modules.

The Personal Finance Management System (PFMS) shall identify and process all affected dependent business information before the successful completion of the business operation.

Financial Dependency Processing shall preserve business integrity, financial accuracy, chronological consistency, data consistency, and synchronization across all dependent business information.

Dependent business information may include, but is not limited to:

* Budget Management
* Account Balances
* Reserve Management
* Operational Activity Management
* Financial Reporting
* Financial Analytics
* Dashboard presentation
* Any other dependent business information defined within the Personal Finance Management System (PFMS)

The scope and sequence of Financial Dependency Processing shall be governed by the applicable Functional Business Rules and Module Functional Business Rules.


#### FBR-009 – Salary Boundary Modification

Salary Boundary modifications shall preserve Budget Period integrity and chronological financial consistency throughout the Personal Finance Management System (PFMS).

Whenever a Salary Boundary Transaction is modified, the Personal Finance Management System (PFMS) shall determine whether the requested modification represents a Salary Boundary Date Correction or a Salary Boundary Modification in accordance with the applicable Business Rules.

Where the modification qualifies as a Salary Boundary Date Correction, the system shall update only the Business Transaction Date while preserving the existing Salary Boundary, Budget Period, and all unaffected dependent financial information.

Where the modification does not qualify as a Salary Boundary Date Correction, the system shall perform all applicable Salary Boundary validations, Historical Financial Processing, Financial Recalculation, and Financial Dependency Processing before completing the business operation.

The resulting Budget Period assignment and all dependent financial information shall remain complete, accurate, consistent, and synchronized following the modification.


#### FBR-010 – Historical Transaction Correction

Incorrectly entered Financial Transactions shall be corrected through the standard Financial Transaction modification process.

Where a historical Financial Transaction is corrected, the Personal Finance Management System (PFMS) shall automatically determine the scope of the affected financial information before completing the business operation.

Historical Transaction Correction shall invoke all applicable Salary Boundary Processing, Financial Chronology, Historical Financial Processing, Financial Recalculation, Financial Data Synchronization, and Financial Dependency Processing rules to preserve business integrity and financial accuracy.

Following the completion of Historical Transaction Correction, all affected Budget Periods, Account Balances, Reserve processing, Financial Reports, Financial Analytics, Dashboard presentation, and other dependent business information shall remain complete, accurate, consistent, synchronized, and chronologically correct.

Historical Transaction Correction shall not compromise the integrity of unaffected Financial Transactions or dependent business information.


### Module Functional Business Rules (MFBR)

Module Functional Business Rules define the detailed business policies, validations, calculations, constraints, and decision logic that are applicable to a specific Business Module within the Personal Finance Management System (PFMS).

These rules govern the specialized business behavior of individual Business Modules and supplement the applicable Global Business Rules (GBR), General Business Rules (GEN), and Functional Business Rules (FBR). Module Functional Business Rules provide module-specific processing that cannot be generalized across multiple Business Domains or Business Modules.

Every Business Module shall comply with the applicable Global Business Rules (GBR), General Business Rules (GEN), Functional Business Rules (FBR), and the corresponding Module Functional Business Rules (MFBR). Where multiple Business Rules apply, the rule hierarchy defined within this Business Requirements Specification (BRS) shall be followed.


The Module Functional Business Rules are organized according to the following Business Domains and Business Modules:

* Master Data Management

  * Account
  * Category
  * SubCategory
  * Payment Mode
  * Merchant

* Financial Planning

  * Budget
  * Insurance
  * Investment
  * Loan
  * Utility

* Operational Activity Management

  * Milk
  * Bike Fuel
  * Engine Oil
  * Bike Maintenance

* Financial Transaction Management

  * Financial Transaction
  * Hard Cash

* Reserve Management

  * Reserve

### Master Data Management

Master Data Management Module Functional Business Rules define the business policies governing the lifecycle, maintenance, validation, availability, and usage of the Master Data maintained within the Personal Finance Management System (PFMS).

Master Data provides the foundational business information required by the Financial Planning, Operational Activity Management, Financial Transaction Management, Reserve Management, and Reporting & Analytics Business Domains. Master Data supports business consistency, standardization, and data integrity throughout the application.

The Master Data Management Business Domain consists of the following Business Modules:

* Account
* Category
* SubCategory
* Payment Mode
* Merchant

The following Module Functional Business Rules define the business behavior applicable to each Master Data Business Module.


#### Account

The Account Module Functional Business Rules define the business policies governing the lifecycle, maintenance, and usage of Accounts within the Personal Finance Management System (PFMS).

Accounts identify the financial sources and destinations used by Financial Transactions. Accounts do not maintain financial balances or monetary information. Financial balances shall be dynamically derived from the associated Financial Transactions.

---

##### MFBR-ACC-001 – Unique Account

Each Account shall have a unique Account Name.

---

##### MFBR-ACC-002 – Mandatory Account Information

Every Account shall contain all mandatory Account information before it participates in business operations.

The mandatory information shall include:

* Account Name
* Account Type
* Purpose
* Primary Account Indicator

The supported Account Types shall be:

* Salary + Savings
* Savings
* Cash
* APY

Credit Cards shall not be maintained as Accounts within the Personal Finance Management System (PFMS).

---

##### MFBR-ACC-003 – Primary Account

Only one Account shall be designated as the Primary Account at any given time.

---

##### MFBR-ACC-004 – Primary Account Transition

When an Account is designated as the Primary Account, the existing Primary Account shall automatically cease to be the Primary Account.

---

##### MFBR-ACC-005 – Account Availability

Only Active Accounts shall participate in new business operations.

Inactive Accounts shall remain available for historical business information.

---

##### MFBR-ACC-006 – Account Reference Restriction

An Account referenced by one or more Financial Transactions shall not compromise the integrity of historical business information.

Where an Account participates in historical Financial Transactions, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-ACC-007 – Default Account Selection

Where a Primary Account exists, it shall be presented as the default Account for applicable business operations.

---

##### MFBR-ACC-008 – Account Inactivation

Inactive Accounts shall not participate in future business operations.

Historical business information shall continue to reference the inactive Account without modification.


#### Category

The Category Module Functional Business Rules define the business policies governing the lifecycle, maintenance, and usage of Categories within the Personal Finance Management System (PFMS).

Categories provide the primary business classification for Financial Transactions and other applicable business information.

---

##### MFBR-CAT-001 – Unique Category

Each Category shall have a unique Category Name.

---

##### MFBR-CAT-002 – Mandatory Category Information

Every Category shall contain all mandatory Category information before it participates in business operations.

The mandatory information shall include:

* Category Name

---

##### MFBR-CAT-003 – Category Availability

Only Active Categories shall participate in new business operations.

Inactive Categories shall remain available for historical business information.

---

##### MFBR-CAT-004 – Category Reference Restriction

A Category referenced by one or more business entities shall not compromise the integrity of historical business information.

Where a Category participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-CAT-005 – Category Inactivation

Inactive Categories shall not participate in future business operations.

Historical business information shall continue to reference the inactive Category without modification.


#### SubCategory

The SubCategory Module Functional Business Rules define the business policies governing the lifecycle, maintenance, and usage of SubCategories within the Personal Finance Management System (PFMS).

SubCategories provide the detailed business classification for Financial Transactions and other applicable business information.

---

##### MFBR-SCAT-001 – Parent Category Association

Every SubCategory shall belong to one and only one Category.

A SubCategory shall not exist without a valid Category.

---

##### MFBR-SCAT-002 – Mandatory SubCategory Information

Every SubCategory shall contain all mandatory SubCategory information before it participates in business operations.

The mandatory information shall include:

* Category
* SubCategory Name

---

##### MFBR-SCAT-003 – Unique SubCategory

SubCategory Names shall be unique within the same Category.

The same SubCategory Name may exist under different Categories.

---

##### MFBR-SCAT-004 – SubCategory Availability

Only Active SubCategories shall participate in new business operations.

Inactive SubCategories shall remain available for historical business information.

---

##### MFBR-SCAT-005 – SubCategory Reference Restriction

A SubCategory referenced by one or more business entities shall not compromise the integrity of historical business information.

Where a SubCategory participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-SCAT-006 – SubCategory Inactivation

Inactive SubCategories shall not participate in future business operations.

Historical business information shall continue to reference the inactive SubCategory without modification.



#### Payment Mode

The Payment Mode Module Functional Business Rules define the business policies governing the lifecycle, maintenance, and usage of Payment Modes within the Personal Finance Management System (PFMS).

Payment Modes identify the business method through which Financial Transactions are settled. They do not define the financial processing associated with a Payment Mode, which is governed by the applicable Functional Business Rules (FBR) and Module Functional Business Rules (MFBR).

---

##### MFBR-PMT-001 – Unique Payment Mode

Each Payment Mode shall have a unique Payment Mode Name.

---

##### MFBR-PMT-002 – Mandatory Payment Mode Information

Every Payment Mode shall contain all mandatory Payment Mode information before it participates in business operations.

The mandatory information shall include:

* Payment Mode Name

---

##### MFBR-PMT-003 – Payment Mode Availability

Only Active Payment Modes shall participate in new business operations.

Inactive Payment Modes shall remain available for historical business information.

---

##### MFBR-PMT-004 – Payment Mode Reference Restriction

A Payment Mode referenced by one or more business entities shall not compromise the integrity of historical business information.

Where a Payment Mode participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-PMT-005 – Payment Mode Inactivation

Inactive Payment Modes shall not participate in future business operations.

Historical business information shall continue to reference the inactive Payment Mode without modification.


#### Merchant

The Merchant Module Functional Business Rules define the business policies governing the lifecycle, maintenance, and usage of Merchants within the Personal Finance Management System (PFMS).

Merchants identify the business organization or individual associated with a business operation where applicable.

Merchant information shall be maintained independently of Financial Transaction processing and shall only be required where specified by the applicable Business Rules.

---

##### MFBR-MER-001 – Merchant Applicability

Merchant information shall be maintained in accordance with the following business rules:

* Merchant shall be optional for Financial Transactions.
* Merchant shall be optional for Hard Cash business operations.
* Merchant shall not be maintained for Milk business operations.
* Merchant shall not be maintained for Gas Cylinder business operations.
* Merchant shall be mandatory for:

  * Bike Fuel
  * Engine Oil
  * Bike Maintenance
  * Insurance
  * Investment
  * Loan
  * Utility

---

##### MFBR-MER-002 – Unique Merchant

Each Merchant shall have a unique Merchant Name.

---

##### MFBR-MER-003 – Merchant Availability

Only Active Merchants shall participate in new business operations.

Inactive Merchants shall remain available for historical business information.

---

##### MFBR-MER-004 – Merchant Reference Restriction

A Merchant referenced by one or more business entities shall not compromise the integrity of historical business information.

Where a Merchant participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-MER-005 – Merchant Inactivation

Inactive Merchants shall not participate in future business operations.

Historical business information shall continue to reference the inactive Merchant without modification.


### Financial Planning

Financial Planning Module Functional Business Rules define the business policies governing the planning, management, validation, calculation, and monitoring of planned financial activities within the Personal Finance Management System (PFMS).

The Financial Planning Business Domain supports financial planning by managing budgets, investments, insurance, loans, and utilities. It establishes the business rules required to plan future financial obligations, monitor financial commitments, and support informed financial decision-making while maintaining business integrity and financial accuracy throughout the application.

The Financial Planning Business Domain consists of the following Business Modules:

* Budget
* Insurance
* Investment
* Loan
* Utility

The following Module Functional Business Rules define the business behavior applicable to each Financial Planning Business Module.


#### Budget

The Budget Module Functional Business Rules define the business policies governing the planning, allocation, utilization, monitoring, and lifecycle of Budgets within the Personal Finance Management System (PFMS).

Budgets represent planned financial allocations for a Category and SubCategory within a specific Budget Period. Budget information supports financial planning and monitoring and operates independently of Financial Transaction processing unless explicitly defined by the applicable Business Rules.

---

##### MFBR-BUD-001 – Budget Allocation

Budget allocations shall be maintained on a Budget Period basis.

A Budget may be allocated independently for any valid Category and SubCategory combination.

---

##### MFBR-BUD-002 – Optional Budget

Financial Transactions shall not require an existing Budget allocation.

Likewise, the absence of Financial Transactions shall not prevent Budget allocation.

Transactions without a corresponding Budget allocation shall be treated as unplanned financial activities during Budget variance reporting.

---

##### MFBR-BUD-003 – Mandatory Budget Information

Every Budget shall contain all mandatory Budget information before it participates in business operations.

The mandatory information shall include:

* Budget Period
* Category
* SubCategory
* Budget Amount

---

##### MFBR-BUD-004 – Unique Budget Allocation

Only one Budget allocation shall exist for the same:

* Budget Period
* Category
* SubCategory

---

##### MFBR-BUD-005 – Budget Reference Restriction

A Budget referenced by one or more business entities shall not compromise the integrity of historical business information.

Where a Budget participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-BUD-006 – Budget Utilization

Budget utilization shall be determined by aggregating all applicable Financial Transactions belonging to the same Budget Period, Category, and SubCategory.

Budget utilization shall be independent of the Account, Payment Mode, or Merchant associated with the Financial Transactions.

---

##### MFBR-BUD-007 – Budget Exceeded

The Personal Finance Management System (PFMS) shall identify when Budget utilization exceeds the allocated Budget Amount.

The corresponding Budget shall remain valid after the allocated Budget Amount has been exceeded.

---

##### MFBR-BUD-008 – Budget Variance

Budget Variance shall be determined as the difference between the allocated Budget Amount and the Budget Utilization.

Budget Variance may be:

* Positive, indicating that Budget remains available.
* Zero, indicating that the allocated Budget has been fully utilized.
* Negative, indicating that Budget utilization has exceeded the allocated Budget.

Budget Variance shall represent the actual financial position for the corresponding Budget.

---

##### MFBR-BUD-009 – Unused Budget

A Budget that has no applicable Financial Transactions for the corresponding Budget Period shall be considered an Unused Budget.

---

##### MFBR-BUD-010 – Budget Independence

Budgets represent planned financial allocations.

The existence, modification, or absence of a Budget shall not prevent the recording, processing, or interpretation of Financial Transactions within the Personal Finance Management System (PFMS).


#### Insurance

The Insurance Module Functional Business Rules define the business policies governing the registration, lifecycle, maintenance, and management of Insurance records within the Personal Finance Management System (PFMS).

The Insurance module maintains the current business information associated with an Insurance policy. Premium payment history shall not be maintained within the Insurance module and shall instead be represented through the corresponding Financial Transactions.

---

##### MFBR-INS-001 – Insurance Record

Each Insurance record shall represent one Insurance policy maintained by the user.

---

##### MFBR-INS-002 – Insurance Identification

Every Insurance record shall possess a unique system-generated Insurance Reference.

The Insurance Reference shall uniquely identify the Insurance record within the Personal Finance Management System (PFMS) and shall not represent the official Policy Number assigned by the Insurance Provider.

---

##### MFBR-INS-003 – Mandatory Insurance Information

Every Insurance record shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

* Policy Name
* Insurance Type
* Insurance Provider
* Policy Number
* Policy Start Date
* Premium Amount
* Premium Payment Frequency
* Premium Payment End Date
* Maturity Date
* Local Grace Period
* Insurance Status

---

##### MFBR-INS-004 – Insurance Timeline

The Policy Start Date shall occur on or before the Premium Payment End Date.

The Premium Payment End Date shall occur on or before the Maturity Date.

Limited premium payment policies may have a Premium Payment End Date earlier than the Maturity Date.

---

##### MFBR-INS-005 – Premium Payment Frequency

Every Insurance policy shall define the applicable Premium Payment Frequency.

The supported Premium Payment Frequencies shall include:

* Monthly
* Quarterly
* Half-Yearly
* Yearly

---

##### MFBR-INS-006 – Insurance Type Processing

Every Insurance record shall belong to one Insurance Type.

The business behavior applicable to an Insurance record shall be determined by its Insurance Type.

Insurance Types may define additional business attributes or processing rules while complying with the applicable Business Rules.

---

##### MFBR-INS-007 – Local Grace Period

Each Insurance policy may define a Local Grace Period.

The Local Grace Period shall determine the reminder and payment monitoring behavior applicable only to the corresponding Insurance policy.

The Local Grace Period is independent of the General Business Reconciliation Processing defined within the Personal Finance Management System (PFMS).

---

##### MFBR-INS-008 – Financial Association

Every Insurance premium payment shall have one corresponding Financial Transaction.

The Insurance module shall maintain only the current Insurance information.

Financial accounting and premium payment history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-INS-009 – Insurance Availability

Only Active Insurance records shall participate in new business operations.

Inactive Insurance records shall remain available for historical business information.

---

##### MFBR-INS-010 – Insurance Reference Restriction

An Insurance record referenced by one or more Financial Transactions shall not compromise the integrity of historical business information.

Where an Insurance record participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-INS-011 – Insurance Inactivation

Inactive Insurance records shall not participate in future business operations.

Historical business information shall continue to reference the inactive Insurance record without modification.


#### Investment

The Investment Module Functional Business Rules define the business policies governing the registration, lifecycle, maintenance, monitoring, valuation, and management of Investments within the Personal Finance Management System (PFMS).

The Investment module maintains the current business information associated with user Investments. Financial activities associated with Investments shall be represented through the corresponding Financial Transactions.

---

##### MFBR-INV-001 – Investment Record

Each Investment record shall represent one Investment maintained by the user.

---

##### MFBR-INV-002 – Investment Identification

Every Investment record shall possess a unique system-generated Investment Reference.

The Investment Reference shall uniquely identify the Investment record within the Personal Finance Management System (PFMS) and shall not represent an identifier assigned by the Investment Provider.

---

##### MFBR-INV-003 – Mandatory Investment Information

Every Investment record shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

* Investment Name
* Investment Type
* Investment Provider
* Investment Start Date
* Principal Amount
* Current Value (where applicable)
* Maturity Date (where applicable)
* Investment Status

---

##### MFBR-INV-004 – Investment Timeline

The Investment Start Date shall occur on or before the Maturity Date where a Maturity Date is applicable.

Investments without a predefined maturity period may remain without a Maturity Date.

---

##### MFBR-INV-005 – Investment Valuation

Every Investment shall maintain its Principal Amount.

Where applicable, the Current Value may be updated periodically to reflect the latest known market value, redemption value, or maturity value.

Updating the Current Value shall not modify the Principal Amount.

---

##### MFBR-INV-006 – Investment Type Processing

Every Investment record shall belong to one Investment Type.

The supported Investment Types may include:

- Fixed Deposit (FD)
- Recurring Deposit (RD)
- Public Provident Fund (PPF)
- Employee Provident Fund (EPF)
- National Pension Scheme (NPS)
- Atal Pension Yojana (APY)
- Mutual Fund
- Systematic Investment Plan (SIP)
- Stocks
- Bonds
- Others

The business behavior applicable to an Investment shall be determined by its Investment Type.

---

##### MFBR-INV-007 – Investment Status

Every Investment shall maintain one Investment Status throughout its lifecycle.

The supported Investment Status values shall include:

* Active
* Matured
* Closed

---

##### MFBR-INV-008 – Financial Association

All financial activities associated with an Investment, including purchases, deposits, SIP contributions, recurring contributions, additional investments, withdrawals, redemptions, dividends, interest receipts, maturity proceeds, and similar financial events shall be represented through the corresponding Financial Transactions.

The Investment module shall maintain only the current Investment information.

Financial accounting and Investment transaction history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-INV-009 – APY Investment Processing

Atal Pension Yojana (APY) shall be maintained as an Investment Type.

For APY Investments:

* The Monthly Contribution Amount shall be greater than zero.
* The Personal Finance Management System (PFMS) shall monitor the designated Account for the upcoming Monthly Contribution.
* When the available balance of the designated Account is insufficient for the upcoming Monthly Contribution, PFMS shall notify the user to maintain sufficient funds before the scheduled deduction.

---

##### MFBR-INV-010 – Investment Availability

Only Active Investment records shall participate in new business operations.

Inactive Investment records shall remain available for historical business information.

---

##### MFBR-INV-011 – Investment Reference Restriction

An Investment record referenced by one or more Financial Transactions shall not compromise the integrity of historical business information.

Where an Investment record participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-INV-012 – Investment Inactivation

Inactive Investment records shall not participate in future business operations.

Historical business information shall continue to reference the inactive Investment record without modification.


#### Loan

The Loan Module Functional Business Rules define the business policies governing the registration, lifecycle, maintenance, monitoring, and management of Loans within the Personal Finance Management System (PFMS).

The Loan module maintains the current business information associated with user Loans. Loan repayment history shall not be maintained within the Loan module and shall instead be represented through the corresponding Financial Transactions.

---

##### MFBR-LON-001 – Loan Record

Each Loan record shall represent one Loan maintained by the user.

---

##### MFBR-LON-002 – Loan Identification

Every Loan record shall possess a unique system-generated Loan Reference.

The Loan Reference shall uniquely identify the Loan record within the Personal Finance Management System (PFMS) and shall not represent the official Loan Account Number assigned by the Lending Institution.

---

##### MFBR-LON-003 – Mandatory Loan Information

Every Loan record shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

* Loan Name
* Loan Type
* Lending Institution
* Loan Start Date
* Loan End Date (where applicable)
* Principal Amount
* Interest Rate
* EMI Amount
* Payment Frequency
* Last Payment Date (where applicable)
* Loan Status

---

##### MFBR-LON-004 – Loan Timeline

The Loan Start Date shall occur on or before the Loan End Date where a Loan End Date is applicable.

The Loan End Date may initially represent the expected loan completion date and may be updated when the Loan is fully settled.

The Last Payment Date shall represent the most recent successful Loan repayment and shall not maintain historical repayment information.

---

##### MFBR-LON-005 – Loan Repayment

Every Loan shall define the agreed repayment amount and repayment frequency.

The repayment schedule shall be used for monitoring the Loan throughout its lifecycle.

---

##### MFBR-LON-006 – Loan Status

Every Loan shall maintain one Loan Status throughout its lifecycle.

The supported Loan Status values shall include:

* Active
* Closed

---

##### MFBR-LON-007 – Financial Association

All financial activities associated with a Loan, including Loan disbursements, EMI payments, part-payments, foreclosure payments, interest payments, penalties, and other Loan-related financial events shall be represented through the corresponding Financial Transactions.

The Loan module shall maintain only the current Loan information.

Financial accounting and Loan repayment history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-LON-008 – Loan Availability

Only Active Loan records shall participate in new business operations.

Inactive Loan records shall remain available for historical business information.

---

##### MFBR-LON-009 – Loan Reference Restriction

A Loan record referenced by one or more Financial Transactions shall not compromise the integrity of historical business information.

Where a Loan record participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-LON-010 – Loan Inactivation

Inactive Loan records shall not participate in future business operations.

Historical business information shall continue to reference the inactive Loan record without modification.


#### Utility

The Utility Module Functional Business Rules define the business policies governing the registration, lifecycle, maintenance, monitoring, and management of Utility services within the Personal Finance Management System (PFMS).

The Utility module maintains the current business information associated with recurring Utility services, subscriptions, and renewable service providers. Utility payment history shall not be maintained within the Utility module and shall instead be represented through the corresponding Financial Transactions.

---

##### MFBR-UTL-001 – Utility Record

Each Utility record shall represent one recurring Utility service, subscription, or renewable service maintained by the user.

Lifetime or one-time Utility services shall not be maintained within the Utility module.

---

##### MFBR-UTL-002 – Utility Identification

Every Utility record shall possess a unique system-generated Utility Reference.

The Utility Reference shall uniquely identify the Utility record within the Personal Finance Management System (PFMS) and shall not represent an identifier assigned by the Service Provider.

---

##### MFBR-UTL-003 – Mandatory Utility Information

Every Utility record shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

* Utility Name
* Utility Type
* Service Provider
* Billing Frequency
* Service Start Date
* Utility Status

Where applicable, a Reference Identifier may be maintained as free text for provider-specific identification, such as a customer number, subscriber ID, account number, mobile number, broadband ID, FASTag number, or similar identifiers.

---

##### MFBR-UTL-004 – Utility Timeline

The Service Start Date shall represent the commencement of the Utility service.

---

##### MFBR-UTL-005 – Billing Frequency

Every Utility shall define the applicable Billing Frequency.

The supported Billing Frequencies shall include:

* Monthly
* Quarterly
* Half-Yearly
* Yearly
* On Demand

---

##### MFBR-UTL-006 – Utility Status

Every Utility shall maintain one Utility Status throughout its lifecycle.

The supported Utility Status values shall include:

* Active
* Inactive

---

##### MFBR-UTL-007 – Financial Association

All financial activities associated with a Utility, including bill payments, recharges, subscription renewals, recurring charges, and other Utility-related financial events shall be represented through the corresponding Financial Transactions.

The Utility module shall maintain only the current Utility information.

Financial accounting and Utility payment history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-UTL-008 – Utility Availability

Only Active Utility records shall participate in new business operations.

Inactive Utility records shall remain available for historical business information.

---

##### MFBR-UTL-009 – Utility Reference Restriction

A Utility record referenced by one or more Financial Transactions shall not compromise the integrity of historical business information.

Where a Utility record participates in historical business information, the corresponding business relationships shall remain preserved in accordance with the applicable Business Rules.

---

##### MFBR-UTL-010 – Utility Inactivation

Inactive Utility records shall not participate in future business operations.

Historical business information shall continue to reference the inactive Utility record without modification.


### Operational Activity Management

Operational Activity Management Module Functional Business Rules define the business policies governing the recording, maintenance, monitoring, and lifecycle of operational activities within the Personal Finance Management System (PFMS).

The Operational Activity Management Business Domain maintains business information associated with recurring operational activities that may require corresponding Financial Transactions. These activities support operational tracking, financial synchronization, reminder processing, and business monitoring while maintaining consistency between operational records and financial records throughout the application.

The Operational Activity Management Business Domain consists of the following Business Modules:

* Milk
* Gas Cylinder
* Bike Fuel
* Engine Oil
* Bike Maintenance

The following Module Functional Business Rules define the business behavior applicable to each Operational Activity Management Business Module.


#### Milk

The Milk Module Functional Business Rules define the business policies governing the recording, monitoring, settlement, and lifecycle of daily milk supplies received from the user's designated regular milk vendor within the Personal Finance Management System (PFMS).

The Milk module functions as an operational ledger. It records daily milk supplies and derives the settlement amount for the corresponding settlement period. Financial settlement shall be represented by a single corresponding Financial Transaction.

---

##### MFBR-MLK-001 – Regular Vendor

Milk records shall be maintained exclusively for the user's designated regular milk vendor.

One-time milk or curd purchases from other vendors shall not be maintained within the Milk module and shall instead be recorded directly as Financial Transactions.

Merchant information shall not be maintained for Milk records.

---

##### MFBR-MLK-002 – Operational Ledger

The Milk module shall function solely as an operational ledger.

Daily Milk records shall not constitute Financial Transactions.

The module shall maintain only operational business information.

Financial accounting, budgeting, reporting, and financial analytics shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-MLK-003 – Daily Milk Record

Only one Milk record shall exist for each Business Date.

Daily Milk records shall always be created through insertion of a new record.

The daily record may contain any valid combination of Buffalo Milk, Cow Milk, and Curd quantities, including zero values.

---

##### MFBR-MLK-004 – Daily Quantity Validation

Each Milk record shall independently maintain the quantity and amount for:

* Buffalo Milk
* Cow Milk
* Curd

Each product shall be optional within a Milk record.

The quantity and amount associated with each product shall be zero or greater and shall be validated independently of the other products.

A Milk record shall be maintained for every Business Date to preserve a complete operational history, including days on which no Milk or related products are supplied.

Daily totals, settlement totals, and other derived values shall be calculated through business processing and shall not be maintained within the Milk module.



---

##### MFBR-MLK-005 – Settlement Derivation

At the completion of each settlement period, PFMS shall automatically derive the settlement amount using all applicable Milk records belonging to the corresponding settlement period.

---

##### MFBR-MLK-006 – Settlement Composition

The derived settlement shall include:

* Total Buffalo Milk Amount
* Total Cow Milk Amount
* Total Curd Amount
* Grand Total Payable

System-generated remarks associated with the settlement shall be derived automatically.

---

##### MFBR-MLK-007 – Settlement Independence

Deriving the settlement amount shall not constitute Financial Settlement.

Financial Settlement shall occur only after the corresponding Financial Transaction has been successfully completed.

---

##### MFBR-MLK-008 – Financial Settlement

A single Financial Transaction shall represent the settlement of one Milk settlement period.

No Financial Transaction shall be created before the user confirms the settlement.

---

##### MFBR-MLK-009 – Editable Before Settlement

Milk records belonging to a settlement period shall remain available for business updates until the corresponding settlement has been completed.

---

##### MFBR-MLK-010 – Post-Settlement Protection

After successful Financial Settlement, the corresponding Milk records shall be considered settled.

Settled Milk records shall not participate in further business modifications.

---

##### MFBR-MLK-011 – Post-Settlement Adjustment

Business information identified after settlement shall not modify previously settled Milk records.

Such adjustments shall be recorded within the next applicable settlement period in accordance with the applicable Business Rules.

---

##### MFBR-MLK-012 – Settlement Consistency

All Milk records belonging to the same settlement period shall maintain a consistent Settlement Status.



#### Gas Cylinder

The Gas Cylinder Module Functional Business Rules define the business policies governing the recording, monitoring, and lifecycle of domestic LPG cylinder replacement activities within the Personal Finance Management System (PFMS).

The Gas Cylinder module functions as an operational ledger. It records the complete operational lifecycle of each LPG cylinder replacement while all financial activities associated with the replacement shall be represented through the corresponding Financial Transactions.

---

##### MFBR-GAS-001 – Cylinder Replacement Cycle

Each Gas Cylinder record shall represent one complete LPG cylinder replacement cycle.

Cylinder quantity shall not be maintained.

A new Gas Cylinder record shall be created for every new cylinder replacement cycle.

---

##### MFBR-GAS-002 – Booking Information

Every Gas Cylinder record shall maintain the applicable booking information.

The Booking Date may occur after the Cylinder Change Date.

---

##### MFBR-GAS-003 – Delivery Information

Delivery information shall remain pending until the replacement cylinder has been successfully delivered.

Upon successful delivery, the corresponding delivery information shall be completed.

---

##### MFBR-GAS-004 – Operational Status

Every Gas Cylinder record shall maintain one operational status throughout its lifecycle.

The supported operational status values shall include:

* Pending
* Delivered
* Cancelled

---

##### MFBR-GAS-005 – Financial Association

All financial activities associated with a Gas Cylinder replacement cycle shall be represented through the corresponding Financial Transactions.

The Gas Cylinder module shall maintain only operational business information.

Financial accounting and payment history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-GAS-006 – Payment Processing

Gas Cylinder booking payments and delivery-related payments shall be maintained as separate Financial Transactions while remaining associated with the same Gas Cylinder record.

---

##### MFBR-GAS-007 – Booking Cancellation

When a Gas Cylinder booking is cancelled, the corresponding Gas Cylinder record shall preserve its operational history by maintaining the Cancelled status.

Cancelled Gas Cylinder records shall not be reused to represent subsequent booking cycles.

---

##### MFBR-GAS-008 – Refund Processing

Financial refunds resulting from cancelled Gas Cylinder bookings shall be represented through separate Financial Transactions in accordance with the applicable Business Rules.

---

##### MFBR-GAS-009 – Operational Availability

Gas Cylinder records shall remain available throughout their operational lifecycle and for historical business information.

---

##### MFBR-GAS-010 – Operational History Preservation

Historical Gas Cylinder records shall remain unchanged and shall preserve the complete operational history of LPG cylinder replacement activities.


#### Bike Fuel

The Bike Fuel Module Functional Business Rules define the business policies governing the recording, monitoring, and lifecycle of complete bike fuel refill cycles within the Personal Finance Management System (PFMS).

The Bike Fuel module functions as an operational ledger. It records complete fuel refill cycles using the vehicle's Trip Meter to support fuel performance analysis while all financial activities associated with fuel purchases shall be represented through the corresponding Financial Transactions.

---

##### MFBR-BFL-001 – Fuel Refill Cycle

Each Bike Fuel record shall represent one complete fuel refill cycle.

A fuel refill cycle begins immediately after a complete fuel refill and ends when the next complete fuel refill is performed.

---

##### MFBR-BFL-002 – Mandatory Fuel Refill Information

Every Bike Fuel record shall contain all mandatory operational information before it participates in business operations.

The mandatory information shall include:

* Fuel Refill Date
* Trip Meter Reading
* Distance Travelled
* Fuel Quantity
* Fuel Type

Fuel Type shall support the fuel variants maintained by the Personal Finance Management System (PFMS), including Normal Petrol and Premium Petrol.

---

##### MFBR-BFL-003 – Trip Meter Processing

The Trip Meter Reading shall be maintained for every completed fuel refill.

The Trip Meter shall be used to determine the total distance travelled during the completed fuel refill cycle.

After recording the completed fuel refill cycle, the Trip Meter shall be reset to begin measuring the next fuel refill cycle.

---

##### MFBR-BFL-004 – Financial Association

Every completed fuel purchase shall have one corresponding Financial Transaction.

The Bike Fuel module shall maintain only operational business information.

Financial accounting and fuel purchase history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-BFL-005 – Complete Fuel Cycle Requirement

Only completed fuel refill cycles shall be recorded.

Partial fuel refills that do not represent a completed fuel refill cycle shall not participate in fuel performance analysis.

---

##### MFBR-BFL-006 – Trip Meter Integrity

If the Trip Meter Reading is lost, reset, or otherwise becomes unavailable before completion of a fuel refill cycle, that fuel refill cycle shall not participate in fuel performance analysis.

Estimated or reconstructed Trip Meter Readings shall not be recorded.

---

##### MFBR-BFL-007 – Missed Fuel Cycle

A missed fuel refill cycle may be recorded during the applicable General Grace Period, provided sufficient supporting business information exists.

If the applicable General Grace Period expires or supporting information is unavailable, the missed fuel refill cycle shall not be reconstructed.

Subsequent fuel refill cycles shall continue normally.

---

##### MFBR-BFL-008 – Operational Availability

Bike Fuel records shall remain available throughout their operational lifecycle and for historical business information.

---

##### MFBR-BFL-009 – Operational History Preservation

Historical Bike Fuel records shall remain unchanged and shall preserve the complete operational history required for fuel performance analysis.


#### Engine Oil

The Engine Oil Module Functional Business Rules define the business policies governing the recording, monitoring, maintenance cycle management, and lifecycle of engine oil replacements within the Personal Finance Management System (PFMS).

The Engine Oil module functions as an operational maintenance ledger. It records completed engine oil replacement activities, maintains maintenance cycle information, and assists in determining the next recommended engine oil replacement while all financial activities associated with engine oil replacement shall be represented through the corresponding Financial Transactions.

---

##### MFBR-EOL-001 – Engine Oil Replacement

Each Engine Oil record shall represent one completed engine oil replacement performed for the vehicle.

Engine Oil Name shall not be maintained.

---

##### MFBR-EOL-002 – Mandatory Maintenance Information

Every Engine Oil record shall contain all mandatory operational information before it participates in business operations.

The mandatory information shall include:

* Oil Change Date
* Odometer Reading
* Recommended Oil Change Interval

---

##### MFBR-EOL-003 – Maintenance Cycle

The next recommended engine oil replacement shall be determined using the Odometer Reading recorded at the current engine oil replacement together with the applicable Recommended Oil Change Interval.

---

##### MFBR-EOL-004 – Maintenance Cycle Continuity

When an engine oil replacement is performed before the previously recommended maintenance interval, the subsequent maintenance cycle shall begin from the actual Odometer Reading at which the replacement was performed.

---

##### MFBR-EOL-005 – Financial Association

Every completed engine oil replacement shall have one corresponding Financial Transaction.

The Engine Oil module shall maintain only operational maintenance information.

Financial accounting and engine oil replacement history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-EOL-006 – Missed Maintenance Entry

A missed engine oil replacement may be recorded during the applicable General Grace Period, provided sufficient supporting business information exists.

If the applicable General Grace Period expires or supporting information is unavailable, the missed engine oil replacement shall not be reconstructed.

Subsequent maintenance cycles shall continue normally.

---

##### MFBR-EOL-007 – Operational Availability

Engine Oil records shall remain available throughout their operational lifecycle and for historical business information.

---

##### MFBR-EOL-008 – Operational History Preservation

Historical Engine Oil records shall remain unchanged and shall preserve the complete operational history required for maintenance analysis.


#### Bike Maintenance

The Bike Maintenance Module Functional Business Rules define the business policies governing the recording, monitoring, maintenance, and lifecycle of bike maintenance and repair activities within the Personal Finance Management System (PFMS).

The Bike Maintenance module functions as an operational maintenance ledger. It records completed bike maintenance and repair activities other than fuel refills and engine oil replacements while all financial activities associated with bike maintenance shall be represented through the corresponding Financial Transactions.

---

##### MFBR-BMT-001 – Maintenance Activity

Each Bike Maintenance record shall represent one completed bike maintenance or repair activity.

Engine oil replacement information shall not be maintained within the Bike Maintenance module.

---

##### MFBR-BMT-002 – Maintenance Scope

The Bike Maintenance module shall maintain maintenance and repair activities other than fuel refills and engine oil replacements.

Fuel refill activities shall be maintained exclusively within the Bike Fuel module.

Engine oil replacement activities shall be maintained exclusively within the Engine Oil module.

---

##### MFBR-BMT-003 – Mandatory Maintenance Information

Every Bike Maintenance record shall contain all mandatory operational information before it participates in business operations.

The mandatory information shall include:

* Maintenance Date
* Odometer Reading
* Service Type

Service Type shall be maintained as free text.

---

##### MFBR-BMT-004 – Financial Association

Every completed bike maintenance activity shall have one corresponding Financial Transaction.

The Bike Maintenance module shall maintain only operational maintenance information.

Financial accounting and bike maintenance history shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-BMT-005 – Missed Maintenance Entry

A missed bike maintenance activity may be recorded during the applicable General Grace Period, provided sufficient supporting business information exists.

If the applicable General Grace Period expires or supporting information is unavailable, the missed maintenance activity shall not be reconstructed.

Subsequent maintenance activities shall continue normally.

---

##### MFBR-BMT-006 – Operational Availability

Bike Maintenance records shall remain available throughout their operational lifecycle and for historical business information.

---

##### MFBR-BMT-007 – Operational History Preservation

Historical Bike Maintenance records shall remain unchanged and shall preserve the complete operational history required for maintenance analysis.


### Financial Transaction Management

Financial Transaction Management Module Functional Business Rules define the business policies governing the recording, processing, synchronization, reconciliation, and lifecycle of financial transactions within the Personal Finance Management System (PFMS).

The Financial Transaction Management Business Domain serves as the central financial processing domain of PFMS. It maintains all financial events that affect the user's financial position and acts as the authoritative source for financial accounting, budget utilization, account balances, reporting, analytics, reconciliation, and financial history throughout the application.

The Financial Transaction Management Business Domain consists of the following Business Modules:

* Hard Cash
* Financial Transaction

The following Module Functional Business Rules define the business behavior applicable to each Financial Transaction Management Business Module.



#### Hard Cash

The Hard Cash Module Functional Business Rules define the business policies governing the recording, monitoring, synchronization, reconciliation, and lifecycle of physical cash maintained by the user within the Personal Finance Management System (PFMS).

The Hard Cash module maintains the operational history of physical cash movements. It organizes those movements into logical Hard Cash Groups and maintains synchronization between the user's physical wallet and the corresponding Financial Transactions.

---

##### MFBR-HCW-001 – Hard Cash Ledger

The Hard Cash module shall maintain a complete history of all physical cash movements.

The Hard Cash module shall maintain only physical cash movements.

---

##### MFBR-HCW-002 – Hard Cash Movement

Every Hard Cash record shall represent either a Credit or a Debit movement of physical cash.

---

##### MFBR-HCW-003 – Current Cash Balance

The Hard Cash module shall maintain the Current Cash Balance after every Hard Cash movement.

The Current Cash Balance shall always represent the actual physical cash available to the user.

---

##### MFBR-HCW-004 – Physical Cash Reconciliation

The Current Cash Balance shall be used to reconcile the user's actual physical cash with the Hard Cash information maintained within the Personal Finance Management System (PFMS).

---

##### MFBR-HCW-005 – Hard Cash Group Association

Every Hard Cash record shall belong to one and only one Hard Cash Group.

---

##### MFBR-HCW-006 – Hard Cash Group Management

A new Hard Cash Group shall be created only when explicitly initiated by the user.

When a new Hard Cash Group is not initiated, subsequent Hard Cash records shall continue under the currently active Hard Cash Group.

Hard Cash Group identifiers shall be generated sequentially.

Users shall not manually create, modify, renumber, merge, split, reopen, or delete Hard Cash Groups.

---

##### MFBR-HCW-007 – Hard Cash Group Purpose

A Hard Cash Group represents a logical cash cycle used to organize physical cash movements.

A Hard Cash Group shall not represent ownership of cash, individual currency notes, denomination tracking, FIFO processing, LIFO processing, or any physical cash allocation methodology.

---

##### MFBR-HCW-008 – Initial Hard Cash Group

During the initial setup of the Personal Finance Management System (PFMS), the opening Hard Cash Balance shall initialize the first Hard Cash Group.

---

##### MFBR-HCW-009 – Hard Cash Processing

Physical cash received from external sources may increase the Current Cash Balance without initiating a new Hard Cash Group.

Depositing physical cash into an Account shall reduce the Current Cash Balance.

Business operations that increase the user's physical cash, such as cash withdrawals or similar cash acquisition activities, may initiate a new Hard Cash Group when explicitly requested by the user.

The initiation of a Hard Cash Group shall be determined solely by the user's business decision.

The Personal Finance Management System (PFMS) shall not infer the creation of a Hard Cash Group based on the Transaction Type, Amount, Payment Mode, Source of Cash, or any other business attribute.

---

##### MFBR-HCW-010 – Financial Association

Every Hard Cash movement shall have one corresponding Financial Transaction.

The Hard Cash module and the Financial Transaction module shall remain synchronized for all Hard Cash business operations.

The Current Cash Balance shall remain synchronized with the corresponding Financial Transactions.

Financial accounting shall be maintained exclusively through the Financial Transaction module.

---

##### MFBR-HCW-011 – Historical Hard Cash Integrity

Business operations performed on the active Hard Cash Group shall not modify previously completed Hard Cash Groups.

Historical Hard Cash Groups shall preserve their original business information throughout their lifecycle.

---

##### MFBR-HCW-012 – Hard Cash Independence

The Hard Cash module shall represent only the physical cash possessed by the user.

Account balances shall not directly affect the Current Cash Balance unless a corresponding Hard Cash business operation has occurred.

---

##### MFBR-HCW-013 – Hard Cash Balance Integrity

The Current Cash Balance shall always reflect the cumulative effect of all applicable Hard Cash movements processed within the Personal Finance Management System (PFMS).

The Hard Cash module shall not maintain an independent balance outside its recorded Hard Cash movement history.


#### Financial Transaction

The Financial Transaction Module Functional Business Rules define the business policies governing the recording, processing, synchronization, correction, and lifecycle of Financial Transactions within the Personal Finance Management System (PFMS).

The Financial Transaction module serves as the central financial processing module of PFMS. Every financial event affecting the user's financial position shall be represented through a Financial Transaction. The Transaction module acts as the authoritative source for financial accounting, budget utilization, account balances, reserve calculations, financial reporting, dashboards, reconciliation, and financial analytics throughout the application.

---

##### MFBR-TRN-001 – Financial Transaction

Each Financial Transaction shall represent one and only one financial business event.

Every financial event affecting the user's financial position shall have one corresponding Transaction.

Operational business information shall remain within the corresponding Operational Business Module while its financial impact shall be represented through the Transaction module.

---

##### MFBR-TRN-002 – Financial Source of Truth

The Financial Transaction module shall serve as the single financial source of truth within the Personal Finance Management System (PFMS).

All financial information maintained throughout PFMS shall be derived from the Transaction module.

Financial information shall not be independently maintained in multiple Business Modules.

---

##### MFBR-TRN-003 – Mandatory Transaction Information

Every Financial Transaction shall contain all mandatory business information before participating in financial processing.

The mandatory business information shall include:

* Transaction Date
* Account
* Category
* SubCategory
* Transaction Amount
* Payment Mode

Additional business information shall be maintained where applicable according to the corresponding Business Rules.

---

##### MFBR-TRN-004 – Financial Participation

Every successfully completed Financial Transaction shall immediately participate in all applicable financial processing.

Dependent financial processing includes, but is not limited to:

* Account Balance
* Budget Utilization
* Reserve Calculation
* Financial Planning
* Reporting
* Dashboard
* Financial Analytics

---

##### MFBR-TRN-005 – Budget Assignment

Every FinancialTransaction shall belong to one and only one Budget Period.

Budget assignment shall be determined in accordance with the applicable Financial Business Rules governing Salary Boundary processing and Budget Period determination.

---

##### MFBR-TRN-006 – Transaction Chronology

Financial Transaction processing shall preserve the chronological financial sequence determined by the applicable Financial Business Rules.

The chronological order in which Transactions are entered shall not affect financial integrity, Budget assignment, reporting, or analytical processing.

---

##### MFBR-TRN-007 – Historical Transaction Processing

Historical Financial Transactions may be created or modified where permitted by the applicable Business Rules.

Historical Financial Transaction processing shall comply with the applicable Financial Business Rules governing historical financial processing and Salary Boundary determination.

---

##### MFBR-TRN-008 – Historical Financial Recalculation

Whenever a historical Financial Transaction is created or modified, PFMS shall automatically perform all applicable financial recalculations.

The scope of recalculation shall be determined by the applicable Financial Business Rules.

---

##### MFBR-TRN-009 – Transaction Synchronization

The Financial Transaction module shall remain synchronized with all applicable Business Modules participating in dependent financial processing.

Synchronization processing shall comply with the applicable General Business Rules governing reconciliation and Grace Period processing.

---

##### MFBR-TRN-010 – Financial Integrity

Every completed Financial Transaction shall preserve the financial integrity of PFMS.

Account Balances, Budget Utilization, Reserve calculations, Financial Planning information, Reports, Dashboards, and Financial Analytics shall remain consistent with the recorded Transaction history.

---

##### MFBR-TRN-011 – Transaction Availability

Recorded Financial Transactions shall remain available throughout their business lifecycle and for historical financial processing.

---

##### MFBR-TRN-012 – Historical Transaction Preservation

Historical Financial Transactions shall preserve their original financial information throughout their lifecycle.

Business operations performed on current Transactions shall not compromise the integrity of historical financial information.


### Reserve Management

Reserve Management Module Functional Business Rules define the business policies governing the allocation, utilization, monitoring, synchronization, and lifecycle of financial reserves within the Personal Finance Management System (PFMS).

The Reserve Management Business Domain maintains business information associated with financial reserves designated by the user. Reserve Management derives its financial information from the Transaction module and assists in monitoring reserved funds, available funds, financial commitments, and reserve utilization while preserving financial consistency throughout the application.

The Reserve Management Business Domain consists of the following Business Modules:

* Reserve

The following Module Functional Business Rules define the business behavior applicable to the Reserve Management Business Module.


#### Reserve

The Reserve Module Functional Business Rules define the business policies governing the accumulation, utilization, monitoring, synchronization, and lifecycle of Reserved Funds within the Personal Finance Management System (PFMS).

The Reserve module maintains the business information associated with Reserved Funds accumulated by transferring funds between designated Accounts. Reserve information shall be derived from the corresponding Financial Transactions and shall not maintain an independent financial balance.

---

##### MFBR-RES-001 – Reserve Purpose

The Reserve module shall represent Reserved Funds intentionally set aside for future financial requirements.

Reserved Funds shall be accumulated by transferring funds from the designated Primary Account to the designated Secondary Account.

The designated Secondary Account shall represent the Reserved Funds until they are utilized.

---

##### MFBR-RES-002 – Reserve Account Association

Reserve processing shall operate only between the designated Primary Account and the designated Secondary Account configured within the Personal Finance Management System (PFMS).

---

##### MFBR-RES-003 – Reserve Generation

Each uninterrupted Reserved Fund accumulation period shall constitute one Reserve Generation.

Every Reserve Generation shall possess one unique sequential identifier.

---

##### MFBR-RES-004 – Reserve Generation Initiation

When Reserved Funds are transferred from the designated Primary Account to the designated Secondary Account and no active Reserve Generation exists, a new Reserve Generation shall become active.

---

##### MFBR-RES-005 – Active Reserve Generation

All consecutive Reserved Fund transfers from the designated Primary Account to the designated Secondary Account shall belong to the currently active Reserve Generation until that Reserve Generation is closed.

---

##### MFBR-RES-006 – Reserve Generation Closure

The first transfer of Reserved Funds from the designated Secondary Account to the designated Primary Account shall immediately close the active Reserve Generation.

---

##### MFBR-RES-007 – Reserve Generation Continuity

After a Reserve Generation has been closed, no active Reserve Generation shall exist until another qualifying Reserved Fund transfer from the designated Primary Account to the designated Secondary Account occurs.

---

##### MFBR-RES-008 – Subsequent Reserve Generation

The first qualifying Reserved Fund transfer following the closure of a Reserve Generation shall initiate the next sequential Reserve Generation.

---

##### MFBR-RES-009 – Reserve Financial Association

Reserve information shall be derived from the corresponding Financial Transactions.

The Reserve module shall not maintain an independent Reserve Balance.

The Current Reserve Balance shall always be determined from the designated Secondary Account together with the corresponding Financial Transactions.

---

##### MFBR-RES-010 – Historical Reserve Integrity

Business operations performed on the active Reserve Generation shall not modify previously closed Reserve Generations.

Historical Reserve Generations shall preserve their original business information throughout their lifecycle.

---

##### MFBR-RES-011 – Reserve Generation Management

Reserve Generation identifiers shall be assigned sequentially.

Reserve Generation identifiers shall never be reused, renumbered, or manually modified.

Reserve Generations shall be created, transitioned, and maintained automatically in accordance with the applicable Business Rules.

Users shall not manually create, modify, renumber, merge, split, reopen, or delete Reserve Generations.

---

##### MFBR-RES-012 – Reserve Utilization

Transfers from the designated Secondary Account shall represent the utilization of Reserved Funds.

Reserve utilization shall be processed in accordance with the applicable Financial Business Rules and Transaction Business Rules.

The designated Secondary Account shall be used exclusively for maintaining Reserved Funds associated with the Reserve module.


### Reporting & Analytics

Reporting & Analytics Module Functional Business Rules define the business policies governing the generation, presentation, consistency, analysis, and lifecycle of reports, dashboards, summaries, and analytical information within the Personal Finance Management System (PFMS).

The Reporting & Analytics Business Domain derives business information from the applicable Business Modules throughout PFMS. It does not maintain independent financial or operational information and shall present information that accurately reflects the current and historical business state of the application.

The Reporting & Analytics Business Domain consists of the following Business Module:

* Reporting

The following Module Functional Business Rules define the business behavior applicable to the Reporting & Analytics Business Module.


### Future Enhancements

The Personal Finance Management System (PFMS) has been designed to support future functional enhancements while preserving the business integrity defined within this specification.

Future versions of PFMS may introduce additional Business Domains, Business Modules, Functional Requirements, and Business Rules as required.

Planned enhancements may include, but are not limited to:

* Artificial Intelligence (AI)
* Predictive Financial Analytics
* Intelligent Budget Recommendations
* Personalized Financial Insights
* Automated Spending Pattern Analysis
* Advanced Reporting and Visualization
* Additional Business Modules
* External System Integrations

The business behavior associated with future enhancements shall be defined within the corresponding version of the Business Requirements Specification (BRS).


## User Roles

User Roles define the authorization model governing access to the Personal Finance Management System (PFMS).

The current version of PFMS is designed as a single-user application. All business operations are performed by the registered Application Owner. Although the current version supports only one User Role, this section establishes the authorization framework for future expansion.

---

### Application Owner

The Application Owner is the registered user of the Personal Finance Management System (PFMS) and has unrestricted access to all Business Domains, Business Modules, and system functions.

The Application Owner is authorized to:

* Maintain Master Data.
* Manage Financial Planning.
* Maintain Operational Activities.
* Record and manage Financial Transactions.
* Manage Hard Cash.
* Manage Reserve information.
* View Reporting & Analytics.
* Perform historical business operations where permitted by the applicable Business Rules.
* Configure application settings.
* Perform data backup and restoration where supported.

---

### Authorization Principles

PFMS shall comply with the following authorization principles:

* Only authenticated users shall access the application.
* All business operations shall comply with the applicable Functional Requirements and Business Rules.
* Unauthorized access to business information shall not be permitted.
* Historical business integrity and financial integrity shall always be preserved.

---

### Future Extensibility

The authorization framework has been designed to support future expansion.

Future versions of PFMS may introduce additional User Roles, including but not limited to:

* Family Member
* Read-Only User
* Financial Advisor
* Auditor
* Administrator

Any future User Roles shall comply with the applicable Functional Requirements and Business Rules defined for the corresponding version of the Personal Finance Management System (PFMS).


## Business Processes

Business Processes define the end-to-end business workflows supported by the Personal Finance Management System (PFMS). Each Business Process describes how one or more Business Domains and Business Modules interact to achieve a complete business objective while complying with the applicable Functional Requirements and Business Rules.

The following Business Processes are supported by PFMS.

---

### Master Data Management

Master Data Management establishes and maintains the reference information required throughout PFMS.

The process includes:

* Managing Accounts.
* Managing Categories.
* Managing SubCategories.
* Managing Payment Modes.
* Managing Merchants.
* Maintaining reference information used by all Business Modules.

---

### Financial Planning

Financial Planning manages the user's planned financial commitments and financial goals.

The process includes:

* Managing Budgets.
* Managing Insurance.
* Managing Investments.
* Managing Loans.
* Managing Utilities.
* Monitoring planned financial commitments.

Financial activities associated with these Business Modules shall be represented through the Transaction module.

---

### Operational Activity Management

Operational Activity Management records operational business activities that require monitoring in addition to financial accounting.

The process includes:

* Managing Milk.
* Managing Gas Cylinder.
* Managing Bike Fuel.
* Managing Engine Oil.
* Managing Bike Maintenance.

Operational activities requiring financial impact shall synchronize with the Transaction module in accordance with the applicable Business Rules.

---

### Financial Transaction Management

Financial Transaction Management records, processes, and maintains all financial events within PFMS.

The process includes:

* Managing Hard Cash.
* Recording Financial Transactions.
* Budget Period assignment.
* Historical financial processing.
* Financial synchronization.
* Maintaining financial integrity.

Financial Transaction Management serves as the central financial processing Business Domain within PFMS.

---

### Reserve Management

Reserve Management monitors the accumulation and utilization of Reserved Funds.

The process includes:

* Managing Reserve Generations.
* Monitoring Reserved Funds.
* Maintaining Reserve continuity.
* Managing Reserve utilization.
* Preserving Reserve history.

Reserve information shall be derived from the corresponding Financial Transactions.

---

### Reporting & Analytics

Reporting & Analytics provides consolidated business and financial information derived from the Business Modules maintained within PFMS.

The process includes:

* Financial Reporting.
* Budget Analysis.
* Reserve Analysis.
* Account Balance Analysis.
* Income and Expense Analysis.
* Operational Analysis.
* Historical Trend Analysis.
* Dashboards.
* Financial Analytics.

Reporting & Analytics shall derive information from the applicable Business Modules and shall not maintain independent business information.


## Assumptions

The Personal Finance Management System (PFMS) has been designed based on the following assumptions. These assumptions establish the expected operating environment and business conditions under which the application operates.

---

### User Assumptions

* PFMS is intended for use by a single registered Application Owner.
* The Application Owner is responsible for maintaining accurate business information.
* Business information is entered within a reasonable period after the corresponding business event occurs.
* The Application Owner periodically reviews financial information, reports, and pending business activities.

---

### Business Assumptions

* Every financial event has one corresponding Financial Transaction.
* Operational Business Modules are used only where additional operational tracking is required beyond financial accounting.
* Master Data is maintained before dependent business operations are performed.
* Business information entered by the Application Owner is assumed to be accurate unless subsequently corrected.

---

### Financial Assumptions

* The Transaction module serves as the single financial source of truth within PFMS.
* Account Balances, Budget utilization, Reserved Funds, Reporting, and Financial Analytics are derived from recorded Financial Transactions.
* Historical financial information is preserved throughout the lifecycle of the application.

---

### Operational Assumptions

* Operational Business Modules and the Transaction module remain synchronized in accordance with the applicable Business Rules.
* Temporary synchronization differences may occur and shall be managed through the applicable Grace Periods.
* Historical business information may be recorded where permitted and shall participate in the applicable historical financial processing.

---

### Technical Assumptions

* The system date and time are assumed to be accurate.
* Required application configuration and Master Data are available before normal business operations begin.
* PFMS operates using the configured financial settings, including currency and monetary precision.

---

### Future Assumptions

* Additional Business Domains and Business Modules may be introduced without affecting the existing business architecture.
* Future enhancements shall continue to use the Transaction module as the central financial processing component.
* Additional User Roles may be introduced in future versions while preserving the existing business architecture.


## Constraints

Constraints define the business, functional, data, security, and technical limitations under which the Personal Finance Management System (PFMS) shall operate.

All system functionality shall comply with the following constraints.

---

### Business Constraints

* PFMS shall operate as a single-user application.
* Every financial event shall be represented through the Transaction module.
* Business Modules shall maintain only their respective business information and shall not duplicate financial accounting.
* Business operations shall comply with the applicable Functional Requirements, General Business Rules, Financial Business Rules, and Module Functional Business Rules.
* Historical business integrity and financial integrity shall always be preserved.

---

### Functional Constraints

* Master Data shall exist before dependent business operations can be performed.
* Every Financial Transaction shall belong to one and only one Budget Period.
* Budget Period assignment shall be determined in accordance with the applicable Financial Business Rules.
* Business Modules requiring financial processing shall synchronize with the Transaction module in accordance with the applicable Business Rules.
* Historical financial processing shall automatically perform all applicable financial recalculations.

---

### Data Constraints

* Business entities shall maintain unique business identifiers where applicable.
* Mandatory business information shall exist before business processing.
* Relationships between Business Modules shall preserve referential integrity.
* Historical business information shall not be lost through normal business operations.
* System-derived information shall not be manually modified unless explicitly permitted by the applicable Business Rules.

---

### Security Constraints

* Only authenticated users shall access PFMS.
* Unauthorized access to business information shall not be permitted.
* Business operations shall be performed only by authorized users.
* Business Rules shall be enforced consistently throughout PFMS.

---

### Technical Constraints

* PFMS shall maintain the Transaction module as the central financial processing component.
* Financial information presented throughout PFMS shall be derived from recorded Financial Transactions.
* Business Modules shall remain logically independent while sharing common Master Data.
* Future enhancements shall preserve compatibility with existing business information where applicable.

---

### Regulatory Constraints

* PFMS shall preserve complete historical business and financial information.
* Financial calculations shall preserve the configured monetary precision.
* Business dates and financial information shall comply with the applicable Business Rules.


## Success Criteria

The Personal Finance Management System (PFMS) shall be considered successful when it consistently satisfies the defined business objectives and supports accurate financial management throughout its operational lifecycle.

---

### Financial Accuracy

PFMS shall maintain accurate financial information by ensuring that every financial event is represented through the Transaction module.

Account Balances, Budget utilization, Reserved Funds, Reporting, Dashboards, and Financial Analytics shall consistently reflect the recorded Financial Transactions.

---

### Business Integrity

PFMS shall preserve complete business integrity by enforcing the applicable Functional Requirements, General Business Rules, Financial Business Rules, and Module Functional Business Rules throughout all Business Domains.

Historical business information and financial information shall remain accurate throughout the lifecycle of the application.

---

### Operational Effectiveness

PFMS shall enable the Application Owner to efficiently manage operational business activities, financial planning, financial transactions, and reserved funds.

Operational Business Modules and the Transaction module shall remain synchronized in accordance with the applicable Business Rules.

---

### Financial Planning Effectiveness

PFMS shall accurately determine the applicable Budget Period for every Financial Transaction and support effective Budget planning, utilization monitoring, and variance analysis.

---

### Reporting & Analytics

PFMS shall provide reliable Reporting & Analytics that support informed financial decision-making.

Reporting information shall be derived from the applicable Business Modules and shall accurately represent both the current and historical business state of PFMS.

---

### Maintainability

PFMS shall support future business expansion through a modular business architecture that allows additional Business Domains and Business Modules to be introduced while preserving the integrity of the existing business model.

---

### User Experience

PFMS shall provide a consistent and intuitive business workflow that enables the Application Owner to efficiently perform business operations while minimizing manual effort.

---

### Overall Business Objective

PFMS shall provide a reliable, accurate, maintainable, and extensible personal financial management solution that delivers complete financial visibility, operational traceability, historical consistency, and informed financial decision-making.


## Requirement Traceability Matrix

The Requirement Traceability Matrix (RTM) provides end-to-end traceability of requirements throughout the lifecycle of the Personal Finance Management System (PFMS).

The RTM establishes the relationship between Business Requirements, Functional Requirements, Non-Functional Requirements, Business Domains, Business Modules, Business Rules, Database Design, implementation artifacts, and testing activities.

The primary objective of the RTM is to ensure that every approved requirement is fully implemented, verified, validated, and maintained throughout the application lifecycle.

The Requirement Traceability Matrix supports:

* Requirement identification.
* Requirement coverage verification.
* Functional Requirement traceability.
* Non-Functional Requirement traceability.
* Business Domain traceability.
* Business Module traceability.
* Business Rule traceability.
* Database Design traceability.
* Test Case traceability.
* Change Impact Analysis.
* Requirement validation and verification.
* Project maintenance and future enhancements.

The Requirement Traceability Matrix shall be maintained as a separate project artifact and shall be updated throughout the analysis, design, development, testing, deployment, and maintenance phases of the Personal Finance Management System (PFMS).


## Revision History

The Revision History records the evolution of this Business Requirements Specification (BRS) throughout the lifecycle of the Personal Finance Management System (PFMS).

Each revision documents significant changes made to the specification, ensuring complete traceability of business requirements, design decisions, and document updates.

The Revision History supports:

* Document version management.
* Change tracking.
* Requirement evolution.
* Design decision traceability.
* Review and approval history.
* Audit and compliance activities.
* Future maintenance and enhancement planning.

The following Revision History shall be maintained throughout the lifecycle of this document.

| Version | Revision Date | Author                         | Description of Changes                                                                                               | Reviewed By                    | Approved By                    |
| ------- | ------------- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------- | ------------------------------ | ------------------------------ |
| 1.0     | 04-Aug-2026   | SaiAnjaneyaVinayKumar Parnandi | Initial approved release of the Personal Finance Management System (PFMS) Business Requirements Specification (BRS). | SaiAnjaneyaVinayKumar Parnandi | SaiAnjaneyaVinayKumar Parnandi |

The Revision History shall be updated whenever this document is formally revised, reviewed, approved, or released.


## Glossary

The following glossary defines the business terminology used throughout the Personal Finance Management System (PFMS) Business Requirements Specification (BRS).

| Term                  | Definition                                                                                                          |
| --------------------- | ------------------------------------------------------------------------------------------------------------------- |
| Account               | A financial source or destination used to record Financial Transactions.                                            |
| Application Owner     | The registered user authorized to perform all business operations within PFMS.                                      |
| Budget Period         | The financial period determined by the applicable Salary Boundary.                                                  |
| Business Domain       | A logical grouping of related Business Modules within PFMS.                                                         |
| Business Module       | A functional component responsible for a specific business capability.                                              |
| Financial Transaction | The authoritative financial event representing the financial impact of a business operation.                        |
| Hard Cash             | Physical cash maintained by the Application Owner and managed through the Hard Cash module.                         |
| Hard Cash Group       | A logical grouping of Hard Cash movements representing one physical cash cycle.                                     |
| Historical Processing | Business processing performed on historical business information while preserving financial and business integrity. |
| Master Data           | Reference information maintained for use throughout PFMS.                                                           |
| Operational Activity  | Business information requiring operational tracking in addition to financial accounting.                            |
| Reporting & Analytics | Business information derived from applicable Business Modules for reporting, dashboards, and analysis.              |
| Reserve               | The business module responsible for managing Reserved Funds.                                                        |
| Reserve Generation    | A logical accumulation period of Reserved Funds.                                                                    |
| Reserved Funds        | Funds intentionally set aside for future financial requirements.                                                    |
| Salary Boundary       | The business event that determines the beginning of a new Budget Period.                                            |
| Transaction           | The business module responsible for maintaining Financial Transactions.                                             |


## Appendix

This appendix provides supplementary information supporting the Business Requirements Specification (BRS).

### Business Domain Structure

The Personal Finance Management System (PFMS) consists of the following Business Domains:

* Global Business Rules
* General Business Rules
* Financial Business Rules
* Master Data Management
* Financial Planning
* Operational Activity Management
* Financial Transaction Management
* Reserve Management
* Reporting & Analytics

### Referenced Documents

The Business Requirements Specification (BRS) is supported by the following project documents where applicable:

* Functional Requirements Specification (FRS)
* Database Design Document (DDD)
* Technical Design Specification (TDS)
* Requirement Traceability Matrix (RTM)
* Test Strategy
* Test Cases
* User Documentation

### Document Conventions

This specification uses the following naming conventions:

* FR — Functional Requirement
* NFR — Non-Functional Requirement
* GBR — General Business Rule
* FBR — Financial Business Rule
* MFBR — Module Functional Business Rule
* PFMS — Personal Finance Management System

Future project documents shall comply with the terminology and business architecture defined within this specification.



## Conclusion

This Business Requirements Specification (BRS) establishes the approved business requirements, functional requirements, non-functional requirements, business rules, business processes, and supporting principles governing the Personal Finance Management System (PFMS).

The specification defines the complete business architecture of PFMS by organizing business functionality into well-defined Business Domains and Business Modules while preserving consistency, maintainability, and future extensibility.

The Transaction module serves as the authoritative financial processing component of PFMS, ensuring that all financial information is derived from recorded Financial Transactions. Supporting Business Domains, including Financial Planning, Operational Activity Management, Reserve Management, and Reporting & Analytics, operate in accordance with the applicable Business Rules while preserving complete business and financial integrity.

This Business Requirements Specification serves as the baseline reference for the subsequent design, development, testing, deployment, and maintenance activities of the Personal Finance Management System (PFMS).

Future enhancements shall be incorporated through controlled revisions to this specification while preserving compatibility with the approved business architecture established in Version 1.0.