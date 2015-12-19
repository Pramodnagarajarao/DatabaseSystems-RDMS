
  CREATE TABLE "SYSTEM"."COUPON" 
   (	"COUPON_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"VILLA_ID" VARCHAR2(40 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"DISCOUNT_PERCENTAGE" NUMBER, 
	 CONSTRAINT "COUPON_PK" PRIMARY KEY ("COUPON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "COUPON_TO_VILLATABLE" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."VILLA" ("VILLA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 