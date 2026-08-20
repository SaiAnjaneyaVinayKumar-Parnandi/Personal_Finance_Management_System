# Personal Finance Management System (PFMS)

![Python](https://img.shields.io/badge/Python-3.x-blue)
![FastAPI](https://img.shields.io/badge/FastAPI-Backend-green)
![React](https://img.shields.io/badge/React-Frontend-61DAFB)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

# Project Overview

The **Personal Finance Management System (PFMS)** is a full-stack web application designed to help individuals efficiently manage their personal finances through a centralized, scalable, and business-oriented platform.

The application enables users to record, organize, monitor, and analyze their financial activities, including income, expenses, budgeting, investments, loans, insurance, recurring payments, utility connections, milk vendor transactions, and bike maintenance. It provides meaningful insights through dashboards, reports, and future AI-driven recommendations while maintaining accurate financial records.

PFMS is being developed using a **Business-First Design Approach**, where business requirements, workflows, business rules, validations, and data relationships are finalized before implementation. This methodology ensures that the application remains scalable, maintainable, and aligned with real-world financial management practices.

Apart from solving real-life personal finance problems, PFMS also serves as a comprehensive portfolio application demonstrating modern software engineering practices using Python, FastAPI, React, PostgreSQL, Docker, Tableau, and Machine Learning.

---

# Project Objectives

The primary objectives of PFMS are:

- Develop a centralized platform for managing personal financial information.
- Record and monitor income, expenses, and cash transactions.
- Plan, monitor, and analyze monthly and yearly budgets.
- Track investments, loans, insurance policies, and premium payments.
- Maintain utility connection information and recurring financial obligations.
- Manage daily milk vendor transactions and monthly payment settlements.
- Record bike fuel expenses, maintenance history, and engine oil replacement schedules.
- Generate meaningful financial reports and dashboards for informed decision-making.
- Maintain a scalable, normalized, and well-structured database following business-first design principles.
- Build a production-ready application using modern software engineering practices.
- Provide a strong foundation for future AI and Machine Learning capabilities such as expense prediction, budgeting recommendations, and intelligent financial insights.

---

# Key Features

PFMS provides a comprehensive set of features for managing personal finances.

## Financial Management

- Income tracking
- Expense tracking
- Budget planning
- Budget monitoring
- Cash and wallet management
- Category-based transaction management
- Subcategory-based transaction management

## Investment Management

- Investment tracking
- Investment performance monitoring
- Investment history

## Loan Management

- Loan tracking
- EMI management
- Repayment tracking
- Outstanding balance monitoring

## Insurance Management

- Insurance policy management
- Premium payment tracking
- Policy renewal reminders

## Utility Connection Management

- Utility connection information
- Recurring utility payment tracking

## Milk Vendor Management

- Daily milk supply tracking
- Monthly vendor payment management

## Bike Management

- Fuel expense tracking
- Bike maintenance history
- Engine oil replacement tracking
- Service history management

## Reporting & Analytics

- Interactive dashboards
- Financial summaries
- Budget analysis
- Category-wise expense analysis
- Monthly reports
- Yearly reports

## Future AI & Machine Learning

- Expense prediction
- Budget recommendations
- Intelligent spending analysis
- Financial forecasting
- Personalized financial insights

---

# Technology Stack

| Category | Technology |
|-----------|------------|
| Programming Language | Python |
| Frontend | React |
| Backend Framework | FastAPI |
| ASGI Server | Uvicorn |
| ORM | SQLAlchemy |
| Data Validation | Pydantic |
| Database | PostgreSQL |
| Database Migration | Alembic |
| Authentication | OAuth2 + JWT |
| Environment Variables | python-dotenv (.env) |
| API Documentation | Swagger UI / OpenAPI |
| API Testing | Postman |
| Data Visualization | Tableau |
| Machine Learning | Scikit-learn |
| Code Formatter | Black |
| Linter | Ruff |
| Logging | Loguru |
| Testing Framework | Pytest |
| Caching | Redis |
| Version Control | Git & GitHub |
| Containerization | Docker |
| CI/CD | GitHub Actions |
| Reverse Proxy | Nginx |
| Cloud Platform | AWS (EC2, RDS PostgreSQL, S3, IAM, Glue) |
| Package Management | pip + venv + requirements.txt |

---

# Installation

Installation instructions will be added after the initial application structure is completed.

The project is currently in the design and development phase. Detailed setup instructions will be published once the core backend and frontend applications are ready.

---

# Repository Structure

```text
Personal_Finance_Management_System/
│
├── AI_ML/                 # Machine Learning models and AI components
├── Assets/                # Images, icons, and static resources
├── Backend/               # FastAPI backend application
├── Database/              # Database scripts, schemas, and migrations
├── Documentation/         # Business, technical, and project documentation
├── Frontend/              # React frontend application
├── Infrastructure/        # Docker, deployment, and infrastructure configuration
├── Tableau/               # Tableau dashboards and reports
├── Tools/                 # Utility scripts and development tools
│
├── .gitignore
├── CHANGELOG.md
├── LICENSE
└── README.md
```

> **Note:** The repository structure may evolve as the project progresses while maintaining a modular and scalable architecture.

---

# Documentation

PFMS follows a **documentation-first** and **business-first** development approach. All major business requirements, workflows, database designs, validations, and implementation decisions are documented before development begins.

Project documentation is maintained under the **Documentation/** directory and includes:

- Project Overview
- Business Requirements
- Business Rules
- Database Design
- Data Dictionary
- Application Architecture
- API Specifications
- Development Guidelines
- Deployment Documentation
- Future Enhancements

This approach ensures consistency, maintainability, and easier collaboration throughout the development lifecycle.

---

# Business Modules

The Personal Finance Management System (PFMS) is organized into multiple business modules, each designed to address a specific aspect of personal financial management.

## Core Financial Modules

- Transaction Management
- Budget Management
- Cash Wallet Management

## Financial Asset Modules

- Investment Management
- Loan Management
- Insurance Management

## Daily Operations Modules

- Milk Vendor Management
- Bike Fuel Management
- Bike Maintenance Management
- Engine Oil Management

## Utility Management

- Utility Connection Management

## Master Data Management

- Account Management
- Category Management
- Subcategory Management
- Payment Mode Management
- Merchant Management

## Reporting & Analytics

- Financial Reports
- Budget Analysis
- Expense Analysis
- Dashboard & Visualizations

## Future AI & Machine Learning

- Expense Prediction
- Budget Recommendation
- Spending Pattern Analysis
- Intelligent Financial Insights

---

# Development Principles

PFMS is developed by following modern software engineering principles to ensure the application remains scalable, maintainable, secure, and easy to extend.

The core development principles include:

- Business-First Design Approach
- Documentation-First Development
- Modular and Scalable Architecture
- Separation of Concerns
- Clean and Maintainable Code
- Database Normalization
- API-First Backend Development
- Reusable and Extensible Components
- Secure Authentication and Authorization
- Strong Input Validation
- Consistent Coding Standards
- Comprehensive Documentation
- Version Control Best Practices
- Test-Driven and Quality-Oriented Development
- Continuous Improvement through Incremental Enhancements

---

# Development Roadmap

The development of the Personal Finance Management System (PFMS) is planned in multiple phases to ensure a structured, scalable, and maintainable implementation.

## Phase 1 – Project Foundation

- Development environment setup
- Git repository initialization
- Project structure creation
- Project documentation

## Phase 2 – Database Design

- Business entity design
- Master entity design
- Relationship mapping
- Constraints and validations
- Database schema creation

## Phase 3 – Backend Development

- FastAPI project setup
- Database integration
- Authentication & Authorization
- REST API development
- Business logic implementation

## Phase 4 – Frontend Development

- React project setup
- User interface development
- API integration
- Form validation
- Dashboard implementation

## Phase 5 – Reporting & Analytics

- Financial reports
- Dashboard development
- Tableau integration
- Data visualization

## Phase 6 – Artificial Intelligence & Machine Learning

- Expense prediction
- Budget forecasting
- Spending pattern analysis
- Intelligent financial recommendations

## Phase 7 – Deployment

- Docker containerization
- CI/CD pipeline
- Cloud deployment
- Production monitoring

---

# Current Status

## Completed

- Development environment configured
- Git repository initialized
- Initial project structure created
- Technology stack finalized
- Business modules identified
- Documentation strategy finalized
- Project documentation initiated

## In Progress

- Business documentation
- Database design
- System architecture documentation

## Planned

- Backend development
- Frontend development
- REST API implementation
- Reporting and analytics
- AI & Machine Learning integration
- Cloud deployment
- Production release

---

# Project Vision

The vision of PFMS is to evolve into a comprehensive personal financial management platform that combines structured financial record management, business-oriented architecture, interactive analytics, and AI-driven decision support.

The project is designed with a strong emphasis on scalability, maintainability, security, and clean architecture, making it suitable for both personal use and as a portfolio-quality enterprise application that demonstrates modern software engineering best practices.

---

# Contribution

This project is currently being developed as a personal learning and portfolio project.

Suggestions, feedback, feature ideas, and constructive discussions are always welcome.

As the project matures, contribution guidelines will be added to support collaborative development.

---

# License

This project is licensed under the **MIT License**.

See the `LICENSE` file for additional information.

---

**Thank you for visiting the Personal Finance Management System (PFMS) repository.**

The project is continuously evolving with a focus on business-first design, clean architecture, scalability, and modern software engineering practices.
