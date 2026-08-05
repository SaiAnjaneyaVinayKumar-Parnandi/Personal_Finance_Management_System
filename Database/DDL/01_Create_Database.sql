/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 01_Create_Database.sql
 * Module            : Database
 * Purpose           : Creates the PostgreSQL database required for PFMS.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 05-Aug-2026
 * Last Updated      : 05-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : None
 *
 * Execution Order   : 01
 *
 * Notes             :
 * - Execute this script before all other database scripts.
 * - Verify successful database creation before proceeding.
 **************************************************************************/


CREATE DATABASE pfms
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;