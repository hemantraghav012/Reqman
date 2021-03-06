-- Table: reqman.audittrail

-- DROP TABLE reqman.audittrail;

CREATE TABLE reqman.audittrail
(
    id integer NOT NULL DEFAULT nextval('reqman.audittrail_id_seq'::regclass),
    userid character varying(100) COLLATE "default".pg_catalog,
    requestheader text COLLATE "default".pg_catalog,
    responseheader text COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    username character varying(100) COLLATE "default".pg_catalog,
    CONSTRAINT pk_audittrail_id PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.audittrail
    OWNER to postgres;

GRANT ALL ON TABLE reqman.audittrail TO postgres WITH GRANT OPTION;

-- Table: reqman.category

-- DROP TABLE reqman.category;

CREATE TABLE reqman.category
(
    id integer NOT NULL DEFAULT nextval('reqman.category_id_seq'::regclass),
    name character varying(50) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(50) COLLATE "default".pg_catalog,
    CONSTRAINT pk_category_id PRIMARY KEY (id),
    CONSTRAINT uni_category_name UNIQUE (name)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.category
    OWNER to postgres;

GRANT ALL ON TABLE reqman.category TO postgres WITH GRANT OPTION;

-- Table: reqman.menu

-- DROP TABLE reqman.menu;

CREATE TABLE reqman.menu
(
    id integer NOT NULL,
    name character varying(100) COLLATE "default".pg_catalog,
    tabname character varying(100) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(100) COLLATE "default".pg_catalog,
    CONSTRAINT pk_menu_id PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.menu
    OWNER to postgres;

GRANT ALL ON TABLE reqman.menu TO postgres WITH GRANT OPTION;

-- Table: reqman.project

-- DROP TABLE reqman.project;

CREATE TABLE reqman.project
(
    id integer NOT NULL DEFAULT nextval('reqman.project_id_seq'::regclass),
    name character varying(50) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(50) COLLATE "default".pg_catalog,
    CONSTRAINT pk_project_id PRIMARY KEY (id),
    CONSTRAINT uni_project_name UNIQUE (name)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.project
    OWNER to postgres;

GRANT ALL ON TABLE reqman.project TO postgres WITH GRANT OPTION;

-- Table: reqman.request

-- DROP TABLE reqman.request;

CREATE TABLE reqman.request
(
    id integer NOT NULL DEFAULT nextval('reqman.request_id_seq'::regclass),
    title character varying(100) COLLATE "default".pg_catalog,
    userprojectid integer,
    usercategoryid integer,
    userrequesttypeid integer,
    description character varying(500) COLLATE "default".pg_catalog,
    completiondate timestamp without time zone,
    attachment bytea,
    soundaudio bytea,
    requeststatus integer,
    status boolean,
    datecreated timestamp without time zone,
     teammembercompletiondate timestamp without time zone,
    createdby character varying(50) COLLATE "default".pg_catalog,
    datemodified timestamp without time zone,
    modifiedby character varying(50) COLLATE "default".pg_catalog,
    filename character varying(50) COLLATE "default".pg_catalog,
    audiofilename character varying(50) COLLATE "default".pg_catalog,
    friendid integer,
    completionpercentage real,
    acceptdate timestamp without time zone,
    updatedate timestamp without time zone,
    revisionnumber integer,
  rating integer,
feedback character varying(500) COLLATE "default".pg_catalog,
priority character varying(100) COLLATE "default".pg_catalog,
estimatedeffort character varying(100) COLLATE "default".pg_catalog,
actualeffort character varying(50) COLLATE "default".pg_catalog,
weightage integer,
    approvedby character varying(50) COLLATE "default".pg_catalog,
    approveddate timestamp without time zone,
    CONSTRAINT pk_request_id PRIMARY KEY (id),
   -- CONSTRAINT uni_request_key UNIQUE (title, userprojectid, usercategoryid, userrequesttypeid),
    CONSTRAINT fk_request_usercategory_id FOREIGN KEY (usercategoryid)
        REFERENCES reqman.usercategory (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_request_userproject_id FOREIGN KEY (userprojectid)
        REFERENCES reqman.userproject (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_request_userrequesttype_id FOREIGN KEY (userrequesttypeid)
        REFERENCES reqman.userrequesttype (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_workflow_friendid FOREIGN KEY (friendid)
        REFERENCES reqman.userfriendlist (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.request
    OWNER to postgres;

GRANT ALL ON TABLE reqman.request TO postgres WITH GRANT OPTION;

-- Table: reqman.requesttype

-- DROP TABLE reqman.requesttype;

CREATE TABLE reqman.requesttype
(
    id integer NOT NULL DEFAULT nextval('reqman.requesttype_id_seq'::regclass),
    name character varying COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(50) COLLATE "default".pg_catalog,
    CONSTRAINT pk_requesttype PRIMARY KEY (id),
    CONSTRAINT uni_requesttype_name UNIQUE (name)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.requesttype
    OWNER to postgres;

GRANT ALL ON TABLE reqman.requesttype TO postgres WITH GRANT OPTION;


-- Table: reqman.rolemenus

-- DROP TABLE reqman.rolemenus;

CREATE TABLE reqman.rolemenus
(
    roleid integer,
    menuid integer,
    id integer NOT NULL DEFAULT nextval('reqman.rolemenus_id_seq'::regclass),
    CONSTRAINT pk_rolemenus_id PRIMARY KEY (id),
    CONSTRAINT uni_rolemenu UNIQUE (menuid, roleid),
    CONSTRAINT fk_rolemenu_menuid FOREIGN KEY (menuid)
        REFERENCES reqman.menu (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_rolemenu_roleid FOREIGN KEY (roleid)
        REFERENCES reqman.roles (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.rolemenus
    OWNER to postgres;

GRANT ALL ON TABLE reqman.rolemenus TO postgres WITH GRANT OPTION;

-- Table: reqman.roles

-- DROP TABLE reqman.roles;

CREATE TABLE reqman.roles
(
    id integer NOT NULL,
    name character varying(50) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(100) COLLATE "default".pg_catalog,
    CONSTRAINT pk_role_id PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.roles
    OWNER to postgres;

GRANT ALL ON TABLE reqman.roles TO postgres WITH GRANT OPTION;

-- Table: reqman.usercategory

-- DROP TABLE reqman.usercategory;

CREATE TABLE reqman.usercategory
(
    id integer NOT NULL DEFAULT nextval('reqman.usercategory_id_seq'::regclass),
    userid integer,
    categoryid integer,
    status boolean,
    CONSTRAINT pk_usercategory_id PRIMARY KEY (id),
    CONSTRAINT uni_usercategory_key UNIQUE (categoryid, userid),
    CONSTRAINT fk_usercategory_categoryid FOREIGN KEY (categoryid)
        REFERENCES reqman.category (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_usercategory_userid FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.usercategory
    OWNER to postgres;

GRANT ALL ON TABLE reqman.usercategory TO postgres WITH GRANT OPTION;

-- Table: reqman.userfriendlist

-- DROP TABLE reqman.userfriendlist;

CREATE TABLE reqman.userfriendlist
(
    id integer NOT NULL DEFAULT nextval('reqman."userfriendList_id_seq"'::regclass),
    userid integer,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(50) COLLATE "default".pg_catalog,
    CONSTRAINT pk_friendlist_id PRIMARY KEY (id),
    CONSTRAINT fk_friend_userid FOREIGN KEY (id)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.userfriendlist
    OWNER to postgres;

GRANT ALL ON TABLE reqman.userfriendlist TO postgres WITH GRANT OPTION;

-- Table: reqman.userproject

-- DROP TABLE reqman.userproject;

CREATE TABLE reqman.userproject
(
    id integer NOT NULL DEFAULT nextval('reqman.userproject_id_seq'::regclass),
    userid integer,
    projectid integer,
    status boolean,
    CONSTRAINT pk_userproject PRIMARY KEY (id),
    CONSTRAINT uni_userproject_key UNIQUE (projectid, userid),
    CONSTRAINT fk_user_project_projectid FOREIGN KEY (projectid)
        REFERENCES reqman.project (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_userproject_userid FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.userproject
    OWNER to postgres;

GRANT ALL ON TABLE reqman.userproject TO postgres WITH GRANT OPTION;

-- Table: reqman.userrequesttype

-- DROP TABLE reqman.userrequesttype;

CREATE TABLE reqman.userrequesttype
(
    id integer NOT NULL DEFAULT nextval('reqman.userrequesttype_id_seq'::regclass),
    userid integer,
    requesttypeid integer,
    status boolean,
    CONSTRAINT pk_userrequesttype_id PRIMARY KEY (id),
    CONSTRAINT uni_userrequesttype UNIQUE (requesttypeid, userid),
    CONSTRAINT fk_userrequesttype_requesttypeid FOREIGN KEY (requesttypeid)
        REFERENCES reqman.requesttype (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_userrequesttype_userid FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.userrequesttype
    OWNER to postgres;

GRANT ALL ON TABLE reqman.userrequesttype TO postgres WITH GRANT OPTION;

-- Table: reqman.userroles

-- DROP TABLE reqman.userroles;

CREATE TABLE reqman.userroles
(
    roleid integer,
    userid integer,
    id integer NOT NULL DEFAULT nextval('reqman.userroles_id_seq'::regclass),
    CONSTRAINT pk_userroles_id PRIMARY KEY (id),
    CONSTRAINT uni_userroles UNIQUE (roleid, userid),
    CONSTRAINT fk_userrole_roleid FOREIGN KEY (roleid)
        REFERENCES reqman.roles (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_userrole_userid FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.userroles
    OWNER to postgres;

GRANT ALL ON TABLE reqman.userroles TO postgres WITH GRANT OPTION;

-- Table: reqman.users

-- DROP TABLE reqman.users;

CREATE TABLE reqman.users
(
    id integer NOT NULL DEFAULT nextval('reqman.users_id_seq'::regclass),
    emailid character varying(100) COLLATE "default".pg_catalog,
    password character varying(12) COLLATE "default".pg_catalog,
    firstname character varying(50) COLLATE "default".pg_catalog,
    lastname character varying(50) COLLATE "default".pg_catalog,
    shortname character varying(100) COLLATE "default".pg_catalog,
    status boolean,
    createdby character varying(50) COLLATE "default".pg_catalog,
    createdon timestamp without time zone,
    lastlogin timestamp without time zone,
    photo bytea,
    hashkey character varying(255) COLLATE "default".pg_catalog,
    emailstatus character varying(255) COLLATE "default".pg_catalog,
    accountid integer,
    CONSTRAINT pk_users_id PRIMARY KEY (id),
    CONSTRAINT uniq_user_id UNIQUE (emailid,hashkey),
    CONSTRAINT account_users_fk FOREIGN KEY (accountid)
        REFERENCES reqman.account (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.users
    OWNER to postgres;

GRANT ALL ON TABLE reqman.users TO postgres WITH GRANT OPTION;

-- Table: reqman.usertype

-- DROP TABLE reqman.usertype;

CREATE TABLE reqman.usertype
(
    id integer NOT NULL,
    name character varying(100) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(50) COLLATE "default".pg_catalog,
    CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.usertype
    OWNER to postgres;

GRANT ALL ON TABLE reqman.usertype TO postgres WITH GRANT OPTION;

-- Table: reqman.userusertype

-- DROP TABLE reqman.userusertype;

CREATE TABLE reqman.userusertype
(
    usertypeid integer,
    userid integer,
    CONSTRAINT fk_usertypes FOREIGN KEY (usertypeid)
        REFERENCES reqman.usertype (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_userusertypes_userid FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.userusertype
    OWNER to postgres;

GRANT ALL ON TABLE reqman.userusertype TO postgres WITH GRANT OPTION;

-- Table: reqman.requestnotes

-- DROP TABLE reqman.requestnotes;

CREATE TABLE reqman.requestnotes
(
    id integer NOT NULL DEFAULT nextval('reqman.requestnotes_id_seq'::regclass),
    requestid integer,
    description text COLLATE "default".pg_catalog,
    createdby character varying(50) COLLATE "default".pg_catalog,
    createdon timestamp without time zone,
    CONSTRAINT pk_requestnotes_id PRIMARY KEY (id),
    CONSTRAINT pk_requestnotes_id_fk FOREIGN KEY (requestid)
        REFERENCES reqman.request (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.requestnotes
    OWNER to postgres;

GRANT ALL ON TABLE reqman.requestnotes TO postgres WITH GRANT OPTION;

-- Table: reqman.account

-- DROP TABLE reqman.account;

CREATE TABLE reqman.account
(
    id integer NOT NULL DEFAULT nextval('reqman.account_id_seq'::regclass),
    name character varying(100) COLLATE "default".pg_catalog,
     organizationkey character varying(100) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(100) COLLATE "default".pg_catalog,
     photo bytea,
    CONSTRAINT id_account_pk PRIMARY KEY (id),
    CONSTRAINT account_name_unique UNIQUE (organizationkey)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.account
    OWNER to postgres;
    
-- Table: reqman.accountusers

-- DROP TABLE reqman.accountusers;

CREATE TABLE reqman.accountusers
(
    id integer NOT NULL DEFAULT nextval('reqman.accountusers_id_seq'::regclass),
    userid integer,
    accountid integer,
    CONSTRAINT pk_accountuserid PRIMARY KEY (id),
    CONSTRAINT uk_knvs9nm4eypucy00drj5gpte1 UNIQUE (accountid, userid),
    CONSTRAINT fk_accountusers_account FOREIGN KEY (accountid)
        REFERENCES reqman.account (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_accountusers_users FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.accountusers
    OWNER to postgres;

GRANT ALL ON TABLE reqman.accountusers TO postgres WITH GRANT OPTION;

-- Table: reqman.customerpayment

-- DROP TABLE reqman.customerpayment;

CREATE TABLE reqman.customerpayment
(
    id bigint NOT NULL DEFAULT nextval('reqman.customerpayment_id_seq'::regclass),
    productname character varying(200) COLLATE "default".pg_catalog,
    productid bigint,
    subscriptionname character varying(200) COLLATE "default".pg_catalog,
    subscriptionid bigint,
    customerid bigint,
    userid integer,
    currenttermstartat date,
    currenttermend date,
    status boolean,
    createdon timestamp with time zone,
    planname character varying(200) COLLATE "default".pg_catalog,
    plancode character varying(200) COLLATE "default".pg_catalog,
    CONSTRAINT "pk_ customerpayment" PRIMARY KEY (id),
    CONSTRAINT "fk_userid_ customerpayment" FOREIGN KEY (userid)
        REFERENCES reqman.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.customerpayment
    OWNER to postgres;    
-- Table: reqman.publicemaildomains

-- DROP TABLE reqman.publicemaildomains;

CREATE TABLE reqman.publicemaildomains
(
    id bigint NOT NULL DEFAULT nextval('reqman.publicemaildomains_id_seq'::regclass),
    name character varying(100) COLLATE "default".pg_catalog,
    status boolean,
    datecreated timestamp without time zone,
    createdby character varying(20) COLLATE "default".pg_catalog,
    CONSTRAINT pk_publicemaildomains PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.publicemaildomains
    OWNER to postgres;

GRANT ALL ON TABLE reqman.publicemaildomains TO postgres WITH GRANT OPTION;

-- Table: reqman.schdulejobs

-- DROP TABLE reqman.schdulejobs;

CREATE TABLE reqman.schdulejobs
(
    id integer NOT NULL DEFAULT nextval('reqman.schdulejobs_id_seq'::regclass),
    jobname character varying(200) COLLATE "default".pg_catalog,
    description character varying(200) COLLATE "default".pg_catalog,
    day character varying(10) COLLATE "default".pg_catalog,
   hour integer,
   minute integer,
    date integer,
    status boolean,
    createdby character varying(50) COLLATE "default".pg_catalog,
    createdon timestamp without time zone,
    CONSTRAINT pk_schduledjobs PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.schdulejobs
    OWNER to postgres;

GRANT ALL ON TABLE reqman.schdulejobs TO postgres WITH GRANT OPTION;


CREATE TABLE reqman.suggestion
(
    id integer NOT NULL DEFAULT nextval('reqman.suggestion_id_seq'::regclass),
    message character varying(200) COLLATE "default".pg_catalog,
    createdby character varying(500) COLLATE "default".pg_catalog,
   datecreated timestamp without time zone,
   adminremarks character varying(500) COLLATE "default".pg_catalog,
   actionowner character varying(500) COLLATE "default".pg_catalog,    
    messagetype character varying(50) COLLATE "default".pg_catalog,
    status boolean,
    requeststatus integer,
    CONSTRAINT pk_suggestion PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE reqman.suggestion
    OWNER to postgres;

GRANT ALL ON TABLE reqman.suggestion TO postgres WITH GRANT OPTION;