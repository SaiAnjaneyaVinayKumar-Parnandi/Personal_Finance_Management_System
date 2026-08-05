# Database Setup Guide

---

## Document Information

| Property | Details |
|----------|---------|
| Project Name | Personal Finance Management System (PFMS) |
| Document Name | 01_Database_Setup_Guide |
| Document Version | 1.0 |
| Document Status | Approved |
| Author | SaiAnjaneyaVinayKumar Parnandi |
| Created On | 05-Aug-2026 |
| Last Updated | 05-Aug-2026 |
| Reviewed By | SaiAnjaneyaVinayKumar Parnandi |
| Approved By | SaiAnjaneyaVinayKumar Parnandi |

---

## Purpose

The purpose of this document is to provide step-by-step instructions for setting up the PostgreSQL database environment required for the Personal Finance Management System (PFMS). It serves as the reference for preparing the database before deploying database objects and application components.

---

## Scope

This guide covers:

- PostgreSQL installation
- pgAdmin installation
- Database creation
- User creation
- Required extensions
- Database configuration
- Verification steps

This document does not cover database object creation, application deployment, or data migration.

---

## Database Overview

The Personal Finance Management System (PFMS) uses PostgreSQL as its relational database management system.

The database stores:

- Master Data
- Financial Transactions
- Budget Information
- Reserve Information
- Operational Logs
- Insurance Details
- Investment Records
- Loan Information
- Utility Records

---

## Database Technology

| Component | Technology |
|-----------|------------|
| Database | PostgreSQL |
| Administration Tool | pgAdmin 4 |
| SQL Standard | PostgreSQL SQL |
| Client Tool | psql / pgAdmin |
| Character Set | UTF-8 |
| Schema | public |


---

## Software Prerequisites

The following software shall be installed before configuring the database.

| Software | Version |
|----------|----------|
| PostgreSQL | 17.x or later |
| pgAdmin 4 | Latest Stable Version |
| Git | Latest Stable Version |
| Visual Studio Code | Latest Stable Version |

---

## PostgreSQL Installation

Perform the following steps:

1. Download PostgreSQL.
2. Install PostgreSQL using the default installer.
3. Select the required installation components.
4. Configure the PostgreSQL superuser password.
5. Configure the default PostgreSQL port.
6. Complete the installation.
7. Verify PostgreSQL service is running.

---

## pgAdmin Installation

After installing PostgreSQL:

1. Open pgAdmin.
2. Register the PostgreSQL server.
3. Connect using the configured credentials.
4. Verify successful connection.

---

## Database Creation

Create the database using pgAdmin or the PostgreSQL command line.

Recommended database name:

```text
pfms_db
```

Verify:

- Database is created successfully.
- Database encoding is UTF-8.
- Database owner is configured correctly.

---

## Database User

Create a dedicated database user for the application.

Recommended privileges:

- CONNECT
- CREATE
- TEMPORARY

Grant additional privileges only when required by the application.


---

## Database Configuration

Verify the following database configuration.

| Configuration | Recommended Value |
|--------------|-------------------|
| Encoding | UTF-8 |
| Locale | Default System Locale |
| Time Zone | Asia/Kolkata |
| Schema | public |

---

## Required Extensions

Install required PostgreSQL extensions if applicable.

Examples include:

- uuid-ossp
- pgcrypto

Install only the extensions required by the application.

---

## Verification Checklist

Verify the following before proceeding.

| Activity | Status |
|----------|--------|
| PostgreSQL Installed | ☐ |
| pgAdmin Installed | ☐ |
| Database Created | ☐ |
| Database User Created | ☐ |
| Required Extensions Installed | ☐ |
| Database Connectivity Verified | ☐ |

---

## Troubleshooting

Common setup issues include:

- PostgreSQL service not running
- Incorrect database credentials
- Port conflicts
- Firewall restrictions
- Database connection failures

Verify the PostgreSQL service status and configuration before proceeding with database object deployment.

---

## Conclusion

This Database Setup Guide provides the necessary steps for preparing the PostgreSQL environment for the Personal Finance Management System (PFMS). Completing these setup activities ensures the database is ready for creating schemas, tables, constraints, and other database objects required by the application.