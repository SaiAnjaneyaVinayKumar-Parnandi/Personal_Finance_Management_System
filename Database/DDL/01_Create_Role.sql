/**************************************************************************
 * Project Name      : Personal Finance Management System (PFMS)
 * Script Name       : 01_Create_Role.sql
 * Module            : Database
 * Purpose           : Creates the dedicated PostgreSQL role required to
 *                      own and access the PFMS database.
 *
 * Author            : SaiAnjaneyaVinayKumar Parnandi
 * Version           : 1.0
 * Created On        : 07-Aug-2026
 * Last Updated      : 07-Aug-2026
 *
 * Prerequisites     : PostgreSQL 17.x or later
 * Dependencies      : None
 *
 * Execution Order   : 01
 *
 * Notes             :
 * - Execute this script first, before 02_Create_Database.sql.
 * - Replace the placeholder password below with a strong password
 *   before running this script.
 * - Do not commit the actual password to source control. Store it in
 *   a .env file (or secrets manager) once the application is wired up.
 **************************************************************************/

CREATE ROLE pfms_admin
    WITH LOGIN
    PASSWORD 'CHANGE_ME_BEFORE_RUNNING'
    NOSUPERUSER
    CREATEDB
    NOCREATEROLE
    INHERIT
    NOREPLICATION
    CONNECTION LIMIT -1;