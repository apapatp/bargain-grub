create database bargaingrub;
use bargaingrub;
source /db/database.sql;

create user root identified by "";
grant all privileges on bargaingrub.* to root@'%';