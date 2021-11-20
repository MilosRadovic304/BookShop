--------------------------------------------------------
--  File created - Saturday-November-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOOK" 
   (	"ID" NUMBER(11,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"TITLE" VARCHAR2(100 BYTE), 
	"AUTHOR" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BOOK
SET DEFINE OFF;
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (3,'OCA: Oracle Certified Associate Java SE 8 Programmer I Study
Guide','Jeanne Boyarsky and Scott Selikoff');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (4,'OCP: Oracle Certified Professional
Java SE 8 Programmer II Study
Guide','Jeanne Boyarsky and Scott Selikoff');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (5,'Masterig Selenium WebDriver','Mark Collin');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (6,'Ruby Cookbook','Lucas Carlson and Leonard Richardson');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (7,'PHP In a Nutshell','Paul Hudson');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (8,'JavaScript Bible Gold Edition','Danny Goodman');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (9,'Effective Java','Joshua Bloch');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (10,'Oracle PL/SQL Best Practices','Steven Feuerstein');
Insert into SYSTEM.BOOK (ID,TITLE,AUTHOR) values (48,'Python Crash Course','Eric Matthes');
--------------------------------------------------------
--  DDL for Index SYS_C008338
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C008338" ON "SYSTEM"."BOOK" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BOOK" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BOOK" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
