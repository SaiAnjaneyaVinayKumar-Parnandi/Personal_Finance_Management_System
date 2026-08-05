# Deployment Guide

---

## Document Information

| Property | Details |
|----------|---------|
| Project Name | Personal Finance Management System (PFMS) |
| Document Name | 13_Deployment_Guide |
| Document ID | DOC-013 |
| Document Version | 1.0 |
| Document Status | Approved |
| Author | SaiAnjaneyaVinayKumar Parnandi |
| Created On | 05-Aug-2026 |
| Last Updated | 05-Aug-2026 |
| Reviewed By | SaiAnjaneyaVinayKumar Parnandi |
| Approved By | SaiAnjaneyaVinayKumar Parnandi |

---

## Purpose

The purpose of this Deployment Guide is to define the standard deployment procedure for the Personal Finance Management System (PFMS). It provides the required infrastructure, software prerequisites, environment configuration, deployment process, verification activities, rollback strategy, and post-deployment validation required to successfully deploy the application.

This guide serves as the standard reference for developers, system administrators, DevOps engineers, testers, and future deployment activities.

---

## Scope

This document covers deployment activities for the complete Personal Finance Management System (PFMS).

The scope includes:

- Deployment Architecture
- Infrastructure Requirements
- Software Prerequisites
- Environment Configuration
- Database Deployment
- Backend Deployment
- Frontend Deployment
- Environment Variables
- Deployment Validation
- Rollback Procedure
- Backup Strategy
- Deployment Checklist

This document does not describe application functionality, business rules, UI behavior, API implementation, database design, or coding standards.

---

## Deployment Overview

The Personal Finance Management System (PFMS) follows a three-tier deployment architecture consisting of:

- React Frontend
- FastAPI Backend
- PostgreSQL Database

The application may be deployed in Development, Test, Staging, or Production environments using the same deployment process with environment-specific configuration.

---

## Deployment Architecture

```text
                +----------------------+
                |     End Users        |
                +----------+-----------+
                           |
                           v
                +----------------------+
                |   React Frontend     |
                +----------+-----------+
                           |
                    REST API Calls
                           |
                           v
                +----------------------+
                |    FastAPI Backend   |
                +----------+-----------+
                           |
                     SQLAlchemy ORM
                           |
                           v
                +----------------------+
                | PostgreSQL Database  |
                +----------------------+
```

---

## Supported Environments

| Environment | Purpose |
|------------|---------|
| Development | Local development and unit testing |
| Test | Functional and integration testing |
| Staging | Pre-production validation |
| Production | Live application environment |

---

## Technology Stack

| Component | Technology |
|-----------|------------|
| Frontend | React |
| Backend | FastAPI |
| Programming Language | Python |
| Database | PostgreSQL |
| ORM | SQLAlchemy |
| Authentication | OAuth2 + JWT |
| API Documentation | Swagger / OpenAPI |
| Version Control | Git |
| Package Manager | npm / pip |
| Web Server | Uvicorn |


---

## Infrastructure Requirements

The deployment environment shall satisfy the following minimum infrastructure requirements.

| Component | Minimum Requirement |
|-----------|---------------------|
| Processor | Dual Core CPU |
| Memory | 8 GB RAM |
| Storage | 50 GB Available Disk Space |
| Operating System | Windows 11 / Ubuntu 22.04 LTS |
| Network | Stable Internet Connection |

---

## Software Prerequisites

The following software shall be installed before deployment.

| Software | Version |
|----------|----------|
| Python | 3.12 or later |
| Node.js | 22.x or later |
| npm | Latest Stable Version |
| PostgreSQL | 17.x or later |
| Git | Latest Stable Version |
| Visual Studio Code | Latest Stable Version |

---

## Environment Configuration

Separate configuration shall be maintained for each deployment environment.

Typical configuration includes:

- Database Connection
- Database Username
- Database Password
- JWT Secret Key
- Token Expiration Time
- Application Port
- Logging Configuration
- Environment Name

---

## Backend Deployment

The backend application shall be deployed using FastAPI.

Deployment steps:

1. Clone the application source code.
2. Create and activate the Python virtual environment.
3. Install all required Python packages.
4. Configure environment variables.
5. Verify PostgreSQL database connectivity.
6. Execute database migration scripts.
7. Start the FastAPI application using Uvicorn.
8. Verify backend health check endpoint.

---

## Frontend Deployment

The frontend application shall be deployed using React.

Deployment steps:

1. Clone the application source code.
2. Install all required npm packages.
3. Configure frontend environment variables.
4. Build the production package.
5. Deploy the generated build files.
6. Verify application accessibility.
7. Verify backend API connectivity.

---

## Database Deployment

The PostgreSQL database shall be deployed before the application deployment.

Deployment steps:

1. Install PostgreSQL.
2. Create the PFMS database.
3. Create required database users.
4. Apply database schema.
5. Create indexes and constraints.
6. Verify database connectivity.
7. Validate reference data.


---

## Environment Variables

The application shall use environment-specific configuration through environment variables.

Typical environment variables include:

| Variable | Description |
|----------|-------------|
| DATABASE_HOST | PostgreSQL Server Host |
| DATABASE_PORT | PostgreSQL Server Port |
| DATABASE_NAME | Database Name |
| DATABASE_USER | Database Username |
| DATABASE_PASSWORD | Database Password |
| JWT_SECRET_KEY | Secret key used for JWT generation |
| JWT_ALGORITHM | JWT signing algorithm |
| ACCESS_TOKEN_EXPIRE_MINUTES | JWT token expiration time |
| APP_HOST | FastAPI Host |
| APP_PORT | FastAPI Port |
| REACT_APP_API_URL | Backend API Base URL |

---

## Deployment Validation

After deployment, the following validation activities shall be performed.

- Verify application is accessible.
- Verify database connectivity.
- Verify backend API availability.
- Verify frontend loads successfully.
- Verify user authentication.
- Verify Master Management modules.
- Verify Financial Transaction module.
- Verify Reports.
- Verify Dashboard.
- Verify application logs.
- Verify no deployment errors are reported.

---

## Backup Strategy

The following backup activities shall be performed before deployment.

- Backup PostgreSQL database.
- Backup application source code.
- Backup configuration files.
- Backup deployment scripts.
- Verify backup integrity before deployment.

---

## Rollback Procedure

If deployment fails, the following rollback procedure shall be followed.

1. Stop the application.
2. Restore the previous application version.
3. Restore the previous database backup if required.
4. Restore previous configuration files.
5. Restart application services.
6. Perform deployment validation.
7. Notify stakeholders after successful rollback.

---

## Deployment Checklist

| Activity | Status |
|----------|--------|
| Source Code Reviewed | ☐ |
| Database Backup Completed | ☐ |
| Application Backup Completed | ☐ |
| Environment Variables Configured | ☐ |
| PostgreSQL Deployed | ☐ |
| Backend Deployed | ☐ |
| Frontend Deployed | ☐ |
| API Validation Completed | ☐ |
| Smoke Testing Completed | ☐ |
| Deployment Approved | ☐ |

---

## Troubleshooting

Common deployment issues may include:

- Database connection failure
- Missing environment variables
- Dependency installation failure
- Incorrect API endpoint configuration
- Authentication configuration issues
- Port conflicts
- Build failures
- Permission issues

Each issue shall be investigated using application logs, database logs, and deployment logs before corrective action is performed.

---

## Conclusion

This Deployment Guide defines the standard deployment process for the Personal Finance Management System (PFMS). Following the procedures described in this document helps ensure consistent, reliable, and repeatable deployments across Development, Test, Staging, and Production environments while minimizing deployment risks and supporting future maintenance activities.