# Business Requirements Specification (BRS)

---

## Document Information

| Property | Details |
|----------|---------|
| Project Name | Personal Finance Management System (PFMS) |
| Document Name | 02_Business_Requirements_Specification |
| Document ID | DOC-002 |
| Document Version | 1.0 |
| Document Status | Approved |
| Author | SaiAnjaneyaVinayKumar Parnandi |
| Created On | 29-Jul-2026 |
| Last Updated | 29-Jul-2026 |
| Reviewed By | SaiAnjaneyaVinayKumar Parnandi |
| Approved By | SaiAnjaneyaVinayKumar Parnandi |

---

## Purpose

The purpose of this Business Requirements Specification (BRS) is to define the complete business requirements for the Personal Finance Management System (PFMS).

This document captures the functional requirements, business rules, general rules, non-functional requirements, business processes, business workflows, user roles, constraints, assumptions, and success criteria required to design, develop, test, deploy, and maintain the application.

The BRS serves as the primary reference for all technical documents, including database design, system architecture, API specifications, application development, testing, and deployment. Every implementation decision within the project shall be traceable to one or more business requirements defined in this document.

---

## Business Overview

The Personal Finance Management System (PFMS) is an enterprise-grade personal finance application designed to centralize and simplify the management of personal financial information.

The application enables users to manage income, expenses, budgets, investments, loans, insurance policies, utility services, recurring payments, milk vendor transactions, bike-related expenses, and other financial activities through a unified platform.

PFMS follows a Business-First Development methodology, where business requirements are thoroughly documented, reviewed, and approved before technical implementation begins. This approach ensures that the system accurately models real-world financial processes while remaining scalable, maintainable, secure, and extensible.

Beyond day-to-day financial management, PFMS is designed to provide meaningful business intelligence through reports and dashboards while establishing a strong foundation for future Artificial Intelligence and Machine Learning capabilities, including predictive analytics, financial forecasting, anomaly detection, and personalized financial recommendations.

---

## Business Goals

The primary business goals of PFMS are:

- Centralize all personal financial information into a single integrated system.
- Improve the accuracy, consistency, and reliability of financial records.
- Simplify day-to-day financial management activities.
- Enable effective budget planning and financial monitoring.
- Support informed financial decision-making through reports and analytics.
- Maintain complete historical financial records for long-term analysis.
- Provide a scalable platform capable of accommodating future business requirements.
- Enable business intelligence through interactive dashboards and reporting.
- Establish a secure, maintainable, and modular software architecture.
- Prepare the application for future AI-driven financial insights and intelligent recommendations.

---

## System Modules

The Personal Finance Management System (PFMS) is organized into multiple business modules. Each module represents a distinct business capability responsible for managing a specific area of personal finance.

The modular design enables independent development, testing, maintenance, scalability, and future enhancement while maintaining a clear separation of business responsibilities.

The following business modules are included in Version 1.0 of the application.

---

### Income Management

Manages all income sources, income transactions, recurring income, and income history.

**Primary Responsibilities**

- Record income transactions
- Update income records
- Delete income records
- View income history
- Manage recurring income
- Generate income summaries

---

### Expense Management

Manages all day-to-day expense transactions.

**Primary Responsibilities**

- Record expenses
- Modify expense records
- Delete expense records
- Categorize expenses
- Track spending history
- Generate expense summaries

---

### Budget Management

Supports planning, monitoring, and controlling budgets across different spending categories.

**Primary Responsibilities**

- Create budgets
- Update budgets
- Track budget utilization
- Monitor remaining budget
- Generate budget reports

---

### Account Management

Maintains financial accounts used for recording transactions.

**Examples**

- Cash
- Bank Accounts
- Wallets
- UPI Accounts

**Primary Responsibilities**

- Create accounts
- Update accounts
- Manage balances
- Activate/Deactivate accounts

---

### Category Management

Maintains transaction categories used throughout the application.

**Examples**

- Food
- Transport
- Medical
- Shopping
- Utilities

**Primary Responsibilities**

- Create categories
- Update categories
- Organize financial transactions

---

### Subcategory Management

Provides additional classification within categories.

**Example**

Food

- Groceries
- Restaurant
- Milk
- Fruits
- Vegetables

---

### Merchant Management

Maintains merchants or vendors associated with financial transactions.

**Examples**

- D-Mart
- Reliance Fresh
- HP Petrol Pump
- Amazon
- Flipkart

---

### Payment Mode Management

Maintains payment methods used during transactions.

**Examples**

- Cash
- Credit Card
- Debit Card
- UPI
- Net Banking

---

### Investment Management

Manages investment-related information.

**Examples**

- Mutual Funds
- Fixed Deposits
- Stocks
- Gold
- PPF
- NPS

---

### Loan Management

Maintains loan information.

**Examples**

- Home Loan
- Personal Loan
- Vehicle Loan
- Education Loan

---

### Insurance Management

Maintains insurance policies and premium schedules.

**Examples**

- Health Insurance
- Life Insurance
- Vehicle Insurance

---

### Utility Management

Maintains recurring household utilities.

**Examples**

- Electricity
- Water
- Gas
- Internet
- Mobile Recharge
- Broadband

---

### Milk Vendor Management

Maintains daily milk purchases and monthly settlement with vendors.

---

### Bike Management

Maintains bike-related expenses and maintenance history.

**Examples**

- Fuel
- Service
- Engine Oil
- Repairs
- Insurance
- Pollution Certificate

---

### Reporting & Analytics

Generates business reports and dashboards.

**Examples**

- Income Reports
- Expense Reports
- Budget Reports
- Monthly Reports
- Yearly Reports
- Category Analysis
- Tableau Dashboards

---

### Administration

Maintains application configuration and system settings.

**Examples**

- User Preferences
- Master Data Configuration
- Backup & Restore
- Application Settings

---

## Business Domains

The Personal Finance Management System (PFMS) is organized into multiple **Business Domains**. A Business Domain represents a major area of responsibility within the application. Each Business Domain contains one or more Business Modules that collectively support a specific business capability.

Organizing the application into Business Domains promotes modularity, maintainability, scalability, clear separation of responsibilities, and future extensibility throughout the system.

The following Business Domains are included in Version 1.0 of PFMS.

---

### Financial Management

The Financial Management domain is responsible for managing all monetary transactions and financial activities performed by the user.

**Business Modules**

- Income Management
- Expense Management
- Budget Management
- Account Management
- Payment Mode Management
- Transaction Management

---

### Master Data Management

The Master Data Management domain maintains reusable reference data that supports financial transactions across the application.

**Business Modules**

- Category Management
- Subcategory Management
- Merchant Management

---

### Asset Management

The Asset Management domain manages long-term financial assets and liabilities.

**Business Modules**

- Investment Management
- Loan Management
- Insurance Management

---

### Daily Life Management

The Daily Life Management domain manages recurring operational activities that are part of the user's daily financial life.

**Business Modules**

- Milk Vendor Management
- Bike Management
- Utility Management

---

### Analytics & Reporting

The Analytics & Reporting domain provides reporting, dashboards, business intelligence, and financial analytics capabilities.

**Business Modules**

- Reporting & Analytics

---

### Administration

The Administration domain manages application configuration, system administration, and application-level settings.

**Business Modules**

- Administration

---

### Artificial Intelligence

The Artificial Intelligence domain provides intelligent capabilities using historical financial data to assist users in making informed financial decisions.

**Business Modules**

- Expense Prediction
- Budget Recommendation
- Financial Forecasting
- Spending Pattern Analysis
- Anomaly Detection

---

## Business Hierarchy

Every business requirement within the Personal Finance Management System (PFMS) follows the hierarchical structure shown below. This hierarchy establishes complete traceability from high-level business objectives to the final implementation.

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
Implementation
```

This hierarchy serves as the foundation for all project deliverables, including business analysis, solution architecture, database design, API specifications, application development, testing, deployment, and future enhancements.

---

## Requirement Identification Standard

To ensure consistency and traceability throughout the Personal Finance Management System (PFMS), every Functional Requirement shall be assigned a unique Requirement Identifier (Requirement ID).

The Requirement ID shall follow the format:

```text
FR-<Domain Code>-<Sequence Number>
```

Where:

- **FR** represents **Functional Requirement**.
- **Domain Code** identifies the Business Domain.
- **Sequence Number** is a unique three-digit number assigned within the corresponding Business Domain.

---

### Business Domain Codes

| Business Domain | Domain Code | Example Requirement ID |
|-----------------|-------------|------------------------|
| Financial Management | FIN | FR-FIN-001 |
| Master Data Management | MDM | FR-MDM-001 |
| Asset Management | AST | FR-AST-001 |
| Daily Life Management | DLM | FR-DLM-001 |
| Analytics & Reporting | ANL | FR-ANL-001 |
| Administration | ADM | FR-ADM-001 |
| Artificial Intelligence | AI | FR-AI-001 |

---

These Requirement IDs provide end-to-end traceability between business requirements, solution design, database design, REST APIs, backend services, frontend implementation, test cases, and deployment artifacts.

---

## Functional Requirements

The Functional Requirements define the business capabilities provided by the Personal Finance Management System (PFMS) to support personal financial management.

Each Functional Requirement is uniquely identified using the Requirement Identification Standard defined in this document. Every Functional Requirement belongs to a specific Business Domain, Business Module, and Business Feature, providing complete traceability from business requirements through solution design, implementation, testing, deployment, and future enhancements.

The Functional Requirements describe the business capabilities and business processes of PFMS. They do not describe generic Create, Read, Update, or Delete (CRUD) operations. Database operations are implementation details and are outside the scope of this Business Requirements Specification.

Unless otherwise specified, every Functional Requirement shall comply with all applicable Business Rules, General Rules, Global Business Rules, Functional Business Rules, Non-Functional Requirements, and module-specific business rules defined in this document.

The Functional Requirements are organized according to the Business Domains established in this specification.

---

## Financial Management

The Financial Management domain defines the business capabilities required to manage financial transactions and related business processes within the Personal Finance Management System (PFMS).

The Functional Requirements under this Business Domain are organized into the following Business Modules:

- Transaction Management
- Income Management
- Expense Management
- Budget Management
- Account Management
- Payment Mode Management

---

### Transaction Management

The Transaction Management module is the central financial processing component of PFMS. It is responsible for processing, validating, maintaining, and presenting all financial transactions performed within the application.

Every financial transaction, irrespective of whether it represents an Income or an Expense, shall be processed through the Transaction Management module. The module shall enforce all applicable business validations including Salary Boundary processing, Budget Period determination, historical transaction processing, duplicate transaction validation, operational reconciliation, HardCash validation, financial recalculation, and all other applicable business rules defined within this specification.

The Transaction Management module is intentionally designed around business capabilities rather than CRUD operations. Business modules such as Income Management and Expense Management classify and analyze financial transactions but do not independently process or maintain transaction records.

The following Functional Requirements define the complete business capabilities provided by the Transaction Management module.

---

#### Core Transaction Inputs

The following business information shall be captured while processing a financial transaction within PFMS.

| Field | Mandatory | Description |
|--------|-----------|-------------|
| Transaction Date | Yes | Business date on which the financial transaction occurred. |
| Transaction Type | Yes | Indicates whether the transaction represents an Income or an Expense. The value shall be specified manually by the user. |
| Category | Yes | Primary business classification of the transaction. |
| SubCategory | Yes | Detailed business classification within the selected Category. |
| Amount | Yes | Financial amount of the transaction. The amount shall be greater than zero. |
| Payment Mode | Yes | Payment mode through which the transaction was performed. |
| Account | Yes | Financial account associated with the transaction. |
| IsSalary | Yes | Indicates whether the transaction represents the Salary Boundary transaction. The value shall be specified manually by the user and is used to determine the applicable Budget Period in accordance with the applicable business rules. |
| Merchant | No | Merchant or vendor associated with the transaction, where applicable. |
| Remarks | No | Additional business information or supporting business justification, where applicable. |

---

##### FR-FIN-001 – Process Financial Transaction

**Requirement Type**

Functional

---

**Business Domain**

Financial Management

---

**Business Module**

Transaction Management

---

**Business Feature**

Financial Transaction Processing

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to process a financial transaction by capturing the required business information, validating the transaction, applying all applicable business rules, and recording the transaction while preserving the financial integrity and historical consistency of the Personal Finance Management System (PFMS).

Every financial transaction processed through this functionality shall be evaluated in accordance with the applicable business rules, including Salary Boundary processing, Budget Period determination, historical transaction processing, duplicate transaction validation, financial reconciliation, HardCash validation, operational validation, and all other applicable business validations defined in this specification.

---

**Inputs**

The Core Transaction Inputs defined in the **Transaction Management** module shall apply to this Functional Requirement.

---

**Preconditions**

- The user is authorized to access the Transaction Management module.
- All mandatory master data required for processing the transaction is available.
- The selected Account exists and is active.
- The selected Category exists and is active.
- The selected SubCategory exists and is active.
- The selected Payment Mode exists and is active.
- The user has specified the IsSalary value.
- All mandatory transaction information has been provided.

---

**Applicable Business Rules**

- Applicable Transaction Business Rules.
- Applicable General Rules.
- Applicable Global Business Rules.
- Applicable Functional Business Rules.
- Applicable Non-Functional Requirements.
- Applicable module-specific business rules, where applicable.

> **Note:** Business Rule identifiers shall be updated after the Business Requirements Specification (BRS) has been finalized.

---

**Processing Logic**

1. Accept the transaction information entered by the user.
2. Validate all mandatory transaction information.
3. Validate the selected Account.
4. Validate the selected Category and SubCategory.
5. Validate the selected Payment Mode.
6. Validate the transaction amount.
7. Validate the manually selected Transaction Type.
8. Validate the manually selected IsSalary value.
9. Apply the applicable Salary Boundary business rules.
10. Determine and assign the appropriate Budget Period.
11. Determine whether the transaction is a historical transaction.
12. Apply the applicable historical transaction business rules, where required.
13. Perform duplicate transaction validation and obtain user confirmation, where applicable.
14. Perform operational reconciliation, where applicable.
15. Apply HardCash validation, where applicable.
16. Process the financial transaction.
17. Update all affected financial information in accordance with the applicable business rules.
18. Refresh all dependent financial summaries, reports, dashboards, and other affected business information.
19. Complete the financial transaction processing and make the transaction available throughout PFMS.

---

**Postconditions**

- The financial transaction is successfully processed.
- All applicable business validations are completed successfully.
- The appropriate Budget Period is assigned.
- Salary Boundary processing is completed successfully, where applicable.
- Historical transaction processing is completed successfully, where applicable.
- Operational reconciliation is completed successfully, where applicable.
- HardCash validation is completed successfully, where applicable.
- All affected financial information is updated successfully.
- Financial integrity and historical consistency are maintained throughout PFMS.

---

**Expected Outcome**

The requested financial transaction shall be processed successfully while preserving financial integrity, Budget Period consistency, Salary Boundary integrity, historical accuracy, operational consistency, and compliance with all applicable business rules defined within the Personal Finance Management System (PFMS).

---

**Exceptions**

- Mandatory transaction information is missing.
- Invalid Transaction Date.
- Invalid Transaction Type selected.
- Invalid Account selected.
- Invalid Category selected.
- Invalid SubCategory selected.
- Invalid Payment Mode selected.
- Invalid transaction amount.
- Invalid IsSalary selection.
- Salary Boundary validation failure.
- Budget Period determination failure.
- Historical transaction validation failure.
- Duplicate transaction requires user confirmation.
- Operational reconciliation validation failure.
- HardCash validation failure.
- Transaction processing is not permitted according to the applicable business rules.
- User cancels the transaction processing.
- Unexpected system validation failure.

---

**Priority**

Critical

---

**Related Components**

**Business Modules**

- Transaction Management
- Budget Management
- Account Management
- Payment Mode Management
- Applicable Operational Modules, where applicable.

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.

---

> **Note**
>
> This Functional Requirement represents the single business capability responsible for processing all financial transactions within PFMS.
>
> Separate Functional Requirements for processing Income transactions and Expense transactions are intentionally not defined because both are processed through the Transaction Management module using the same business process and applicable business rules.

---

##### FR-FIN-002 – Process Financial Transaction Modification

**Requirement Type**

Functional

---

**Business Domain**

Financial Management

---

**Business Module**

Transaction Management

---

**Business Feature**

Financial Transaction Modification

---

**Primary Actor**

User

---

**Description**

The system shall enable the user to modify an existing financial transaction while preserving the financial integrity, historical consistency, Budget Period integrity, and business continuity of the Personal Finance Management System (PFMS).

The system shall validate every modification against all applicable business rules before applying the requested changes. Where applicable, the system shall recalculate all affected financial information to ensure consistency throughout the application.

The modification process shall support standard transaction modifications, historical transaction modifications, Salary Boundary validation, Salary Boundary Integrity Validation, Salary Boundary Date Correction, operational reconciliation, HardCash validation, Budget Period recalculation, financial recalculation, and all other applicable business validations defined within this specification.

---

**Inputs**

The Core Transaction Inputs defined in the **Transaction Management** module shall apply to this Functional Requirement.

---

**Preconditions**

- The user is authorized to modify financial transactions.
- The specified transaction exists.
- The transaction is available for modification according to the applicable business rules.
- All mandatory master data required for the modification is available.
- The selected Account exists and is active.
- The selected Category exists and is active.
- The selected SubCategory exists and is active.
- The selected Payment Mode exists and is active.
- The user has specified the IsSalary value.
- All mandatory transaction information has been provided.

---

**Applicable Business Rules**

- Applicable Transaction Business Rules.
- Applicable General Rules.
- Applicable Global Business Rules.
- Applicable Functional Business Rules.
- Applicable Non-Functional Requirements.
- Applicable module-specific business rules, where applicable.

> **Note:** Business Rule identifiers shall be updated after the Business Requirements Specification (BRS) has been finalized.

---

**Processing Logic**

1. Retrieve the selected financial transaction.
2. Display the existing transaction information.
3. Accept the modified transaction information.
4. Validate all mandatory transaction information.
5. Validate the selected Account.
6. Validate the selected Category and SubCategory.
7. Validate the selected Payment Mode.
8. Validate the manually specified Transaction Type.
9. Validate the manually specified IsSalary value.
10. Determine whether the modification affects the existing Salary Boundary.
11. If another Salary Boundary transaction already exists for the applicable Budget Period, inform the user that a Salary Boundary transaction already exists for the selected Budget Period.
12. Obtain user confirmation before continuing the Salary Boundary modification.
13. If the user confirms the modification, obtain the required supporting business justification in accordance with the applicable business rules.
14. Determine whether the requested modification represents a Salary Boundary Date Correction.
15. If the Salary Boundary Date Correction falls within the permitted correction window defined by the applicable business rules, update only the Transaction Date while preserving the existing Salary Boundary and Budget Period.
16. If the requested Salary Boundary modification falls outside the permitted correction window, process the modification in accordance with the applicable business rules.
17. Determine whether the transaction is a historical transaction.
18. Apply all applicable historical transaction business rules.
19. Perform duplicate transaction validation and obtain user confirmation, where applicable.
20. Perform operational reconciliation, where applicable.
21. Apply HardCash validation, where applicable.
22. Determine whether the modification affects the Budget Period.
23. Recalculate the applicable Budget Period where required.
24. Determine all financial information affected by the modification.
25. Recalculate all affected financial information.
26. Validate that the modification complies with all applicable business rules.
27. Save the modified financial transaction.
28. Refresh all affected financial summaries, reports, dashboards, and dependent business information.
29. Complete the modification process and make the updated transaction available throughout PFMS.

---

**Postconditions**

- The financial transaction is successfully modified.
- All applicable business validations are completed successfully.
- Budget Period integrity is preserved.
- Salary Boundary integrity is preserved.
- Salary Boundary Date Correction is completed successfully, where applicable.
- Historical transaction processing is completed successfully, where applicable.
- Operational reconciliation is completed successfully, where applicable.
- HardCash validation is completed successfully, where applicable.
- All affected financial information is recalculated successfully.
- Financial integrity and historical consistency are maintained throughout PFMS.

---

**Expected Outcome**

The requested financial transaction modification shall be completed successfully while preserving financial integrity, historical consistency, Salary Boundary integrity, Budget Period consistency, operational consistency, and compliance with all applicable business rules defined within the Personal Finance Management System (PFMS).

---

**Exceptions**

- Transaction not found.
- Mandatory transaction information is missing.
- Invalid Transaction Date.
- Invalid Transaction Type selected.
- Invalid Account selected.
- Invalid Category selected.
- Invalid SubCategory selected.
- Invalid Payment Mode selected.
- Invalid transaction amount.
- Invalid IsSalary selection.
- A Salary Boundary transaction already exists for the applicable Budget Period.
- Salary Boundary modification requires user confirmation.
- Supporting business justification required for the Salary Boundary modification was not provided.
- Salary Boundary Date Correction is not permitted according to the applicable business rules.
- Historical transaction validation failure.
- Duplicate transaction requires user confirmation.
- Operational reconciliation validation failure.
- HardCash validation failure.
- Budget Period recalculation failure.
- Modification is not permitted according to the applicable business rules.
- User cancels the modification.
- Unexpected system validation failure.

---

**Priority**

Critical

---

**Related Components**

**Business Modules**

- Transaction Management
- Budget Management
- Account Management
- Payment Mode Management
- Applicable Operational Modules, where applicable.

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.

---

> **Note**
>
> Special Salary Boundary processing, including Salary Boundary Integrity Validation and Salary Boundary Date Correction, forms part of this Functional Requirement and shall not be treated as an independent Functional Requirement.

---

##### FR-FIN-003 – View Financial Transactions by Budget Period

**Requirement Type**

Functional

---

**Business Domain**

Financial Management

---

**Business Module**

Transaction Management

---

**Business Feature**

Financial Transaction Inquiry

---

**Primary Actor**

User

---

**Description**

The system shall allow the user to inquire, review, and analyze all financial transactions belonging to a selected Budget Period.

A Budget Period represents a budgeting cycle identified by the combination of Budget Month and Budget Year.

The transaction inquiry process shall provide a consolidated view of all Income and Expense transactions belonging to the selected Budget Period while supporting searching, filtering, sorting, viewing complete transaction details, and displaying financial summaries without modifying any financial information.

The transaction inquiry functionality shall provide users with a complete and accurate representation of their financial activities while preserving the financial integrity and historical consistency of PFMS.

---

**Inputs**

| Field | Mandatory | Description |
|--------|-----------|-------------|
| Budget Month | Yes | Budget Month of the selected Budget Period. |
| Budget Year | Yes | Budget Year of the selected Budget Period. |
| Search Keyword | No | Global keyword used to search financial transactions. |
| Transaction Type | No | Filters transactions by Income or Expense. |
| Category | No | Filters transactions by Category. |
| SubCategory | No | Filters transactions by SubCategory. |
| Account | No | Filters transactions by Account. |
| Payment Mode | No | Filters transactions by Payment Mode. |
| Merchant | No | Filters transactions by Merchant. |
| Transaction Date From | No | Beginning Transaction Date for filtering. |
| Transaction Date To | No | Ending Transaction Date for filtering. |
| Amount From | No | Minimum transaction amount for filtering. |
| Amount To | No | Maximum transaction amount for filtering. |

---

**Preconditions**

- The user is authorized to access the Transaction Management module.
- The selected Budget Period is valid.
- Financial transaction data is available within PFMS.

---

**Applicable Business Rules**

- Applicable Transaction Business Rules.
- Applicable General Rules.
- Applicable Global Business Rules.
- Applicable Functional Business Rules.
- Applicable Non-Functional Requirements.
- Applicable module-specific business rules, where applicable.

> **Note:** Business Rule identifiers shall be updated after the Business Requirements Specification (BRS) has been finalized.

---

**Processing Logic**

1. Accept the selected Budget Period.
2. Validate the selected Budget Period.
3. Accept the optional search criteria.
4. Accept the optional filter criteria.
5. Validate the supplied search and filter criteria.
6. Retrieve all financial transactions belonging to the selected Budget Period.
7. Apply the requested search criteria, where applicable.
8. Apply the selected filter criteria, where applicable.
9. Apply the selected sorting criteria.
10. Calculate the financial summary for the selected Budget Period.
11. Display the financial summary, including all applicable financial information for the selected Budget Period.
12. Display the matching financial transactions in chronological order.
13. Allow the user to select an individual transaction.
14. Display the complete details of the selected transaction.
15. Allow the user to clear all applied search and filter criteria.
16. Display an appropriate message when no financial transactions satisfy the selected criteria.

---

**Postconditions**

- Financial transactions for the selected Budget Period are displayed successfully.
- Search criteria are applied successfully, where applicable.
- Filter criteria are applied successfully, where applicable.
- Financial summary information for the selected Budget Period is displayed successfully.
- Complete transaction details are available for viewing.
- No financial information is modified during the inquiry process.

---

**Expected Outcome**

The user shall be able to review, search, filter, sort, and analyze financial transactions together with the corresponding Budget Period financial summary while maintaining complete financial integrity and historical consistency throughout PFMS.

---

**Exceptions**

- Invalid Budget Period selected.
- Invalid search criteria provided.
- Invalid filter criteria provided.
- No financial transactions exist for the selected Budget Period.
- No financial transactions satisfy the selected search or filter criteria.
- Unexpected system validation failure.

---

**Priority**

High

---

**Related Components**

**Business Modules**

- Transaction Management
- Budget Management
- Account Management
- Payment Mode Management
- Applicable Operational Modules, where applicable.

---

**Implementation References**

The implementation artifacts, including database objects, APIs, backend services, frontend screens, reports, dashboards, and test cases, shall be defined during the subsequent design, development, integration, and testing phases of the project.

---

> **Note**
>
> The Transaction Inquiry process includes the following business capabilities and therefore they shall not be documented as independent Functional Requirements:
>
> - View Income
> - View Expense
> - Search Income
> - Search Expense
> - Filter Income
> - Filter Expense
> - View Income Details
> - View Expense Details
> - View Income Summary
> - View Expense Summary
>
> These capabilities are integral parts of the Financial Transaction Inquiry process and are executed within this Functional Requirement.

> **Note**
>
> The referenced Business Rule identifiers, General Rule identifiers, Global Business Rule identifiers, Functional Requirement identifiers, Non-Functional Requirement identifiers, and all other cross-references are subject to final traceability review and shall be updated before the Business Requirements Specification (BRS) is approved as the final baseline.


## Non-Functional Requirements

The Non-Functional Requirements define the quality attributes, operational characteristics, and technical constraints that the Personal Finance Management System (PFMS) shall satisfy to ensure that the business capabilities defined within this specification operate securely, reliably, consistently, efficiently, and maintainably.

Unlike the Functional Requirements, which define the business capabilities of PFMS, and the Business Rules, which define the business policies and constraints, the Non-Functional Requirements define the quality expectations applicable to those business capabilities.

Unless otherwise specified, every Functional Requirement shall satisfy the applicable Non-Functional Requirements defined within this section.

The Non-Functional Requirements are organized according to the following quality attributes:

- Performance
- Reliability
- Security
- Data Integrity
- Maintainability
- Usability
- Compatibility
- Backup and Recovery
- Auditability
- Error Handling

---

### Performance

Performance requirements define the expected operational responsiveness of PFMS while executing business operations.

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

PFMS shall execute business operations within acceptable response times under normal operating conditions while maintaining business integrity.

---

**Requirement Statement**

The system shall complete standard business operations within acceptable response times during normal operating conditions.

---

**Acceptance Criteria**

- Standard business operations shall normally complete within two seconds.
- Long-running operations shall provide appropriate user feedback.

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

- Performance Testing
- Measurement

---

#### NFR-PER-002 – Report Generation Performance

**Requirement Type**

Non-Functional

---

**Business Domain**

Entire PFMS

---

**Applicability**

Reporting

---

**Quality Attribute**

Performance

---

**Purpose**

To ensure that business reports are generated efficiently while preserving data accuracy.

---

**Description**

Business reports shall be generated within acceptable response times under normal operating conditions.

---

**Requirement Statement**

Standard reports shall normally be generated within ten seconds.

---

**Acceptance Criteria**

Business reports satisfy the required response time.

---

**Dependencies**

- Applicable Functional Requirements.

---

**Priority**

High

---

**Verification Method**

- Performance Testing
- Measurement

---

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

To ensure that PFMS maintains acceptable performance while supporting concurrent business operations.

---

**Description**

PFMS shall continue to perform within acceptable limits while multiple business operations are executed.

---

**Requirement Statement**

Concurrent business operations shall not result in unacceptable performance degradation.

---

**Acceptance Criteria**

Expected operational workloads shall remain within the defined performance limits.

---

**Dependencies**

None.

---

**Priority**

Medium

---

**Verification Method**

- Performance Testing
- Load Testing

---

### Reliability

Reliability requirements define the ability of PFMS to consistently execute business operations while preserving business continuity and financial integrity.

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

To ensure that business operations execute reliably without compromising business integrity.

---

**Description**

PFMS shall consistently execute business operations while preserving the integrity of business information.

---

**Requirement Statement**

Business operations shall complete successfully or terminate safely without leaving PFMS in an inconsistent state.

---

**Acceptance Criteria**

No partially completed business operation shall remain following an unsuccessful operation.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

- Functional Testing
- Integration Testing

---

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

Availability

---

**Purpose**

To ensure that PFMS remains available whenever users need to perform business operations while minimizing interruptions to normal application usage.

---

**Description**

PFMS shall remain available for normal business operations except during planned maintenance or unavoidable operational interruptions.

---

**Requirement Statement**

The application shall remain available whenever required for normal business use.

---

**Acceptance Criteria**

The application shall be available except during planned maintenance or unavoidable operational interruptions.

---

**Dependencies**

None.

---

**Priority**

High

---

**Verification Method**

- Operational Testing
- Review

---

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

To ensure that unexpected failures do not compromise the integrity or consistency of business information.

---

**Description**

Unexpected failures shall be handled in a controlled manner while preserving business integrity and preventing business information corruption.

---

**Requirement Statement**

Unexpected failures shall not leave PFMS in an inconsistent business state.

---

**Acceptance Criteria**

Business information shall remain complete and consistent following unexpected application failures.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

- Failure Testing
- Recovery Testing

---

### Security

Security requirements define the controls required to protect PFMS from unauthorized access, unauthorized modification, unauthorized disclosure, and misuse of business information.

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

To ensure that only authenticated users are permitted to access PFMS.

---

**Description**

PFMS shall authenticate every user before granting access to business information and business operations.

---

**Requirement Statement**

Only authenticated users shall be permitted to access PFMS.

---

**Acceptance Criteria**

Unauthenticated users shall not be permitted to access protected application functionality.

---

**Dependencies**

None.

---

**Priority**

Critical

---

**Verification Method**

- Functional Testing
- Security Testing

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

PFMS shall enforce authorization controls before allowing access to protected business operations.

---

**Requirement Statement**

Authenticated users shall perform only those business operations permitted by the applicable authorization rules.

---

**Acceptance Criteria**

Unauthorized business operations shall be prevented.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

- Functional Testing
- Security Testing

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

Stored authentication credentials comply with approved security practices.

---

**Dependencies**

NFR-SEC-001

---

**Priority**

Critical

---

**Verification Method**

- Security Review
- Inspection

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

To protect sensitive business information while it is transmitted between application components.

---

**Description**

Sensitive business information shall be protected against unauthorized disclosure during transmission.

---

**Requirement Statement**

Sensitive business information shall be transmitted using secure communication mechanisms.

---

**Acceptance Criteria**

Sensitive business information shall not be transmitted through unsecured communication channels.

---

**Dependencies**

None.

---

**Priority**

Critical

---

**Verification Method**

- Security Testing
- Inspection

---

### Data Integrity

Data Integrity requirements define the quality expectations required to maintain complete, accurate, and consistent business information throughout its lifecycle.

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

To ensure that business information remains complete, accurate, and internally consistent throughout its lifecycle.

---

**Description**

PFMS shall preserve the integrity of business information during processing, storage, retrieval, and presentation.

---

**Requirement Statement**

Business information shall remain complete, accurate, and internally consistent throughout all business operations.

---

**Acceptance Criteria**

Business information remains complete, accurate, and consistent following every successful business operation.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

- Functional Testing
- Data Validation
- Review

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

To ensure that PFMS maintains high-quality business information throughout its lifecycle.

---

**Description**

PFMS shall preserve the completeness, consistency, accuracy, and validity of business information during all business operations.

---

**Requirement Statement**

Business information shall remain complete, consistent, accurate, and valid throughout the application lifecycle.

---

**Acceptance Criteria**

- Business information satisfies the applicable Business Rules.
- Inconsistent business information is prevented.
- Information quality is maintained throughout all business operations.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

- Functional Testing
- Data Validation
- Review

---

### Maintainability

Maintainability requirements define the quality expectations that enable PFMS to support future business enhancements while minimizing the impact on existing functionality.

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

To ensure that future business capabilities can be incorporated into PFMS without significant redesign.

---

**Description**

PFMS shall support future business enhancements while preserving existing business functionality.

---

**Requirement Statement**

The application architecture shall support future business expansion with minimal impact on existing business functionality.

---

**Acceptance Criteria**

Future business capabilities can be incorporated without requiring significant architectural redesign.

---

**Dependencies**

None.

---

**Priority**

High

---

**Verification Method**

- Architecture Review
- Design Review

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

To ensure that PFMS remains modular, maintainable, and adaptable as new business capabilities are introduced.

---

**Description**

PFMS shall organize business functionality into independent modules with clearly defined responsibilities and minimal interdependencies.

---

**Requirement Statement**

Business modules shall remain logically separated and independently maintainable.

---

**Acceptance Criteria**

Business modules demonstrate clear functional boundaries and minimal coupling.

---

**Dependencies**

Business Architecture.

---

**Priority**

High

---

**Verification Method**

- Architecture Review
- Design Review

---

### Usability

Usability requirements define the quality expectations that ensure PFMS is easy to learn, easy to use, and consistent across all business modules.

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

To provide users with a consistent and intuitive user experience throughout PFMS.

---

**Description**

PFMS shall provide consistent business terminology, navigation, screen layouts, and interaction patterns across all business modules.

---

**Requirement Statement**

The application shall maintain a consistent user interface throughout PFMS.

---

**Acceptance Criteria**

- Business terminology remains consistent.
- Similar business operations follow consistent interaction patterns.
- Navigation remains consistent throughout the application.

---

**Dependencies**

Applicable Functional Requirements.

---

**Priority**

High

---

**Verification Method**

- User Acceptance Testing
- Usability Review

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

To ensure that business validation failures and unexpected application errors are communicated clearly to users.

---

**Description**

PFMS shall display meaningful and understandable messages while preventing exposure of technical implementation details.

---

**Requirement Statement**

Business validation failures and application errors shall be communicated using meaningful user-friendly messages.

---

**Acceptance Criteria**

- Users receive understandable messages.
- Technical implementation details are not exposed.
- Messages support appropriate corrective action where applicable.

---

**Dependencies**

Applicable Functional Requirements.

---

**Priority**

High

---

**Verification Method**

- Functional Testing
- User Acceptance Testing

---

### Compatibility

Compatibility requirements define the quality expectations that ensure PFMS operates correctly within the supported deployment environments.

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

To ensure that PFMS operates correctly within the supported deployment environments.

---

**Description**

PFMS shall function correctly on all supported deployment platforms defined for the application.

---

**Requirement Statement**

The application shall operate consistently on all supported deployment platforms.

---

**Acceptance Criteria**

- All supported business functions operate correctly on the supported platforms.
- Platform-specific issues shall not affect business functionality.

---

**Dependencies**

None.

---

**Priority**

Medium

---

**Verification Method**

- Compatibility Testing
- Functional Testing

---

### Backup and Recovery

Backup and Recovery requirements define the quality expectations for protecting and restoring business information.

---

#### NFR-BKP-001 – Business Information Backup

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

Recoverability

---

**Purpose**

To ensure that business information can be recovered following data loss or unexpected failures.

---

**Description**

PFMS shall support periodic backup of business information.

---

**Requirement Statement**

Business information shall be backed up according to the applicable operational procedures.

---

**Acceptance Criteria**

- Backup operations complete successfully.
- Backup information is available for recovery.

---

**Dependencies**

Applicable Operational Procedures.

---

**Priority**

Critical

---

**Verification Method**

- Operational Testing
- Recovery Testing

---

#### NFR-BKP-002 – Business Information Recovery

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

Recoverability

---

**Purpose**

To restore business information following data loss or unexpected system failures.

---

**Description**

PFMS shall support restoration of valid business information from available backups.

---

**Requirement Statement**

Business information shall be recoverable from valid backup copies.

---

**Acceptance Criteria**

- Recovery operations successfully restore business information.
- Restored business information remains complete and consistent.

---

**Dependencies**

NFR-BKP-001

---

**Priority**

Critical

---

**Verification Method**

- Recovery Testing

---

### Auditability

Auditability requirements define the quality expectations for reviewing and investigating significant business operations performed within PFMS.

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

To support investigation, verification, and troubleshooting of significant business operations.

---

**Description**

PFMS shall maintain sufficient audit information for significant business operations in accordance with the applicable Business Rules.

---

**Requirement Statement**

Significant business operations shall produce sufficient audit information to support future investigation and verification.

---

**Acceptance Criteria**

- Audit information is available for applicable business operations.
- Audit information supports business investigation and verification.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

High

---

**Verification Method**

- Functional Testing
- Audit Review

---

### Error Handling

Error Handling requirements define the quality expectations for handling unexpected application failures while preserving business integrity.

---

#### NFR-ERR-001 – Exception Handling

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

To ensure that unexpected application exceptions are handled safely without compromising business integrity.

---

**Description**

PFMS shall handle unexpected exceptions in a controlled manner while maintaining business integrity and minimizing disruption to users.

---

**Requirement Statement**

Unexpected exceptions shall be handled gracefully without causing application instability or business information inconsistency.

---

**Acceptance Criteria**

- Unexpected exceptions are handled safely.
- Business information remains consistent.
- Appropriate user-friendly messages are displayed.

---

**Dependencies**

- Applicable Functional Requirements.
- Applicable Business Rules.

---

**Priority**

Critical

---

**Verification Method**

- Exception Testing
- Recovery Testing

---

> **Note**
>
> The Non-Functional Requirements defined in this specification establish the minimum quality expectations applicable to PFMS. Additional quality requirements may be introduced during solution design provided they do not conflict with this Business Requirements Specification.

## Business Rules

The Business Rules define the business policies, constraints, validations, and decision logic that govern the operation of the Personal Finance Management System (PFMS).

Business Rules establish the conditions under which business operations shall be performed and ensure that financial information is processed consistently, accurately, and in accordance with the business objectives of PFMS. They provide the foundation for implementing the Functional Requirements and maintaining business integrity throughout the application.

Unless otherwise specified, every Functional Requirement shall comply with the applicable Global Business Rules, General Rules, Financial Business Rules, Module-Specific Business Rules, and other applicable business rules defined within this specification.

The Business Rules are organized according to the following categories:

- Global Business Rules
- General Rules
- Financial Business Rules
- Module-Specific Business Rules

---

### Global Business Rules

Global Business Rules define the fundamental business policies that apply across the entire Personal Finance Management System (PFMS), regardless of Business Domain or Business Module.

These rules establish common business constraints, validation principles, and system-wide policies that shall be satisfied by all applicable business operations.

---

### General Rules

General Rules define common business policies that apply across multiple Business Domains or Business Modules but are not considered fundamental system-wide policies.

These rules promote consistency and standardization while allowing specialized business rules to extend or override them where explicitly defined.

---

### Financial Business Rules

Financial Business Rules define business policies that govern financial transactions and financial processing within the Financial Management Business Domain.

These rules apply to all applicable Financial Management Business Modules unless overridden by a more specific Module-Specific Business Rule.

---

### Module-Specific Business Rules

Module-Specific Business Rules define specialized business policies that apply only to a particular Business Module.

These rules extend the Global Business Rules, General Rules, and Financial Business Rules to address the unique business requirements of individual modules.

### Global Business Rules

Global Business Rules define the fundamental business policies that apply across the entire Personal Finance Management System (PFMS), regardless of Business Domain or Business Module.

These rules establish common business constraints, validation principles, and system-wide policies that shall be satisfied by all applicable business operations.

---

#### GBR-001 – Unique Business Identifier

Every business entity maintained within PFMS shall possess a unique system-generated business identifier.

---

#### GBR-002 – Business Data Validation

Business information shall satisfy all applicable business rules before it is processed or committed.

---

#### GBR-003 – Master Data Validation

Every business operation that references master data shall use valid and existing master data maintained within PFMS.

---

#### GBR-004 – Positive Monetary Values

All monetary values shall be greater than zero unless explicitly permitted otherwise by the applicable Financial Business Rule or Module-Specific Business Rule.

---

#### GBR-005 – Business Rule Hierarchy

Business operations shall comply with the applicable Business Rules according to the following precedence:

1. Global Business Rules
2. General Rules
3. Financial Business Rules
4. Module-Specific Business Rules

Where multiple business rules apply, the more specific business rule shall take precedence unless explicitly stated otherwise.

---

#### GBR-006 – System Derived Values

System-derived business information shall not be manually modified unless explicitly permitted by the applicable Business Rule.

All system-derived values shall be calculated according to the applicable business rules.

---

#### GBR-007 – Business Rule Compliance

Every business operation performed within PFMS shall comply with all applicable Global Business Rules, General Rules, Financial Business Rules, and Module-Specific Business Rules before completion.

---

### General Rules

General Rules define common business policies that apply across multiple Business Domains or Business Modules but are not considered universal system-wide policies.

These rules establish standardized business behavior that may be reused by multiple Functional Requirements and Business Modules. Where explicitly defined, a more specific Financial Business Rule or Module-Specific Business Rule may extend or override a General Rule.

---

#### GR-001 – General Grace Period

Business operations that support Grace Period processing shall comply with the configured Grace Period applicable to the corresponding Business Module.

The applicable Grace Period, including its duration and processing behavior, shall be defined by the corresponding Financial Business Rule or Module-Specific Business Rule.

---

#### GR-002 – Mandatory Business Information

All mandatory business information required for a business operation shall be provided before the operation is processed.

Where applicable, additional mandatory information may be required by the corresponding Financial Business Rule or Module-Specific Business Rule.

---

#### GR-003 – Business Date Validation

Business dates shall comply with the date validation rules applicable to the corresponding Business Module.

Where future-dated business operations are permitted, they shall comply with the applicable Financial Business Rules or Module-Specific Business Rules.

---

#### GR-004 – Duplicate Business Processing

Business operations shall prevent or manage duplicate business information in accordance with the applicable Financial Business Rules or Module-Specific Business Rules.

---

#### GR-005 – Historical Business Processing

Business operations involving historical business information shall comply with the historical processing rules applicable to the corresponding Business Module.

---

#### GR-006 – User Confirmation

The system shall obtain user confirmation before completing business operations that require explicit user acknowledgement according to the applicable business rules.

---

#### GR-007 – Business Timestamp Management

Business information shall maintain the required business timestamps in accordance with the applicable business rules and operational requirements.

---

#### GR-008 – Business Visibility

Business information displayed to the user shall comply with the visibility rules applicable to the corresponding Business Module.

---

#### GR-009 – Business Ordering

Business information shall be presented according to the default ordering rules defined for the corresponding Business Module.

---

### Financial Business Rules

Financial Business Rules define the business policies that govern financial processing within the Financial Management Business Domain of the Personal Finance Management System (PFMS).

These rules establish how financial information shall be identified, classified, synchronized, maintained, and interpreted throughout its business lifecycle.

Financial Business Rules shall comply with the applicable Global Business Rules and General Rules. Module-Specific Business Rules may extend or override these rules where explicitly permitted.

---

#### FBR-001 – Financial Transaction

Every business event that results in a financial impact shall constitute a Financial Transaction within PFMS.

A Financial Transaction represents the authoritative financial event used for Budget determination, Account Balance calculation, Financial Reporting, Financial Analytics, Dashboard presentation, reconciliation, and all other dependent financial processing within PFMS.

Where a Financial Transaction is associated with another Business Module, it shall comply with the applicable Financial Business Rules and Module-Specific Business Rules governing that business relationship.

---

#### FBR-002 – Financial Currency

All Financial Transactions within PFMS shall use the configured application currency.

Where multiple currencies are supported in the future, currency processing shall comply with the applicable Module-Specific Business Rules.

---

#### FBR-003 – Budget Month Determination

Every Financial Transaction shall belong to one and only one Budget Month.

The applicable Budget Month shall be determined in accordance with the Salary Boundary rules defined within this specification.

The assigned Budget Month shall remain associated with the Financial Transaction unless modified in accordance with the applicable Historical Financial Processing rules.

---

#### FBR-004 – Budget Year Determination

Every Financial Transaction shall belong to one and only one Budget Year.

The applicable Budget Year shall be determined together with the Budget Month in accordance with the Salary Boundary rules defined within this specification.

The assigned Budget Year shall remain associated with the Financial Transaction unless modified in accordance with the applicable Historical Financial Processing rules.

---

#### FBR-005 – Salary Boundary

Salary Boundary processing shall determine the Budget Month and Budget Year associated with Financial Transactions.

Only one Salary Boundary shall exist for a Budget Month and Budget Year unless explicitly permitted in accordance with the applicable Historical Financial Processing rules.

Any modification affecting the Salary Boundary shall comply with the applicable Financial Business Rules, General Rules, and Historical Financial Processing rules.

---

#### FBR-006 – Historical Financial Processing

Historical Financial Transactions shall preserve the financial integrity of PFMS.

Any business operation involving historical Financial Transactions shall comply with the applicable Historical Processing rules while maintaining the correctness of Budget Month, Budget Year, Account Balances, Financial Reports, Financial Analytics, Dashboards, and all other dependent financial information.

Where Historical Financial Processing affects the Salary Boundary, the corresponding Salary Boundary rules shall also apply.

---

#### FBR-007 – Financial Chronology

Financial Transactions shall be interpreted according to their Business Transaction Date.

The chronological relationship between Financial Transactions shall be preserved for all financial processing, reporting, budgeting, reconciliation, and analytical activities.

Where multiple Financial Transactions occur on the same Business Transaction Date, the applicable Financial Business Rules shall determine the processing sequence.

---

#### FBR-008 – Financial Recalculation

Whenever a Financial Business Operation affects dependent financial information, PFMS shall ensure that all applicable financial calculations remain consistent.

Dependent financial information includes, but is not limited to:

- Budget calculations
- Account Balances
- Financial Summaries
- Financial Reports
- Dashboards
- Financial Analytics
- Any other dependent financial information defined within PFMS

The scope of financial recalculation shall be determined by the applicable Financial Business Rules.

---

#### FBR-009 – Financial Data Synchronization

Financial information maintained across multiple Business Modules shall remain synchronized in accordance with the applicable Financial Business Rules.

Where a Financial Transaction depends upon information maintained by another Business Module, or another Business Module depends upon a Financial Transaction, the applicable synchronization rules, including the permitted Grace Period and subsequent business processing, shall be applied.

The Financial Data Synchronization rules apply to all current and future Business Modules that participate in dependent financial processing.

---

#### FBR-010 – Financial Dependency Processing

Financial Business Operations may establish dependencies between Financial Transactions and related business information maintained within other Business Modules.

All dependent financial processing shall preserve financial integrity, business consistency, and synchronization throughout the lifecycle of the related business information.

The applicable dependency processing rules shall be determined by the corresponding Financial Business Rules and Module-Specific Business Rules.

### Account Management

Account Management Business Rules define the business policies governing the lifecycle and usage of Accounts within PFMS.

Accounts identify the financial sources and destinations used by Financial Transactions. They do not maintain financial balances or monetary information.

---

#### BR-ACC-001 – Unique Account

Each Account shall have a unique Account Name.

---

#### BR-ACC-002 – Mandatory Account Information

Every Account shall contain all mandatory Account information before it participates in business operations.

The mandatory information shall include:

- Account Name
- Purpose
- Primary Account Indicator

---

#### BR-ACC-003 – Primary Account

Only one Account shall be designated as the Primary Account at any given time.

---

#### BR-ACC-004 – Primary Account Transition

When an Account is designated as the Primary Account, the existing Primary Account shall automatically cease to be the Primary Account.

---

#### BR-ACC-005 – Account Availability

Only Active Accounts shall participate in new business operations.

Inactive Accounts shall remain available for historical business information where applicable.

---

#### BR-ACC-006 – Account Reference Restriction

An Account that participates in business information shall comply with the applicable business rules governing its lifecycle.

---

#### BR-ACC-007 – Default Account Selection

Where a Primary Account exists, it shall be presented as the default Account for applicable business operations.

---

#### BR-ACC-008 – Account Inactivation

Inactive Accounts shall not participate in future business operations.

Historical business information shall continue to reference the inactive Account without modification.

### Category Management

Category Management Business Rules define the business policies governing the lifecycle and usage of Categories within PFMS.

Categories provide the primary business classification for Financial Transactions and other applicable business information.

---

#### BR-CAT-001 – Unique Category

Each Category shall have a unique Category Name.

---

#### BR-CAT-002 – Mandatory Category Information

Every Category shall contain all mandatory Category information before it participates in business operations.

The mandatory information shall include:

- Category Name

---

#### BR-CAT-003 – Category Availability

Only Active Categories shall participate in new business operations.

Inactive Categories shall remain available for historical business information where applicable.

---

#### BR-CAT-004 – Category Reference Restriction

A Category that is referenced by another business entity shall comply with the applicable business rules governing its lifecycle.

---

#### BR-CAT-005 – Category Inactivation

When a Category is marked as Inactive, it shall no longer participate in new business operations.

Historical business information shall continue to reference the inactive Category without modification.

### SubCategory Management

SubCategory Management Business Rules define the business policies governing the lifecycle and usage of SubCategories within PFMS.

SubCategories provide the detailed business classification for Financial Transactions and other applicable business information.

---

#### BR-SUB-001 – Parent Category Association

Every SubCategory shall belong to one and only one Category.

---

#### BR-SUB-002 – Mandatory SubCategory Information

Every SubCategory shall contain all mandatory SubCategory information before it participates in business operations.

The mandatory information shall include:

- Category
- SubCategory Name

---

#### BR-SUB-003 – Unique SubCategory

SubCategory Names shall be unique within the same Category.

The same SubCategory Name may exist under different Categories where permitted by the applicable business rules.

---

#### BR-SUB-004 – SubCategory Availability

Only Active SubCategories shall participate in new business operations.

Inactive SubCategories shall remain available for historical business information where applicable.

---

#### BR-SUB-005 – SubCategory Reference Restriction

A SubCategory that is referenced by another business entity shall comply with the applicable business rules governing its lifecycle.

---

#### BR-SUB-006 – SubCategory Inactivation

When a SubCategory is marked as Inactive, it shall no longer participate in new business operations.

Historical business information shall continue to reference the inactive SubCategory without modification.

### Payment Mode Management

Payment Mode Management Business Rules define the business policies governing the lifecycle and usage of Payment Modes within PFMS.

Payment Modes identify the business method through which Financial Transactions are settled. They do not define the financial processing associated with a Payment Mode, which is governed by the applicable Financial Business Rules.

---

#### BR-PMT-001 – Unique Payment Mode

Each Payment Mode shall have a unique Payment Mode Name.

---

#### BR-PMT-002 – Mandatory Payment Mode Information

Every Payment Mode shall contain all mandatory Payment Mode information before it participates in business operations.

The mandatory information shall include:

- Payment Mode Name

---

#### BR-PMT-003 – Payment Mode Availability

Only Active Payment Modes shall participate in new business operations.

Inactive Payment Modes shall remain available for historical business information where applicable.

---

#### BR-PMT-004 – Payment Mode Reference Restriction

A Payment Mode that is referenced by another business entity shall comply with the applicable business rules governing its lifecycle.

---

#### BR-PMT-005 – Payment Mode Inactivation

When a Payment Mode is marked as Inactive, it shall no longer participate in new business operations.

Historical business information shall continue to reference the inactive Payment Mode without modification.

### Merchant Management

Merchant Management Business Rules define the business policies governing the lifecycle and usage of Merchants within PFMS.

Merchants identify the business organization or individual associated with a Financial Transaction where applicable.

Merchant information is optional and shall be maintained independently of Financial Transaction processing.

---

#### BR-MER-001 – Optional Merchant

Merchant information shall be optional for business operations unless explicitly required by the applicable Financial Business Rules or Module-Specific Business Rules.

---

#### BR-MER-002 – Unique Merchant

Each Merchant shall have a unique Merchant Name.

---

#### BR-MER-003 – Merchant Availability

Only Active Merchants shall participate in new business operations.

Inactive Merchants shall remain available for historical business information where applicable.

---

#### BR-MER-004 – Merchant Reference Restriction

A Merchant that is referenced by another business entity shall comply with the applicable business rules governing its lifecycle.

---

#### BR-MER-005 – Merchant Inactivation

When a Merchant is marked as Inactive, it shall no longer participate in new business operations.

Historical business information shall continue to reference the inactive Merchant without modification.

### Budget Management

Budget Management Business Rules define the business policies governing the allocation, utilization, monitoring, and lifecycle of Budgets within PFMS.

Budgets represent planned financial allocations for a Category within a specific Budget Month and Budget Year. Budget information supports financial planning and monitoring and operates independently of Financial Transaction processing unless explicitly defined otherwise.

---

#### BR-BUD-001 – Budget Allocation

A Budget may be allocated independently for any Category.

---

#### BR-BUD-002 – Optional Budget

Financial Transactions shall not require an existing Budget.

Likewise, the absence of Financial Transactions shall not prevent Budget allocation.

---

#### BR-BUD-003 – Mandatory Budget Information

Every Budget shall contain all mandatory Budget information before it participates in business operations.

The mandatory information shall include:

- Category
- Budget Month
- Budget Year
- Budget Amount

---

#### BR-BUD-004 – Unique Budget Allocation

Only one Budget Allocation shall exist for the same:

- Category
- Budget Month
- Budget Year

---

#### BR-BUD-005 – Budget Reference Restriction

A Budget that participates in business information shall comply with the applicable business rules governing its lifecycle.

---

#### BR-BUD-006 – Budget Utilization

Budget utilization shall be determined using the cumulative Financial Transaction Amount applicable to the corresponding Category, Budget Month, and Budget Year.

---

#### BR-BUD-007 – Budget Exceeded

PFMS shall identify when Budget utilization exceeds the allocated Budget Amount.

The corresponding Budget shall continue to remain valid after the allocated Budget Amount has been exceeded.

---

#### BR-BUD-008 – Budget Variance

Budget Variance shall be determined as the difference between the allocated Budget Amount and the Budget Utilization.

A Budget Variance may be:

- Positive, indicating that Budget remains available.
- Zero, indicating that the allocated Budget has been fully utilized.
- Negative, indicating that the Budget has been exceeded.

Budget Variance shall be preserved without modification as it represents the actual financial position for the corresponding Budget.

---

#### BR-BUD-009 – Unused Budget

A Budget that has no applicable Financial Transactions for the corresponding Budget Month and Budget Year shall be considered an Unused Budget.

---

#### BR-BUD-010 – Budget Independence

Budgets represent planned financial allocations.

The existence, modification, or absence of a Budget shall not prevent the recording, processing, or interpretation of Financial Transactions within PFMS.

### Reserve Management

Reserve Management Business Rules define the business policies governing the accumulation, utilization, lifecycle, and historical preservation of Emergency Funds within PFMS.

Emergency Funds are accumulated by transferring available funds from the designated Primary Account to the designated Secondary Account. Each uninterrupted Emergency Fund accumulation period constitutes a unique Reserve Generation.

---

#### BR-RES-001 – Reserve Purpose

Reserve Management shall represent Emergency Funds intentionally set aside for future financial requirements.

Emergency Funds shall be accumulated by transferring available funds from the designated Primary Account to the designated Secondary Account.

The designated Secondary Account shall represent the Emergency Fund until the accumulated funds are utilized.

---

#### BR-RES-002 – Reserve Account Association

Reserve Management shall operate only between the designated Primary Account and the designated Secondary Account configured within PFMS.

---

#### BR-RES-003 – Reserve Generation

Each uninterrupted Emergency Fund accumulation period shall constitute one Reserve Generation.

Every Reserve Generation shall possess a unique sequential identifier.

---

#### BR-RES-004 – Reserve Cycle Initiation

When Emergency Funds are transferred from the designated Primary Account to the designated Secondary Account and no active Reserve Generation exists, a new Reserve Generation shall become active.

---

#### BR-RES-005 – Active Reserve Generation

All consecutive Emergency Fund transfers from the designated Primary Account to the designated Secondary Account shall belong to the currently active Reserve Generation until that Reserve Generation is closed.

---

#### BR-RES-006 – Reserve Cycle Closure

The first transfer of Emergency Funds from the designated Secondary Account to the designated Primary Account shall immediately close the active Reserve Generation.

---

#### BR-RES-007 – Reserve Generation Continuity

After a Reserve Generation has been closed, no active Reserve Generation shall exist until another qualifying Emergency Fund transfer from the designated Primary Account to the designated Secondary Account occurs.

---

#### BR-RES-008 – Subsequent Reserve Generation

The first qualifying Emergency Fund transfer following the closure of a Reserve Generation shall initiate the next sequential Reserve Generation.

---

#### BR-RES-009 – Reserve Balance

The Reserve Balance shall always be derived from the actual balance maintained within the designated Secondary Account.

The Reserve module shall not maintain an independent Reserve Balance.

---

#### BR-RES-010 – Historical Reserve Integrity

Business operations performed on the active Reserve Generation shall not modify previously closed Reserve Generations.

Closed Reserve Generations shall preserve their original business information throughout their lifecycle.

---

#### BR-RES-011 – Reserve Generation Sequence

Reserve Generation identifiers shall be assigned sequentially.

Reserve Generation identifiers shall never be reused, renumbered, or manually modified.

---

#### BR-RES-012 – Reserve Generation Management

Reserve Generations shall be created, transitioned, and maintained automatically in accordance with the applicable Reserve Business Rules.

Users shall not manually create, modify, renumber, merge, split, reopen, or delete Reserve Generations.

---

#### BR-RES-013 – Emergency Fund Usage

The designated Secondary Account shall be used exclusively for maintaining Emergency Funds associated with Reserve Management.

Transfers from the designated Secondary Account shall represent the utilization of accumulated Emergency Funds and shall be processed in accordance with the applicable Reserve Business Rules.

### Atal Pension Management

Atal Pension Management Business Rules define the business policies governing the monitoring of the user's Atal Pension Yojana (APY) deductions within PFMS.

The purpose of this module is to assist the user in maintaining sufficient funds within the designated Account for successful APY deductions and to preserve the historical deduction information maintained by PFMS.

#### BR-APY-001 – Monthly Contribution

The configured Monthly Contribution Amount shall be greater than zero.

---

#### BR-APY-002 – Scheduled Deduction Monitoring

PFMS shall monitor the designated Account for the upcoming Monthly Contribution.

---

#### BR-APY-003 – Low Balance Notification

When the available balance of the designated Account is insufficient for the upcoming Monthly Contribution, PFMS shall notify the user to maintain sufficient funds before the scheduled deduction.

### HardCash Wallet Management

HardCash Wallet Management Business Rules define the business policies governing the management, monitoring, reconciliation, and lifecycle of physical cash maintained by the user within PFMS.

The HardCash Wallet maintains the history of physical cash movements, organizes those movements into logical HardCash Groups, and enables reconciliation between the user's actual physical wallet and the financial information maintained within PFMS.

Unlike Bank Accounts, the HardCash Wallet represents only the physical cash currently possessed by the user.

---

#### BR-HCW-001 – HardCash Ledger

The HardCash Wallet shall maintain a complete history of all physical cash movements.

---

#### BR-HCW-002 – HardCash Transaction Type

Every HardCash Wallet transaction shall represent either a Credit or a Debit movement of physical cash.

---

#### BR-HCW-003 – Wallet Balance

The HardCash Wallet shall maintain the Current Balance after every HardCash transaction.

The Current Balance shall always represent the actual physical cash available to the user.

---

#### BR-HCW-004 – Physical Cash Reconciliation

The Current Balance shall be used to reconcile the actual physical cash available with the HardCash Wallet maintained within PFMS whenever differences are identified.

---

#### BR-HCW-005 – HardCash Group Association

Every HardCash Wallet transaction shall belong to one and only one HardCash Group.

---

#### BR-HCW-006 – HardCash Group Creation

A new HardCash Group shall be created only when the user explicitly indicates that a new HardCash Group is required.

---

#### BR-HCW-007 – HardCash Group Number

HardCash Group identifiers shall be generated sequentially (HC1, HC2, HC3, ...).

Users shall not manually create, modify, renumber, merge, split, reopen, or delete HardCash Groups.

---

#### BR-HCW-008 – HardCash Group Continuation

When a new HardCash Group is not initiated, subsequent HardCash Wallet transactions shall continue under the currently active HardCash Group.

---

#### BR-HCW-009 – Logical Cash Cycle

A HardCash Group represents a logical cash cycle for organizing physical cash movements.

A HardCash Group shall not represent ownership of cash, individual currency notes, denomination tracking, FIFO processing, LIFO processing, or any physical cash allocation methodology.

---

#### BR-HCW-010 – Initial HardCash Group

During the initial setup of PFMS, the opening HardCash Balance shall initialize the first HardCash Group.

---

#### BR-HCW-011 – External Cash Receipt

Physical cash received from external sources may increase the HardCash Wallet Balance without initiating a new HardCash Group.

Examples include, but are not limited to:

- Cash received from family members.
- Cash received from friends.
- Temporary custody of another person's cash.

---

#### BR-HCW-012 – Bank Deposit

Depositing physical cash into a Bank Account shall reduce the HardCash Wallet Balance.

Such business operations shall continue under the existing HardCash Group unless the user explicitly initiates a new HardCash Group.

---

#### BR-HCW-013 – Financial Association

Business operations involving Physical Cash shall comply with both the Financial Business Rules and the HardCash Wallet Business Rules.

Financial Transactions shall represent the financial impact of the business operation.

The HardCash Wallet shall represent the corresponding physical cash movement.

---

#### BR-HCW-014 – Cash Acquisition

Business operations that increase the user's physical cash, such as ATM withdrawals or similar cash acquisition activities, may initiate a new HardCash Group when explicitly requested by the user.

---

#### BR-HCW-015 – HardCash Group Authority

The initiation of a HardCash Group shall be determined solely by the user's business decision.

The system shall not infer the creation of a new HardCash Group based on the Transaction Type, Amount, Payment Mode, Source of Cash, or any other business attribute.

---

#### BR-HCW-016 – Historical HardCash Integrity

Business operations performed on the active HardCash Group shall not modify previously completed HardCash Groups.

Historical HardCash Groups shall preserve their original business information throughout their lifecycle.

---

#### BR-HCW-017 – Wallet Independence

The HardCash Wallet shall represent only the physical cash possessed by the user.

Bank Account balances shall not directly affect the HardCash Wallet unless a corresponding HardCash business operation has occurred.

---

#### BR-HCW-018 – HardCash Balance Integrity

The HardCash Wallet Balance shall always reflect the cumulative effect of all applicable HardCash transactions processed within PFMS.

The HardCash Wallet shall not maintain an independent balance outside its recorded HardCash transaction history.

### Milk Purchase Management

Milk Purchase Management Business Rules define the business policies governing the recording, monitoring, monthly settlement, and historical preservation of daily milk supplies received from the user's regular milk vendor within PFMS.

The Milk Purchase module serves as an operational module. It records the daily supply of milk and related products, derives the Monthly Milk Bill for settlement, and creates a single Financial Transaction only after the user settles the vendor's bill.

---

#### BR-MLK-001 – Regular Vendor

Milk Purchase records shall be maintained exclusively for the user's designated regular milk vendor.

One-time milk or curd purchases from other vendors shall not be maintained within the Milk Purchase module and shall instead be recorded directly as Financial Transactions.

---

#### BR-MLK-002 – Operational Ledger

The Milk Purchase module shall function solely as an operational ledger.

Daily Milk Purchase records shall not constitute Financial Transactions.

---

#### BR-MLK-003 – Daily Milk Record

Only one Milk Purchase record shall exist for each Business Date.

---

#### BR-MLK-004 – Monthly Bill Derivation

At the completion of each settlement period, PFMS shall automatically derive the Monthly Milk Bill from the corresponding Milk Purchase records.

The Monthly Milk Bill shall represent the total amount payable for the settlement period.

---

#### BR-MLK-005 – Monthly Bill Composition

The Monthly Milk Bill shall be derived using all applicable Milk Purchase records belonging to the settlement period.

The derived Monthly Bill shall include:

- Total Buffalo Milk Amount
- Total Cow Milk Amount
- Total Curd Amount
- Grand Total Payable

---

#### BR-MLK-006 – Settlement Independence

Deriving the Monthly Milk Bill shall not constitute Financial Settlement.

Financial Settlement shall occur only after the corresponding Financial Transaction has been successfully completed.

---

#### BR-MLK-007 – Financial Settlement

A single Financial Transaction shall represent the settlement of one Monthly Milk Bill.

No Financial Transaction shall be created before the user confirms the settlement.

---

#### BR-MLK-008 – Editable Before Settlement

Milk Purchase records belonging to a settlement period shall remain available for business updates until the corresponding Monthly Bill has been settled.

---

#### BR-MLK-009 – Post-Settlement Protection

After successful Financial Settlement, the corresponding Milk Purchase records shall be considered Settled.

Settled Milk Purchase records shall no longer participate in business modifications.

---

#### BR-MLK-010 – Post-Settlement Adjustment

Business information identified after settlement shall not modify previously settled Milk Purchase records.

Such adjustments shall be recorded within the next applicable settlement period in accordance with the applicable business rules.

---

#### BR-MLK-011 – Monthly Settlement Consistency

All Milk Purchase records belonging to the same settlement period shall maintain a consistent Settlement Status.

---

#### BR-MLK-012 – Operational Ledger Integrity

The Milk Purchase module shall maintain only operational business information.

Financial accounting, budgeting, reporting, and financial analytics shall be maintained exclusively through the Financial Transaction module.

### Gas Cylinder Management

Gas Cylinder Management Business Rules define the business policies governing the operational lifecycle of domestic LPG cylinder replacements within PFMS.

The Gas Cylinder module records cylinder replacement activities from cylinder exhaustion through booking, delivery, and completion. It serves as an operational module and does not maintain financial accounting. All monetary movements associated with LPG cylinder operations shall be maintained through the Financial Transaction module.

---

#### BR-GAS-001 – Operational Lifecycle

Each Gas Cylinder record shall represent one complete LPG cylinder replacement lifecycle.

---

#### BR-GAS-002 – Cylinder Replacement

A Gas Cylinder record shall be created whenever a replacement cylinder is required after the existing cylinder becomes empty.

---

#### BR-GAS-003 – Booking Information

Every Gas Cylinder record shall maintain the applicable booking information for the replacement cylinder.

The Booking Date may be later than the Cylinder Change Date.

---

#### BR-GAS-004 – Delivery Information

Delivery information shall remain pending until the replacement cylinder has been successfully delivered.

Upon successful delivery, the corresponding Delivery information shall be completed.

---

#### BR-GAS-005 – Merchant Association

Every Gas Cylinder record shall be associated with the applicable LPG supplier maintained within PFMS.

---

#### BR-GAS-006 – Operational Status

Every Gas Cylinder record shall maintain one operational status throughout its lifecycle.

The supported operational statuses shall include:

- Pending
- Delivered
- Cancelled

---

#### BR-GAS-007 – Financial Independence

The Gas Cylinder module shall maintain only operational business information.

Financial accounting associated with cylinder booking, refunds, delivery tips, or other monetary activities shall be maintained exclusively through the Financial Transaction module.

---

#### BR-GAS-008 – Booking Payment

Payment for an LPG cylinder booking shall be represented through a Financial Transaction recorded at the time the payment is made.

---

#### BR-GAS-009 – Delivery Charges

Additional payments associated with cylinder delivery, such as voluntary delivery tips, shall be represented through separate Financial Transactions where applicable.

---

#### BR-GAS-010 – Booking Cancellation

When a cylinder booking is cancelled, the corresponding Gas Cylinder record shall preserve the operational history by maintaining the Cancelled status.

Cancelled Gas Cylinder records shall not be reused to represent subsequent bookings.

---

#### BR-GAS-011 – Refund Processing

Financial refunds resulting from cancelled bookings shall be represented through separate Financial Transactions in accordance with the applicable Financial Business Rules.

---

#### BR-GAS-012 – New Booking

Every subsequent LPG cylinder booking shall create a new Gas Cylinder record.

Historical Gas Cylinder records shall remain unchanged.

---

#### BR-GAS-013 – Historical Preservation

Gas Cylinder records shall preserve the complete operational history of LPG cylinder replacements for future reference and analysis.

### Bike Fuel Management

Bike Fuel Management Business Rules define the business policies governing the recording, monitoring, and historical preservation of complete bike fuel refill cycles within PFMS.

The Bike Fuel module serves as an operational module. It records complete fuel refill cycles using the bike's Trip Meter to support fuel performance analysis. Financial accounting associated with fuel purchases shall be maintained exclusively through the Financial Transaction module.

---

#### BR-BFL-001 – Complete Fuel Cycle

Each Bike Fuel record shall represent one complete fuel refill cycle.

A fuel refill cycle begins immediately after a fuel refill and ends when the next complete fuel refill is performed.

---

#### BR-BFL-002 – Trip Meter Measurement

The Trip Meter shall be used to determine the total distance travelled during a completed fuel refill cycle.

---

#### BR-BFL-003 – Trip Meter Reset

After recording a completed fuel refill cycle, the Trip Meter shall be reset to begin measuring the next fuel refill cycle.

---

#### BR-BFL-004 – Fuel Refill Information

Every Bike Fuel record shall maintain the operational information associated with the completed fuel refill.

The operational information shall include:

- Fuel Refill Date
- Distance Travelled
- Fuel Quantity
- Fuel Type
- Fuel Supplier

---

#### BR-BFL-005 – Financial Independence

The Bike Fuel module shall maintain only operational business information.

Financial accounting associated with fuel purchases shall be maintained exclusively through the Financial Transaction module.

---

#### BR-BFL-006 – Fuel Purchase

Every completed fuel purchase shall be represented by the corresponding Financial Transaction.

---

#### BR-BFL-007 – Complete Fuel Cycle Requirement

Only completed fuel refill cycles shall be recorded.

Partial fuel refills that do not represent a completed fuel cycle shall not participate in fuel performance analysis.

---

#### BR-BFL-008 – Trip Meter Integrity

If the Trip Meter reading is lost, reset, or otherwise becomes unavailable before completion of a fuel refill cycle, that fuel cycle shall not participate in fuel performance analysis.

Estimated or reconstructed Trip Meter values shall not be recorded.

---

#### BR-BFL-009 – Missed Fuel Cycle

A missed fuel refill cycle may be recorded during the applicable Global Data Synchronization Grace Period, provided sufficient supporting business evidence exists.

If the applicable grace period expires or supporting evidence is unavailable, the missed fuel refill cycle shall not be reconstructed.

Subsequent fuel refill cycles shall continue normally.

---

#### BR-BFL-010 – Historical Preservation

PFMS shall preserve the complete operational history of all valid fuel refill cycles for future reference and performance analysis.

### Engine Oil Management

Engine Oil Management Business Rules define the business policies governing the recording, monitoring, maintenance cycle management, and historical preservation of engine oil replacements within PFMS.

The Engine Oil module serves as an operational maintenance module. It records engine oil replacement activities, maintains maintenance cycle information, and assists in determining the next recommended engine oil replacement. Financial accounting associated with engine oil replacement shall be maintained exclusively through the Financial Transaction module.

---

#### BR-EOL-001 – Engine Oil Replacement

Each Engine Oil record shall represent one completed engine oil replacement performed for the bike.

---

#### BR-EOL-002 – Maintenance Information

Every Engine Oil record shall maintain the operational information associated with the engine oil replacement.

The operational information shall include:

- Oil Change Date
- Odometer Reading
- Recommended Oil Change Interval
- Service Provider

---

#### BR-EOL-003 – Maintenance Cycle

The next recommended engine oil replacement shall be determined using the Odometer Reading at which the current engine oil replacement was completed together with the applicable recommended maintenance interval.

---

#### BR-EOL-004 – Maintenance Cycle Continuity

When an engine oil replacement is performed earlier than the previously recommended maintenance interval, the subsequent maintenance cycle shall begin from the actual Odometer Reading at which the replacement was performed.

---

#### BR-EOL-005 – Financial Independence

The Engine Oil module shall maintain only operational maintenance information.

Financial accounting associated with engine oil replacement shall be maintained exclusively through the Financial Transaction module.

---

#### BR-EOL-006 – Financial Association

Every engine oil replacement shall be represented by the corresponding Financial Transaction.

---

#### BR-EOL-007 – Service Provider Association

Every Engine Oil replacement shall be associated with the applicable Service Provider maintained within PFMS.

---

#### BR-EOL-008 – Missed Maintenance Entry

A missed engine oil replacement may be recorded during the applicable Global Data Synchronization Grace Period, provided sufficient supporting business evidence exists.

If the applicable grace period expires or supporting evidence is unavailable, the missed engine oil replacement shall not be reconstructed.

Subsequent maintenance cycles shall continue normally.

---

#### BR-EOL-009 – Historical Preservation

PFMS shall preserve the complete operational history of all valid engine oil replacements for future reference and maintenance analysis.

### Bike Maintenance Management

Bike Maintenance Management Business Rules define the business policies governing the recording, monitoring, and historical preservation of bike maintenance and repair activities within PFMS.

The Bike Maintenance module serves as an operational maintenance module. It records maintenance and repair activities performed on the bike, excluding fuel refills and engine oil replacements. Financial accounting associated with bike maintenance shall be maintained exclusively through the Financial Transaction module.

---

#### BR-BMT-001 – Maintenance Activity

Each Bike Maintenance record shall represent one completed bike maintenance or repair activity.

---

#### BR-BMT-002 – Maintenance Scope

The Bike Maintenance module shall maintain maintenance and repair activities other than fuel refills and engine oil replacements.

Fuel refills shall be maintained exclusively within the Bike Fuel module.

Engine oil replacements shall be maintained exclusively within the Engine Oil module.

---

#### BR-BMT-003 – Maintenance Information

Every Bike Maintenance record shall maintain the operational information associated with the completed maintenance activity.

The operational information shall include:

- Maintenance Date
- Odometer Reading
- Maintenance Type
- Service Provider

---

#### BR-BMT-004 – Financial Independence

The Bike Maintenance module shall maintain only operational maintenance information.

Financial accounting associated with bike maintenance shall be maintained exclusively through the Financial Transaction module.

---

#### BR-BMT-005 – Financial Association

Every completed bike maintenance activity shall be represented by the corresponding Financial Transaction.

---

#### BR-BMT-006 – Service Provider Association

Every Bike Maintenance activity shall be associated with the applicable Service Provider maintained within PFMS.

---

#### BR-BMT-007 – Missed Maintenance Entry

A missed bike maintenance activity may be recorded during the applicable Global Data Synchronization Grace Period, provided sufficient supporting business evidence exists.

If the applicable grace period expires or supporting evidence is unavailable, the missed maintenance activity shall not be reconstructed.

Subsequent maintenance activities shall continue normally.

---

#### BR-BMT-008 – Historical Preservation

PFMS shall preserve the complete operational history of all valid bike maintenance and repair activities for future reference and maintenance analysis.

### Insurance Policy Management

Insurance Policy Management Business Rules define the business policies governing the registration, lifecycle, and management of insurance policies maintained within PFMS.

The Insurance Policy module maintains the master information associated with insurance policies. It serves as the parent record for Insurance Premiums and does not maintain premium payment history or financial accounting.

---

#### BR-INS-001 – Insurance Policy

Each Insurance Policy shall represent one insurance policy maintained by the user.

---

#### BR-INS-002 – Policy Identification

Every Insurance Policy shall possess a unique system-generated Policy Reference.

The Policy Reference shall uniquely identify the Insurance Policy within PFMS and shall not represent the official policy number assigned by the insurance provider.

---

#### BR-INS-003 – Mandatory Policy Information

Every Insurance Policy shall contain all mandatory policy information before it participates in business operations.

The mandatory information shall include:

- Policy Name
- Insurance Provider
- Policy Start Date
- Premium Payment End Date
- Maturity Date
- Payment Frequency

---

#### BR-INS-004 – Insurance Provider Association

Every Insurance Policy shall be associated with the applicable Insurance Provider maintained within PFMS.

---

#### BR-INS-005 – Policy Timeline

The Policy Start Date shall occur on or before the Premium Payment End Date.

The Premium Payment End Date shall occur on or before the Maturity Date.

Limited premium payment policies may have a Premium Payment End Date earlier than the Maturity Date.

---

#### BR-INS-006 – Premium Payment Frequency

Every Insurance Policy shall define the applicable Premium Payment Frequency.

The supported Premium Payment Frequencies shall include:

- Monthly
- Quarterly
- Half-Yearly
- Yearly

---

#### BR-INS-007 – Premium Independence

The Insurance Policy module shall maintain only the master information associated with the Insurance Policy.

Premium payment history shall be maintained exclusively through the Insurance Premium module.

---

#### BR-INS-008 – Financial Independence

The Insurance Policy module shall not maintain financial accounting.

Financial transactions associated with insurance premium payments shall be maintained exclusively through the Financial Transaction module.

---

#### BR-INS-009 – Historical Preservation

Insurance Policies shall preserve their business information throughout their lifecycle.

Historical Insurance Premium records shall continue to reference the associated Insurance Policy.

### Insurance Premium Management

Insurance Premium Management Business Rules define the business policies governing the recording, monitoring, payment lifecycle, and historical preservation of insurance premium installments within PFMS.

The Insurance Premium module maintains the premium payment history for Insurance Policies. It records scheduled premium installments, tracks their payment lifecycle, and determines their payment status according to the business rules defined for the associated Insurance Policy. Financial accounting associated with premium payments shall be maintained exclusively through the Financial Transaction module.

---

#### BR-INP-001 – Premium Installment

Each Insurance Premium record shall represent one premium installment belonging to an Insurance Policy.

---

#### BR-INP-002 – Policy Association

Every Insurance Premium shall be associated with an existing Insurance Policy maintained within PFMS.

---

#### BR-INP-003 – Premium Information

Every Insurance Premium shall maintain the applicable premium payment information.

The premium information shall include:

- Premium Due Date
- Premium Amount
- Payment Date (where applicable)
- Payment Method
- Payment Status

---

#### BR-INP-004 – Premium Payment Period

Insurance Premium installments shall be maintained only within the premium payment period defined by the associated Insurance Policy.

No premium installment shall exist beyond the Premium Payment End Date of the associated Insurance Policy.

---

#### BR-INP-005 – Premium Payment Status

Every Insurance Premium shall maintain one payment status throughout its lifecycle.

The supported payment statuses shall include:

- Due
- Paid
- Overdue

---

#### BR-INP-006 – Premium Grace Period

Each Insurance Policy may define an Insurance Premium Grace Period.

If a premium remains unpaid after its Premium Due Date, the applicable Insurance Premium Grace Period shall determine whether the premium continues to remain Due or becomes Overdue.

The Insurance Premium Grace Period is specific to the associated Insurance Policy and is independent of the Global Data Synchronization Grace Period used elsewhere within PFMS.

---

#### BR-INP-007 – Premium Payment Completion

Upon successful payment of a premium installment, the corresponding Insurance Premium shall be updated to Paid.

---

#### BR-INP-008 – Financial Association

Every completed Insurance Premium payment shall be represented by one corresponding Financial Transaction.

---

#### BR-INP-009 – Premium Independence

The Insurance Premium module shall maintain only premium payment history.

Insurance Policy master information shall be maintained exclusively through the Insurance Policy module.

Financial accounting shall be maintained exclusively through the Financial Transaction module.

---

#### BR-INP-010 – Historical Preservation

PFMS shall preserve the complete history of all Insurance Premium installments for future reference, payment tracking, and financial analysis.


### Insurance Premium Management

Insurance Premium Management Business Rules define the business policies governing the recording, monitoring, payment lifecycle, and historical preservation of insurance premium installments within PFMS.

The Insurance Premium module maintains the premium payment history for Insurance Policies. It records scheduled premium installments, monitors their payment status, and manages the premium payment lifecycle according to the business rules applicable to the associated Insurance Policy.

The Insurance Premium module maintains only premium payment information. Insurance Policy master information is maintained through the Insurance Policy module, while all financial accounting associated with premium payments is maintained through the Financial Transaction module.

---

#### BR-INP-001 – Premium Installment

Each Insurance Premium record shall represent one premium installment belonging to an Insurance Policy.

---

#### BR-INP-002 – Policy Association

Every Insurance Premium shall be associated with an existing Insurance Policy maintained within PFMS.

---

#### BR-INP-003 – Premium Information

Every Insurance Premium shall maintain the applicable premium payment information.

The premium information shall include:

- Premium Due Date
- Premium Amount
- Premium Payment Date (where applicable)
- Payment Mode
- Payment Status

---

#### BR-INP-004 – Premium Payment Period

Insurance Premium installments shall exist only within the Premium Payment Period defined by the associated Insurance Policy.

No Insurance Premium installment shall be maintained beyond the Premium Payment End Date of the associated Insurance Policy.

---

#### BR-INP-005 – Payment Status

Every Insurance Premium shall maintain one Payment Status throughout its lifecycle.

The supported Payment Status values shall include:

- Due
- Paid
- Overdue

---

#### BR-INP-006 – Premium Grace Period

Each Insurance Policy may define a Premium Grace Period applicable to its premium installments.

If a premium remains unpaid after its Premium Due Date, the applicable Premium Grace Period shall determine whether the premium continues to remain Due or becomes Overdue.

The Premium Grace Period applies exclusively to Insurance Premium processing and shall not affect any other PFMS business module.

---

#### BR-INP-007 – Premium Payment Completion

Upon successful payment of a premium installment, the corresponding Insurance Premium shall be updated to Paid.

---

#### BR-INP-008 – Financial Association

Every completed Insurance Premium payment shall have one corresponding Financial Transaction.

---

#### BR-INP-009 – Premium Independence

The Insurance Premium module shall maintain only premium payment history.

Insurance Policy information shall be maintained exclusively through the Insurance Policy module.

Financial accounting shall be maintained exclusively through the Financial Transaction module.

---

#### BR-INP-010 – Historical Preservation

PFMS shall preserve the complete history of all Insurance Premium installments for future payment tracking, reporting, and financial analysis.


### Investment Management

Investment Management Business Rules define the business policies governing the registration, monitoring, lifecycle, valuation, and historical preservation of investments maintained within PFMS.

The Investment module maintains the business information associated with user investments. It serves as the primary record for each investment while all financial activities associated with investments shall be maintained through the Financial Transaction module.

---

#### BR-INV-001 – Investment Registration

Each Investment shall represent one investment maintained by the user.

---

#### BR-INV-002 – Investment Identification

Every Investment shall possess a unique system-generated Investment Reference.

The Investment Reference shall uniquely identify the Investment within PFMS and shall not represent an identifier assigned by the investment provider.

---

#### BR-INV-003 – Mandatory Investment Information

Every Investment shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

- Investment Name
- Investment Type
- Investment Provider
- Investment Start Date
- Principal Amount
- Investment Status

---

#### BR-INV-004 – Investment Provider Association

Every Investment shall be associated with the applicable Investment Provider maintained within PFMS.

---

#### BR-INV-005 – Investment Timeline

The Investment Start Date shall occur on or before the Maturity Date where a Maturity Date is applicable.

Investments without a predefined maturity period may remain without a Maturity Date.

---

#### BR-INV-006 – Investment Valuation

Every Investment shall maintain its Principal Amount.

Where applicable, the Current Value may be updated periodically to reflect the latest known market value, redemption value, or maturity value.

Updating the Current Value shall not modify the Principal Amount.

---

#### BR-INV-007 – Investment Status

Every Investment shall maintain one business status throughout its lifecycle.

The supported Investment Status values shall include:

- Active
- Matured
- Closed

---

#### BR-INV-008 – Financial Association

All financial activities associated with an Investment, including purchases, deposits, SIP contributions, additional investments, withdrawals, redemptions, dividends, interest receipts, maturity proceeds, and similar financial events shall be represented through the corresponding Financial Transactions.

The Investment module shall not maintain financial transaction history.

---

#### BR-INV-009 – Historical Preservation

Investment records shall preserve their business information throughout their lifecycle.

Historical Financial Transactions shall continue to reference the associated Investment where applicable.

### Loan Management

Loan Management Business Rules define the business policies governing the registration, monitoring, lifecycle, and historical preservation of loans maintained within PFMS.

The Loan module maintains the business information associated with user loans. It serves as the primary business record for each loan while all loan-related financial activities shall be maintained through the Financial Transaction module.

---

#### BR-LON-001 – Loan Registration

Each Loan shall represent one loan obtained by the user.

---

#### BR-LON-002 – Loan Identification

Every Loan shall possess a unique system-generated Loan Reference.

The Loan Reference shall uniquely identify the Loan within PFMS and shall not represent the official Loan Account Number assigned by the lending institution.

---

#### BR-LON-003 – Mandatory Loan Information

Every Loan shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

- Loan Name
- Loan Type
- Lending Institution
- Loan Start Date
- Principal Amount
- Interest Rate
- EMI Amount
- Payment Frequency
- Loan Status

---

#### BR-LON-004 – Lending Institution Association

Every Loan shall be associated with the applicable Lending Institution maintained within PFMS.

---

#### BR-LON-005 – Loan Timeline

The Loan Start Date shall occur on or before the Loan End Date where a Loan End Date is available.

The Loan End Date may initially represent the expected loan completion date and may be updated when the loan is fully settled.

---

#### BR-LON-006 – Loan Repayment

Every Loan shall define the agreed repayment amount and repayment frequency applicable to the loan.

The repayment schedule shall be used for monitoring the loan throughout its lifecycle.

---

#### BR-LON-007 – Loan Status

Every Loan shall maintain one business status throughout its lifecycle.

The supported Loan Status values shall include:

- Active
- Closed

---

#### BR-LON-008 – Financial Association

All financial activities associated with a Loan, including loan disbursements, EMI payments, part-payments, foreclosure payments, interest payments, penalties, and other loan-related financial events shall be represented through the corresponding Financial Transactions.

The Loan module shall not maintain financial transaction history.

---

#### BR-LON-009 – Loan Independence

The Loan module shall maintain only loan business information.

Loan repayment history shall be derived from the associated Financial Transactions.

---

#### BR-LON-010 – Historical Preservation

Loan records shall preserve their business information throughout their lifecycle.

Historical Financial Transactions shall continue to reference the associated Loan where applicable.

### Utility Management

Utility Management Business Rules define the business policies governing the registration, monitoring, lifecycle, and historical preservation of utility services maintained within PFMS.

The Utility module maintains the business information associated with utility services, subscriptions, and recurring service providers used by the user. It serves as the primary business record for each utility while all utility-related financial activities shall be maintained through the Financial Transaction module.

---

#### BR-UTL-001 – Utility Registration

Each Utility shall represent one utility service, subscription, or recurring service maintained by the user.

---

#### BR-UTL-002 – Utility Identification

Every Utility shall possess a unique system-generated Utility Reference.

The Utility Reference shall uniquely identify the Utility within PFMS and shall not represent an identifier assigned by the service provider.

---

#### BR-UTL-003 – Mandatory Utility Information

Every Utility shall contain all mandatory business information before it participates in business operations.

The mandatory information shall include:

- Utility Name
- Utility Type
- Service Provider
- Billing Frequency
- Service Start Date
- Utility Status

---

#### BR-UTL-004 – Service Provider Association

Every Utility shall be associated with the applicable Service Provider maintained within PFMS.

---

#### BR-UTL-005 – Connection Reference

A Utility may maintain an optional Connection Reference or Subscription Identifier where applicable.

The Connection Reference may represent identifiers such as a mobile number, broadband customer ID, subscriber ID, FASTag number, account number, or any other provider-specific identifier.

Utilities that do not require such identifiers may remain without a Connection Reference.

---

#### BR-UTL-006 – Billing Frequency

Every Utility shall define the applicable Billing Frequency.

The supported Billing Frequencies shall include:

- Monthly
- Quarterly
- Half-Yearly
- Yearly
- On Demand

---

#### BR-UTL-007 – Utility Status

Every Utility shall maintain one business status throughout its lifecycle.

The supported Utility Status values shall include:

- Active
- Inactive

---

#### BR-UTL-008 – Financial Association

All financial activities associated with a Utility, including bill payments, recharges, subscription renewals, recurring charges, and other utility-related financial events shall be represented through the corresponding Financial Transactions.

The Utility module shall not maintain financial transaction history.

---

#### BR-UTL-009 – Utility Independence

The Utility module shall maintain only Utility business information.

Financial accounting shall be maintained exclusively through the Financial Transaction module.

---

#### BR-UTL-010 – Historical Preservation

Utility records shall preserve their business information throughout their lifecycle.

Historical Financial Transactions shall continue to reference the associated Utility where applicable.

### Transaction Management

Transaction Management Business Rules define the business policies governing the recording, processing, lifecycle, synchronization, correction, and historical preservation of all financial transactions maintained within the Personal Finance Management System (PFMS).

The Transaction module is the central financial module of PFMS. Every financial event that affects the user's financial position shall be represented through a Transaction. Operational modules shall maintain only their operational business information, while all financial impacts shall be maintained exclusively through the Transaction module.

The Transaction module serves as the single financial source of truth for account balances, budgets, reserves, investments, loans, reports, dashboards, financial analytics, and every other financial component within PFMS.

#### BR-TRN-001 – Financial Source of Truth

The Transaction module shall serve as the single financial source of truth throughout PFMS.

Every financial component within PFMS shall derive its financial information exclusively from the Transaction module.

Financial information shall not be maintained independently in multiple business modules.

---

#### BR-TRN-002 – Financial Event

Every financial event that affects the user's financial position shall be represented by exactly one Transaction.

Each Transaction shall represent one and only one financial business event.

Operational modules shall maintain only operational information and shall synchronize their financial impact through the corresponding Transaction.

---

#### BR-TRN-003 – Transaction Business Information

Every Transaction shall maintain all mandatory business information before participating in financial processing.

The mandatory business information shall include:

- Transaction Date
- Account
- Category
- Transaction Amount
- Payment Mode

Additional business information shall be maintained where applicable according to the corresponding business rules.

---

#### BR-TRN-004 – Financial Participation

Every successfully completed Transaction shall immediately participate in all dependent financial processing.

Dependent financial processing includes, but is not limited to:

- Account Balances
- Budget Utilization
- Reserve Calculations
- Investment Monitoring
- Loan Monitoring
- Financial Reports
- Dashboards
- Financial Analytics

#### BR-TRN-005 – Salary Boundary

The Salary Boundary shall represent the logical starting point of a new Budget Cycle within PFMS.

A Salary Boundary shall be created only when the user records the Salary Transaction that initiates the next Salary Utilization Period.

Only one Salary Boundary shall exist for a Budget Month.

The Salary Boundary shall logically separate two consecutive Budget Cycles.

If a Salary Boundary is recorded incorrectly, the existing Salary Boundary shall be corrected instead of creating another Salary Boundary.

---

#### BR-TRN-006 – Budget Assignment

Every Transaction shall belong to exactly one Budget Month and one Budget Year.

The Budget Month and Budget Year shall represent the Salary Utilization Period and shall not necessarily correspond to the calendar month or calendar year of the Transaction Date.

The Salary Boundary shall determine the Budget assignment for every Transaction.

Transactions recorded before a Salary Boundary shall belong to the currently active Budget.

The Salary Boundary Transaction shall belong to the next Budget Cycle.

Transactions recorded after the Salary Boundary shall belong to the new Budget Cycle until the next Salary Boundary is established.

Budget assignment shall remain historically accurate throughout the lifecycle of every Transaction.

---

#### BR-TRN-007 – Financial Chronology

Financial chronology within PFMS shall be governed by the Salary Boundary together with the Transaction Date.

Transaction processing shall preserve the logical financial sequence of every Budget Cycle irrespective of the order in which Transactions are entered.

Transaction processing shall remain independent of internal Transaction identifiers.

Financial reports, dashboards, Budget utilization, and analytical summaries shall always represent the correct financial chronology based on the applicable Budget assignment.

---

#### BR-TRN-008 – Automatic Budget Participation

Every successfully recorded Transaction shall automatically participate in the Budget Cycle to which it has been assigned.

If the applicable Budget does not already exist, PFMS shall automatically establish the required Budget before completing the Transaction.

Budget utilization shall always reflect the complete set of Transactions belonging to the corresponding Budget Cycle.

#### BR-TRN-009 – Historical Transactions

PFMS shall allow historical Transactions to be recorded whenever required.

Historical Transactions shall be assigned to the appropriate Budget Cycle according to the applicable Salary Boundary.

The chronological order of Transaction entry shall not affect the historical financial integrity maintained by PFMS.

Historical Transactions shall preserve the complete financial history of the application.

---

#### BR-TRN-010 – Historical Financial Recalculation

Whenever a Historical Transaction is created, modified, or corrected, PFMS shall automatically recalculate all affected financial information.

The recalculation shall include, but is not limited to:

- Account Balances
- Budget Utilization
- Reserve Information
- Investment Information
- Loan Information
- Financial Reports
- Dashboards
- Financial Analytics

Historical recalculation shall always preserve complete financial consistency.

---

#### BR-TRN-011 – Transaction Synchronization

The Transaction module and all dependent Operational modules shall remain logically synchronized.

Temporary synchronization differences shall be permitted in accordance with the applicable General Rules governing Global Data Synchronization Grace Periods.

After synchronization is completed, PFMS shall automatically update all affected operational information, financial information, reports, dashboards, and analytical summaries.

Delayed synchronization shall preserve complete financial integrity.

---

#### BR-TRN-012 – Balance Integrity

Every successful Transaction shall preserve the integrity of the user's financial position.

Account Balances shall always be derived from recorded Transactions.

Budget Utilization, Financial Reports, Dashboards, and all dependent financial information shall remain consistent with the recorded Transaction history.

PFMS shall prevent business operations that violate financial integrity.

## User Roles

User Roles define the authorization model governing access to the Personal Finance Management System (PFMS).

The current version of PFMS is designed as a single-user application. All business operations are performed by the registered application owner. Although the application currently supports only one user role, this section establishes the authorization framework for future expansion.

---

### Application Owner

The Application Owner is the registered user of PFMS and has unrestricted access to all business modules and system functions.

The Application Owner is authorized to:

- Maintain Master Data.
- Record and manage Financial Transactions.
- Maintain Operational Modules.
- Manage Budgets and Reserves.
- Manage Investments, Loans, Insurance Policies, and Utilities.
- View Financial Reports, Dashboards, and Analytics.
- Perform historical corrections where permitted by the applicable Business Rules.
- Configure application settings.
- Perform data backup and restoration where supported.

---

### Authorization Principles

PFMS shall comply with the following authorization principles:

- Only authenticated users shall access the application.
- All business operations shall comply with the applicable Functional Requirements and Business Rules.
- Unauthorized access to business information shall not be permitted.
- Historical financial integrity shall always be preserved.

---

### Future Extensibility

The authorization framework has been designed to support future expansion.

Future versions of PFMS may introduce additional user roles including, but not limited to:

- Family Member
- Read-Only User
- Financial Advisor
- Auditor
- Administrator

Any future role definitions shall comply with the applicable Functional Requirements and Business Rules.

## Business Processes

Business Processes define the end-to-end business workflows supported by the Personal Finance Management System (PFMS). Each business process describes how one or more business modules interact to achieve a complete business objective while complying with the applicable Functional Requirements and Business Rules.

The following business processes are supported by PFMS.

---

### Master Data Management

Master Data Management establishes and maintains the reference information required by all business modules.

The process includes:

- Managing Accounts.
- Managing Categories and Subcategories.
- Managing Payment Modes.
- Managing Merchants.
- Maintaining reference information used throughout PFMS.

---

### Financial Transaction Management

Financial Transaction Management records and maintains all financial events within PFMS.

The process includes:

- Recording financial transactions.
- Maintaining salary boundaries.
- Assigning transactions to Budget Cycles.
- Processing historical transactions.
- Maintaining financial integrity.
- Synchronizing dependent business modules.

---

### Budget Management

Budget Management controls planned financial allocation for each Budget Cycle.

The process includes:

- Creating Budgets.
- Monitoring Budget utilization.
- Calculating Budget variance.
- Identifying Budget overruns.
- Supporting Budget analysis.

---

### Operational Management

Operational Management records business activities that require operational tracking in addition to financial accounting.

The process includes:

- Milk Management.
- Gas Cylinder Management.
- Bike Fuel Management.
- Engine Oil Management.
- Bike Maintenance Management.
- HardCash Management.
- Reserve Management.

Operational activities requiring financial impact shall synchronize with the Financial Transaction module according to the applicable General Rules.

---

### Asset and Liability Management

Asset and Liability Management maintains the user's long-term financial commitments and investments.

The process includes:

- Insurance Management.
- Investment Management.
- Loan Management.
- Utility Management.
- Atal Pension Management.

Financial activities associated with these modules shall be maintained through the Financial Transaction module.

---

### Financial Analysis and Reporting

Financial Analysis and Reporting provides a consolidated financial view based on recorded Transactions.

The process includes:

- Budget Analysis.
- Account Balance Analysis.
- Income and Expense Analysis.
- Historical Trend Analysis.
- Financial Reports.
- Dashboards.
- Financial Analytics.

---

### Historical Financial Processing

Historical Financial Processing maintains financial consistency when business information is recorded or corrected after the original business event.

The process includes:

- Recording historical Transactions.
- Recalculating affected financial information.
- Preserving Budget integrity.
- Maintaining historical financial consistency.

---

### System Administration

System Administration supports the overall operation and maintenance of PFMS.

The process includes:

- User authentication.
- Application configuration.
- Backup and restoration.
- Business Rule enforcement.
- System monitoring.

## Business Workflows

Business Workflows describe the sequence of business activities performed within PFMS to achieve specific financial and operational objectives. Each workflow represents the interaction between one or more business modules while complying with the applicable Functional Requirements, General Rules, and Business Rules.

The following business workflows are supported by PFMS.

---

### Master Data Workflow

The Master Data Workflow establishes and maintains the reference information required throughout PFMS.

The workflow includes:

- Creating and maintaining Accounts.
- Creating and maintaining Categories.
- Creating and maintaining SubCategories.
- Creating and maintaining Payment Modes.
- Creating and maintaining Merchants.

Master Data shall be available before participating in dependent business operations.

---

### Financial Transaction Workflow

The Financial Transaction Workflow records financial activities performed by the user.

The workflow includes:

- Recording a Financial Transaction.
- Determining the applicable Salary Boundary.
- Assigning the Transaction to the appropriate Budget Cycle.
- Updating dependent financial information.
- Synchronizing dependent operational modules where applicable.

---

### Operational Workflow

The Operational Workflow records operational activities that support financial management.

The workflow includes:

- Recording Milk Purchases.
- Recording Gas Cylinder activities.
- Recording Bike Fuel activities.
- Recording Engine Oil replacements.
- Recording Bike Maintenance activities.
- Recording HardCash movements.
- Managing Reserve activities.

Operational records requiring financial impact shall be synchronized with the Financial Transaction module according to the applicable General Rules.

---

### Budget Workflow

The Budget Workflow manages planned spending throughout each Budget Cycle.

The workflow includes:

- Creating Budgets.
- Recording Transactions against Budgets.
- Calculating Budget Utilization.
- Calculating Budget Variance.
- Monitoring Budget performance.

---

### Asset Management Workflow

The Asset Management Workflow manages long-term financial assets.

The workflow includes:

- Managing Investments.
- Managing Insurance Policies.
- Managing Insurance Premiums.
- Monitoring Atal Pension.
- Maintaining historical information.

Financial activities associated with assets shall be maintained through the Financial Transaction module.

---

### Liability Management Workflow

The Liability Management Workflow manages financial obligations.

The workflow includes:

- Managing Loans.
- Monitoring Loan repayment information.
- Recording loan-related Financial Transactions.
- Maintaining historical Loan information.

---

### Utility Management Workflow

The Utility Management Workflow manages recurring utility services.

The workflow includes:

- Registering Utilities.
- Maintaining Utility information.
- Recording Utility-related Financial Transactions.
- Monitoring recurring Utility payments.

---

### Historical Processing Workflow

The Historical Processing Workflow maintains financial consistency when historical information is entered or corrected.

The workflow includes:

- Recording Historical Transactions.
- Recalculating affected financial information.
- Synchronizing dependent modules.
- Preserving historical financial integrity.

---

### Reporting Workflow

The Reporting Workflow generates financial information for analysis and decision-making.

The workflow includes:

- Preparing Financial Reports.
- Preparing Dashboards.
- Performing Budget Analysis.
- Performing Income and Expense Analysis.
- Performing Historical Analysis.

## Constraints

Constraints define the business, functional, and technical limitations under which the Personal Finance Management System (PFMS) shall operate. All system functionality shall comply with the following constraints.

---

### Business Constraints

- PFMS shall operate as a single-user application.
- Every financial event shall be recorded through the Financial Transaction module.
- Business modules shall maintain only their respective business information and shall not duplicate financial accounting.
- All business operations shall comply with the applicable General Rules and Business Rules.
- Historical financial integrity shall always be preserved.

---

### Functional Constraints

- Master Data shall exist before dependent business operations can be performed.
- Every Financial Transaction shall belong to exactly one Budget Cycle.
- Budget assignment shall be determined according to the applicable Salary Boundary.
- Operational modules requiring financial impact shall synchronize with the Financial Transaction module according to the applicable General Rules.
- Historical Transactions shall automatically recalculate all affected financial information.

---

### Data Constraints

- Business entities shall maintain unique business identifiers.
- Mandatory business information shall be available before business processing.
- Relationships between business entities shall preserve referential integrity.
- Historical business information shall not be lost through normal business operations.
- System-derived information shall not be manually modified.

---

### Security Constraints

- Only authenticated users shall access PFMS.
- Unauthorized access to business information shall not be permitted.
- Business operations shall be performed only by authorized users.
- Business Rules shall be enforced consistently throughout the application.

---

### Technical Constraints

- PFMS shall maintain a single centralized Financial Transaction module.
- All financial reporting shall be derived from recorded Financial Transactions.
- Business modules shall remain logically independent while sharing common Master Data.
- Future enhancements shall preserve backward compatibility with existing business information where applicable.

---

### Regulatory Constraints

- PFMS shall maintain complete historical financial information for reporting and analysis.
- Financial calculations shall preserve the configured monetary precision.
- Business dates and financial information shall comply with the applicable Business Rules.

## Assumptions

The Personal Finance Management System (PFMS) has been designed based on the following assumptions. These assumptions establish the expected operating environment and business conditions under which the application functions.

---

### User Assumptions

- PFMS is intended for use by a single registered user.
- The user is responsible for maintaining accurate financial and operational information.
- The user enters business information within a reasonable period after the corresponding business event occurs.
- The user periodically reviews financial information, reports, and pending business activities.

---

### Business Assumptions

- Every financial event is expected to have a corresponding Financial Transaction.
- Operational modules are used only where additional operational tracking is required beyond financial accounting.
- Master Data is maintained before dependent business operations are performed.
- Business information entered by the user is assumed to be accurate unless subsequently corrected.

---

### Financial Assumptions

- The Financial Transaction module serves as the single financial source of truth within PFMS.
- Account balances, Budget utilization, financial reports, dashboards, and analytics are derived from recorded Financial Transactions.
- Historical financial information is preserved throughout the lifecycle of the application.

---

### Operational Assumptions

- Operational records and Financial Transactions are expected to be synchronized according to the applicable General Rules.
- Temporary synchronization delays may occur and shall be managed through the defined Global Data Synchronization Grace Period where applicable.
- Historical business records may be entered when required and shall participate in historical financial recalculation.

---

### Technical Assumptions

- The system date and time are assumed to be accurate.
- Required application configuration and reference data are available before normal business operations begin.
- The application operates using the configured financial settings, including currency and monetary precision.

---

### Future Assumptions

- Additional business modules may be introduced without affecting the existing business architecture.
- Future enhancements shall continue to use the Financial Transaction module as the central financial component.
- Additional user roles may be introduced in future versions while preserving the existing business model where applicable.

## Success Criteria

The Personal Finance Management System (PFMS) shall be considered successful when it consistently satisfies the defined business objectives and supports accurate financial management throughout its operational lifecycle.

---

### Financial Accuracy

PFMS shall maintain accurate financial information by ensuring that every financial event is represented through the Financial Transaction module.

Financial reports, account balances, budgets, dashboards, and analytics shall consistently reflect the recorded financial information.

---

### Business Integrity

PFMS shall preserve complete business integrity by enforcing all applicable General Rules, Business Rules, and Functional Requirements across every business module.

Historical financial information shall remain accurate throughout the lifetime of the application.

---

### Operational Effectiveness

PFMS shall enable users to efficiently manage operational activities, including recurring expenses, maintenance records, utility services, insurance, investments, loans, reserves, and other supported business functions.

Operational information and financial information shall remain appropriately synchronized.

---

### Budget Management

PFMS shall accurately allocate Financial Transactions to the appropriate Budget Cycle and provide meaningful Budget monitoring, utilization analysis, and variance reporting.

---

### Reporting and Analytics

PFMS shall provide reliable financial reports, dashboards, and analytical information that support informed financial decision-making.

All reporting shall be derived from the recorded Financial Transactions.

---

### Maintainability

PFMS shall support future business expansion through a modular architecture that allows additional business modules to be introduced without affecting the existing business model.

---

### User Experience

PFMS shall provide a consistent and intuitive business workflow that enables users to perform financial and operational activities efficiently while minimizing manual effort.

---

### Overall Business Objective

PFMS shall provide a reliable, accurate, maintainable, and extensible personal financial management solution that supports complete financial visibility, historical traceability, and informed financial decision-making.

## Requirement Traceability Matrix

The Requirement Traceability Matrix (RTM) provides end-to-end traceability of requirements throughout the lifecycle of the Personal Finance Management System (PFMS).

The RTM establishes the relationship between Business Requirements, Functional Requirements, Non-Functional Requirements, Business Rules, database components, implementation artifacts, and testing activities. Its primary objective is to ensure that every approved requirement is fully implemented, verified, and maintained throughout the application lifecycle.

The Requirement Traceability Matrix supports:

- Requirement identification.
- Requirement coverage verification.
- Functional traceability.
- Business Rule traceability.
- Database traceability.
- Test Case traceability.
- Change Impact Analysis.
- Requirement validation and verification.
- Project maintenance and future enhancements.

The Requirement Traceability Matrix shall be maintained as a separate project artifact and shall be updated throughout the design, development, testing, and maintenance phases of PFMS.

## Revision History

The Revision History records the evolution of this Business Requirements Specification (BRS) throughout the lifecycle of the Personal Finance Management System (PFMS).

Each revision documents significant changes made to the specification, ensuring complete traceability of business requirements, design decisions, and document updates.

The Revision History supports:

- Document version management.
- Change tracking.
- Requirement evolution.
- Design decision traceability.
- Review and approval history.
- Audit and compliance activities.
- Future maintenance and enhancement planning.

The following table shall be maintained throughout the lifecycle of this document.

| Version | Revision Date | Author | Description of Changes | Reviewed By | Approved By |
|----------|---------------|--------|------------------------|-------------|-------------|
| 1.0 | DD-MMM-YYYY | SaiAnjaneyaVinayKumar Parnandi | Initial release of the Personal Finance Management System (PFMS) Business Requirements Specification. | TBD | TBD |

The Revision History shall be updated whenever this document is modified, reviewed, approved, or formally released.

## Conclusion

This Business Requirements Specification (BRS) defines the business objectives, functional requirements, non-functional requirements, business rules, user roles, business processes, workflows, constraints, assumptions, success criteria, and supporting business information for the Personal Finance Management System (PFMS).

The specification establishes a comprehensive business foundation for the design, development, testing, deployment, and future enhancement of PFMS. It serves as the primary reference for ensuring that the application consistently satisfies the defined business objectives while maintaining financial accuracy, business integrity, operational consistency, and historical traceability.

The completion and approval of this Business Requirements Specification signifies the completion of the business analysis phase of the project.

Subsequent project phases shall utilize this specification as the authoritative business reference for solution architecture, technical design, database design, application development, testing, deployment, and ongoing maintenance.

All future enhancements to PFMS shall preserve the business principles, architectural objectives, and financial integrity established within this Business Requirements Specification unless formally revised through the document revision process.