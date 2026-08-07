/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 02_Create_Database.sql
 * Module            : Database
 * Purpose           : Creates the PostgreSQL database required for PFMS.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : 01_Create_Role.sql must be executed first.
 *
 * Execution Order   : 02
 *
 * Notes             :
 * - Execute this script only after 01_Create_Role.sql has been run
 *   successfully.
 * - Verify successful database creation before proceeding.
 **************************************************************************/

CREATE DATABASE pfms
    WITH 
    OWNER = pfms_admin
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;