--------------------------------------------------------
--  ������ ������ - ������-7��-22-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LOGIN
--------------------------------------------------------

  CREATE TABLE "SCOTT"."LOGIN" 
   (	"ID" NUMBER(8,0), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"BIRTH" NUMBER(6,0), 
	"GENDER" VARCHAR2(10 BYTE), 
	"ADDR" VARCHAR2(20 BYTE), 
	"PHONENUM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.LOGIN
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index XPK�α���
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."XPK�α���" ON "SCOTT"."LOGIN" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table LOGIN
--------------------------------------------------------

  ALTER TABLE "SCOTT"."LOGIN" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."LOGIN" ADD CONSTRAINT "XPK�α���" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
