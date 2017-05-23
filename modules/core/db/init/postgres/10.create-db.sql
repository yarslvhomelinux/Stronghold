-- begin STRONGHOLD_STUDENT
create table STRONGHOLD_STUDENT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    SURNAME varchar(255),
    PATRONYMIC varchar(255),
    EMAIL varchar(255),
    SKYPE varchar(255),
    POSITION_ID uuid,
    PROJECT_ID uuid,
    ORGANIZATION_ID uuid,
    USER_ID uuid,
    --
    primary key (ID)
)^
-- end STRONGHOLD_STUDENT
-- begin STRONGHOLD_SUBJECT
create table STRONGHOLD_SUBJECT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    AUTHOR_ID uuid,
    TEACHER_ID uuid,
    MATERIALS_MAP_ID uuid,
    COURSE_ID uuid,
    --
    primary key (ID)
)^
-- end STRONGHOLD_SUBJECT
-- begin STRONGHOLD_MATERIAL
create table STRONGHOLD_MATERIAL (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TYPE_MATERIAL integer,
    DURATION integer,
    ATTACHMENT_ID uuid,
    --
    primary key (ID)
)^
-- end STRONGHOLD_MATERIAL
-- begin STRONGHOLD_COURSE
create table STRONGHOLD_COURSE (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    START_DATE timestamp,
    ALL_DURATION varchar(255),
    SUBJECT_ID uuid,
    STUDENTS_ID uuid,
    --
    primary key (ID)
)^
-- end STRONGHOLD_COURSE
-- begin STRONGHOLD_POSITION_DIRECTORY
create table STRONGHOLD_POSITION_DIRECTORY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    POSITION_NAME varchar(255),
    --
    primary key (ID)
)^
-- end STRONGHOLD_POSITION_DIRECTORY
-- begin STRONGHOLD_PROJECT_DIRECTORY
create table STRONGHOLD_PROJECT_DIRECTORY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PROJECT_NAME varchar(255),
    --
    primary key (ID)
)^
-- end STRONGHOLD_PROJECT_DIRECTORY
-- begin STRONGHOLD_ORGANIZATION_DIRECTORY
create table STRONGHOLD_ORGANIZATION_DIRECTORY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORG_NAME varchar(255),
    ORG_ADDRESS varchar(255),
    ORG_EMAIL varchar(255),
    --
    primary key (ID)
)^
-- end STRONGHOLD_ORGANIZATION_DIRECTORY
-- begin STRONGHOLD_MATERIALS_MAP
create table STRONGHOLD_MATERIALS_MAP (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MAP_KEY integer,
    MATERIAL_ID uuid,
    --
    primary key (ID)
)^
-- end STRONGHOLD_MATERIALS_MAP