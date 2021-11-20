--------------------------------------------------------
--  File created - Saturday-November-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table SALES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."SALES" 
   (	"BOOK_ID" NUMBER(11,0), 
	"CUSTOMER_ID" NUMBER(11,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.SALES
SET DEFINE OFF;
Insert into SYSTEM.SALES (BOOK_ID,CUSTOMER_ID) values (3,1);
Insert into SYSTEM.SALES (BOOK_ID,CUSTOMER_ID) values (4,1);
Insert into SYSTEM.SALES (BOOK_ID,CUSTOMER_ID) values (48,1);
Insert into SYSTEM.SALES (BOOK_ID,CUSTOMER_ID) values (48,1);
--------------------------------------------------------
--  Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SALES" MODIFY ("BOOK_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."SALES" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table SALES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."SALES" ADD CONSTRAINT "FK_BOOK_CUSTOMER" FOREIGN KEY ("BOOK_ID")
	  REFERENCES "SYSTEM"."BOOK" ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."SALES" ADD CONSTRAINT "FK_CUSTOMER_BOOK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "SYSTEM"."CUSTOMER" ("ID") ENABLE;
