# Project Overview

---

## Document Information

| Property | Details |
|----------|---------|
| Project Name | Personal Finance Management System (PFMS) |
| Document Name | 01_Project_Overview |
| Document Version | 1.0 |
| Document Status | Approved |
| Author | SaiAnjaneyaVinayKumar Parnandi |
| Created On | 29-Jul-2026 |
| Last Updated | 29-Jul-2026 |
| Reviewed By | SaiAnjaneyaVinayKumar Parnandi |
| Approved By | SaiAnjaneyaVinayKumar Parnandi |

**Document ID:** DOC-001

---

## Purpose

The purpose of this document is to provide a comprehensive overview of the Personal Finance Management System (PFMS). It describes the project's vision, objectives, business context, scope, major business modules, stakeholders, technology stack, development methodology, assumptions, constraints, and future direction.

This document serves as the foundation for all subsequent project documentation and establishes a common understanding of the system before detailed design and implementation activities begin.

---

## Project Introduction

Managing personal finances effectively is essential for achieving financial stability and making informed financial decisions. However, many individuals rely on spreadsheets, handwritten records, or multiple disconnected applications to record and monitor their financial activities. This fragmented approach often results in inconsistent record keeping, limited financial visibility, duplication of information, and difficulty in tracking long-term financial goals.

The **Personal Finance Management System (PFMS)** is designed to address these challenges by providing a centralized platform for managing personal financial information within a single application. The system enables users to organize, monitor, and analyze financial data related to income, expenses, budgets, investments, loans, insurance policies, recurring payments, utility connections, milk vendor transactions, and bike maintenance records.

Unlike traditional expense tracking applications, PFMS follows a **Business-First Development Approach**, where business requirements, workflows, business rules, validations, and data relationships are thoroughly defined before application development begins. This approach ensures that the system accurately represents real-world financial processes while remaining scalable, maintainable, and extensible.

The application is being developed using modern software engineering principles and industry-standard technologies, including Python, FastAPI, React, PostgreSQL, Docker, Tableau, and Machine Learning. Beyond serving as a personal finance management solution, PFMS is also intended to demonstrate enterprise-level software engineering practices, including structured documentation, modular architecture, database normalization, RESTful API development, testing, deployment, and continuous integration.

The long-term vision of PFMS is to evolve into an intelligent financial platform capable of delivering predictive analytics, personalized budgeting recommendations, spending pattern analysis, financial forecasting, and AI-driven insights while maintaining a secure, scalable, and business-oriented architecture.

---

## Problem Statement

Personal financial information is frequently distributed across multiple sources such as bank statements, spreadsheets, notebooks, digital payment applications, and manual records. This fragmented approach makes it difficult to maintain consistency, monitor budgets, analyze spending behavior, and make informed financial decisions.

Most existing personal finance applications primarily focus on expense tracking while providing limited support for managing broader financial activities such as investments, insurance policies, loans, recurring obligations, utility services, and asset maintenance. In addition, many solutions offer limited flexibility for modeling individual financial workflows or preserving detailed historical financial records.

The absence of a unified financial management platform creates several challenges, including:

- Difficulty in tracking income and expenses across multiple financial accounts.
- Limited visibility into budget utilization and financial performance.
- Inconsistent management of investments, loans, and insurance policies.
- Lack of centralized tracking for recurring payments and utility services.
- Manual maintenance of milk vendor transactions and bike maintenance records.
- Limited analytical capabilities for understanding spending patterns and financial trends.
- Difficulty in generating consolidated financial reports.
- Inability to leverage historical financial data for predictive analytics and intelligent financial recommendations.

PFMS addresses these challenges by providing a comprehensive, integrated, and business-oriented financial management platform that consolidates financial information into a single system while enabling efficient record management, financial analysis, reporting, and future AI-driven decision support.

---

## Business Objectives

The Personal Finance Management System (PFMS) is designed to achieve the following business objectives:

- Centralize all personal financial information within a single integrated platform.
- Improve the accuracy and consistency of financial record management.
- Enable effective budget planning, monitoring, and financial analysis.
- Simplify the management of investments, loans, insurance policies, and recurring financial obligations.
- Provide detailed tracking of day-to-day financial transactions and activities.
- Generate meaningful reports and dashboards to support informed financial decision-making.
- Maintain a scalable and well-structured database that supports future business growth.
- Establish a modular and extensible system architecture that simplifies future enhancements.
- Integrate business intelligence capabilities through Tableau for visualization and reporting.
- Prepare the platform for future Artificial Intelligence and Machine Learning capabilities, including expense prediction, financial forecasting, anomaly detection, and personalized financial recommendations.

---

## Project Scope

The Personal Finance Management System (PFMS) provides a centralized platform for managing various aspects of personal finance. The project focuses on delivering a scalable, secure, modular, and business-oriented application capable of managing day-to-day financial activities while preserving historical data and supporting analytical reporting.

### In Scope

The initial release of PFMS includes the following functional areas:

#### Financial Management

- Income Management
- Expense Management
- Budget Management
- Cash & Wallet Management
- Account Management
- Payment Mode Management
- Category Management
- Subcategory Management
- Merchant Management

#### Financial Asset Management

- Investment Management
- Loan Management
- Insurance Policy Management
- Insurance Premium Tracking

#### Daily Operations

- Milk Vendor Management
- Milk Payment Tracking
- Bike Fuel Expense Management
- Bike Maintenance Management
- Engine Oil Replacement Tracking

#### Utility Management

- Utility Connection Management
- Utility Bill Tracking
- Recurring Payment Management

#### Reporting & Analytics

- Financial Dashboard
- Income Reports
- Expense Reports
- Budget Reports
- Category-wise Analysis
- Monthly & Yearly Financial Reports
- Tableau Dashboards

#### Technical Scope

- RESTful API Development
- Secure Authentication & Authorization
- Database Normalization
- Audit-Friendly Data Design
- Cloud-Ready Deployment Architecture
- AI & Machine Learning Readiness

### Out of Scope (Version 1.0)

The following features are intentionally excluded from the initial release and may be considered in future versions:

- Internet Banking Integration
- Automatic Bank Statement Import
- Credit Score Monitoring
- Income Tax Calculation
- Live Stock Market Integration
- Mobile Applications (Android & iOS)
- Multi-User Collaboration
- Multi-Currency Support
- Digital Payment Gateway Integration
- Real-Time Financial Data Synchronization

---

## Stakeholders

The successful development and maintenance of the Personal Finance Management System (PFMS) involve multiple stakeholders, each contributing to the planning, development, usage, and future growth of the application.

| Stakeholder | Responsibility |
|--------------|----------------|
| Project Owner | Defines the project vision, business objectives, scope, and long-term roadmap. |
| Developer | Designs, develops, tests, deploys, and maintains the application. |
| End User | Uses the application to record, manage, and analyze personal financial information. |
| Future Contributors | Enhance the application by implementing new features, fixing issues, and improving existing functionality. |
| Open Source Community | Provides feedback, reports issues, and contributes enhancements if the project is made publicly collaborative. |

---

## Business Modules

PFMS follows a modular architecture in which each business area is implemented as an independent module. This approach promotes maintainability, scalability, code reusability, and easier future enhancements.

### Core Financial Modules

- Income Management
- Expense Management
- Budget Management
- Transaction Management
- Cash & Wallet Management

### Master Data Modules

- Account Management
- Category Management
- Subcategory Management
- Merchant Management
- Payment Mode Management

### Financial Asset Modules

- Investment Management
- Loan Management
- Insurance Policy Management

### Daily Operations Modules

- Milk Vendor Management
- Bike Fuel Management
- Bike Maintenance Management
- Engine Oil Replacement Management

### Utility Management Modules

- Utility Connection Management
- Utility Bill Management

### Reporting & Analytics Modules

- Financial Dashboard
- Income Reports
- Expense Reports
- Budget Reports
- Category Analysis
- Monthly & Yearly Reports
- Tableau Dashboards

### Artificial Intelligence & Machine Learning Modules

- Expense Prediction
- Budget Recommendation
- Financial Forecasting
- Spending Pattern Analysis
- Intelligent Financial Insights
- Anomaly Detection

---

## High-Level Architecture

The Personal Finance Management System (PFMS) follows a modern layered architecture that separates presentation, business logic, data access, and analytical components. This architecture improves scalability, maintainability, security, testing, and future extensibility.

```text
                        +----------------------+
                        |   React Frontend     |
                        +----------------------+
                                   │
                                   │ REST API
                                   ▼
                        +----------------------+
                        |  FastAPI Backend     |
                        +----------------------+
                                   │
                 ┌─────────────────┴─────────────────┐
                 ▼                                   ▼
      Business Services Layer          Authentication Layer
                 │                                   │
                 └─────────────────┬─────────────────┘
                                   ▼
                        +----------------------+
                        |   SQLAlchemy ORM     |
                        +----------------------+
                                   │
                                   ▼
                        +----------------------+
                        | PostgreSQL Database  |
                        +----------------------+
                                   │
                 ┌─────────────────┴─────────────────┐
                 ▼                                   ▼
          Tableau Analytics              Machine Learning
```

### Architecture Overview

The architecture consists of the following logical layers:

#### Presentation Layer

Provides the user interface through a responsive React-based web application that interacts with the backend using RESTful APIs.

#### Application Layer

Implements the FastAPI backend responsible for processing requests, enforcing business rules, validating input, and coordinating application workflows.

#### Business Layer

Contains the core business logic, validations, workflow processing, and service components that implement the functional requirements of the system.

#### Data Access Layer

Uses SQLAlchemy ORM to manage communication between the application and the PostgreSQL database while maintaining database abstraction and consistency.

#### Database Layer

Stores all master data, transactional data, audit information, and historical financial records in a normalized PostgreSQL database.

#### Analytics Layer

Provides business intelligence and visualization capabilities using Tableau, enabling dashboards, reports, and analytical insights.

#### Machine Learning Layer

Supports future AI-driven capabilities such as expense prediction, financial forecasting, anomaly detection, and intelligent financial recommendations using historical financial data.

The layered architecture ensures clear separation of responsibilities, enabling each component to evolve independently while maintaining a scalable, secure, and maintainable enterprise application.

---

## Technology Stack

The Personal Finance Management System (PFMS) is built using a modern technology stack that emphasizes scalability, maintainability, security, performance, and extensibility. Each technology has been selected based on industry best practices and project requirements.

| Category | Technology | Purpose |
|----------|------------|---------|
| Programming Language | Python | Backend application development |
| Frontend Framework | React | User Interface Development |
| Backend Framework | FastAPI | RESTful API Development |
| ASGI Server | Uvicorn | Application Server |
| Object Relational Mapper (ORM) | SQLAlchemy | Database Interaction |
| Data Validation | Pydantic | Request & Response Validation |
| Database | PostgreSQL | Relational Database Management |
| Database Migration | Alembic | Database Version Control |
| Authentication | OAuth2 + JWT | Secure Authentication & Authorization |
| Environment Management | python-dotenv | Environment Configuration |
| API Documentation | Swagger UI / OpenAPI | Interactive API Documentation |
| API Testing | Postman | API Validation & Testing |
| Data Visualization | Tableau | Dashboards & Business Intelligence |
| Machine Learning | Scikit-learn | Predictive Analytics |
| Testing Framework | Pytest | Unit & Integration Testing |
| Code Formatter | Black | Code Formatting |
| Linter | Ruff | Static Code Analysis |
| Logging | Loguru | Application Logging |
| Cache | Redis | High-Speed Data Caching |
| Containerization | Docker | Environment Consistency |
| Reverse Proxy | Nginx | Request Routing |
| CI/CD | GitHub Actions | Continuous Integration & Deployment |
| Cloud Platform | AWS (EC2, RDS, S3, IAM, Glue) | Cloud Infrastructure |
| Version Control | Git & GitHub | Source Code Management |

---

## Development Methodology

PFMS follows a structured, business-oriented, and incremental software development methodology. The project emphasizes planning and documentation before implementation, ensuring that business requirements drive technical design.

### Business-First Development

Business requirements, workflows, validations, and business rules are finalized before software development begins.

### Documentation-First Approach

Comprehensive documentation is prepared before implementation to improve maintainability, consistency, and knowledge transfer.

### Modular Development

The application is organized into independent modules, allowing each business component to be developed, tested, deployed, and maintained independently.

### Incremental Development

Development progresses in manageable phases with regular reviews, testing, and validation at each milestone.

### Version Control

All project artifacts, documentation, and source code are managed using Git with meaningful commit history and structured release management.

### Continuous Improvement

The architecture supports future enhancements while minimizing the impact on existing functionality through modular and scalable design principles.

---

## Assumptions

The following assumptions are considered during the design and development of PFMS:

- The application is initially intended for a single user.
- Financial information entered into the system is accurate and complete.
- Users regularly maintain their financial records.
- PostgreSQL remains the primary relational database.
- Internet connectivity is available for cloud-based deployments.
- Future modules will follow the same business-first development methodology.
- Industry-standard security practices are implemented throughout the application lifecycle.

---

## Constraints

The current release of PFMS is designed with the following constraints:

- Financial transactions require manual data entry.
- Banking systems are not integrated in Version 1.0.
- Mobile applications are outside the scope of the initial release.
- Multi-user support is not included in Version 1.0.
- Payment gateway integration is deferred to future releases.
- AI and Machine Learning capabilities will be implemented after sufficient historical financial data becomes available.

---

## Future Scope

PFMS has been designed with extensibility in mind. Future enhancements may include:

- AI-powered Financial Assistant
- Automated Expense Categorization
- Intelligent Budget Recommendations
- Predictive Financial Forecasting
- Investment Portfolio Analysis
- OCR-based Bill Scanning
- Voice-enabled Transaction Recording
- Email & Notification Services
- Internet Banking Integration
- Mobile Applications (Android & iOS)
- Digital Payment Synchronization
- Multi-user Support
- Family Finance Management
- Advanced Business Intelligence Dashboards

---

## References

The design and development of PFMS are based on widely accepted software engineering principles, industry standards, and the official documentation of the technologies used.

- Official Python Documentation
- Official FastAPI Documentation
- Official PostgreSQL Documentation
- Official SQLAlchemy Documentation
- Official React Documentation
- Official Docker Documentation
- Official Tableau Documentation
- Official Git Documentation
- Official GitHub Documentation
- REST API Design Best Practices
- OAuth2 & JWT Authentication Standards

---

## Revision History

| Version | Date | Status | Description | Author |
|----------|------|--------|-------------|--------|
| 1.0 | 29-Jul-2026 | Approved | Initial Project Overview Document | SaiAnjaneyaVinayKumar Parnandi |

---

## Conclusion

The **Project Overview** establishes the foundation of the Personal Finance Management System (PFMS) by defining its vision, objectives, scope, architecture, technology stack, development methodology, and long-term roadmap.

This document serves as the primary reference for all subsequent project documentation and ensures that every phase of development aligns with the project's business-first philosophy, architectural principles, and engineering standards.

Future documents will expand upon the concepts introduced in this overview by providing detailed business requirements, business rules, database design, application architecture, API specifications, deployment strategy, testing standards, and implementation guidelines.

This document is considered the **baseline reference** for the Personal Finance Management System (PFMS) and should be updated only when significant business, architectural, or strategic changes occur.