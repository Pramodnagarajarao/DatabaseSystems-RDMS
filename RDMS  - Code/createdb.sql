
  CREATE TABLE "SYSTEM"."VILLA_FEATURES" 
   (	"FEATURE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"FEATURE_NAME" VARCHAR2(20 BYTE), 
	 PRIMARY KEY ("FEATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
 
 CREATE TABLE "SYSTEM"."USEROF" 
   (	"USER_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"USER_FIRSTNAME" VARCHAR2(40 BYTE), 
	"USER_LASTNAME" VARCHAR2(40 BYTE), 
	"USER_EMAILID" VARCHAR2(40 BYTE), 
	"USER_DOB" DATE, 
	 PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
  
  CREATE TABLE "SYSTEM"."OWNER" 
   (	"OWNER_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"OWNER_PHONENUMBER" VARCHAR2(20 BYTE), 
	"MANAGED_BY" VARCHAR2(40 BYTE), 
	 CONSTRAINT "OWNER_PK" PRIMARY KEY ("OWNER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
 
  CREATE TABLE "SYSTEM"."VILLA" 
   (	"VILLA_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"VILLA_NAME" VARCHAR2(20 BYTE), 
	"OWNER_ID" VARCHAR2(20 BYTE), 
	 CONSTRAINT "PK_VILLA_ID" PRIMARY KEY ("VILLA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_USER_ID" FOREIGN KEY ("OWNER_ID")
	  REFERENCES "SYSTEM"."OWNER" ("OWNER_ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
 
  CREATE TABLE "SYSTEM"."REVIEW" 
   (	"REVIEW_ID" VARCHAR2(40 BYTE), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"TEXT" VARCHAR2(60 BYTE), 
	"RATING" NUMBER, 
	 CONSTRAINT "REVIEW_ID" PRIMARY KEY ("REVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "USER_ID" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."USEROF" ("USER_ID") ENABLE, 
	 CONSTRAINT "VILLA_ID" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."VILLA" ("VILLA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

  CREATE TABLE "SYSTEM"."VILLA_TO_VILLAFEATURES" 
   (	"VILLA_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"FEATURE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "VILLA_TO_VILLAFEATURES_PK" PRIMARY KEY ("VILLA_ID", "FEATURE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "FK_VILLA_ID" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."VILLA" ("VILLA_ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "FK_FEATURE_ID" FOREIGN KEY ("FEATURE_ID")
	  REFERENCES "SYSTEM"."VILLA_FEATURES" ("FEATURE_ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
 
  CREATE TABLE "SYSTEM"."RESERVATION" 
   (	"RESERVATION_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"USER_ID" VARCHAR2(20 BYTE), 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"COUPON_ID" VARCHAR2(20 BYTE), 
	"DEPOSIT" NUMBER, 
	 CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RESERVATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "USERID_TOUSERTABLE" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."USEROF" ("USER_ID") ENABLE, 
	 CONSTRAINT "VILLAID_TO_VILLA" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."VILLA" ("VILLA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 


  CREATE TABLE "SYSTEM"."VILLA_RATE" 
   (	"RATE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"VILLA_ID" VARCHAR2(20 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"RATE" NUMBER, 
	 CONSTRAINT "VILLA_RATE_PK" PRIMARY KEY ("RATE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "VILLAID_TOVILLATABLE" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."VILLA" ("VILLA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

 

  CREATE TABLE "SYSTEM"."LIKED_REVIEWS" 
   (	"REVIEW_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"USER_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "LIKED_REVIEW_PK" PRIMARY KEY ("REVIEW_ID", "USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "LIKEDREVIEW_TO_REVIEW" FOREIGN KEY ("REVIEW_ID")
	  REFERENCES "SYSTEM"."REVIEW" ("REVIEW_ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "LIKEDREVIEW_USEROF" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."USEROF" ("USER_ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

  CREATE TABLE "SYSTEM"."FAVORITE_VILLA" 
   (	"USER_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"VILLA_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	 CONSTRAINT "FAVORITE_VILLA_PK" PRIMARY KEY ("USER_ID", "VILLA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "USERID_TO_USERTABLE" FOREIGN KEY ("USER_ID")
	  REFERENCES "SYSTEM"."USEROF" ("USER_ID") ENABLE, 
	 CONSTRAINT "VILLAID_TO_VILLATABLE" FOREIGN KEY ("VILLA_ID")
	  REFERENCES "SYSTEM"."VILLA" ("VILLA_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

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
 

  CREATE TABLE "SYSTEM"."MANAGER" 
   (	"MANAGER_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"MANAGED_BY" VARCHAR2(20 BYTE), 
	 CONSTRAINT "MANAGER_PK" PRIMARY KEY ("MANAGER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
insert into VILLA_FEATURES('Fea1','swimming pool');  
insert into VILLA_FEATURES('Fea2','Jacuzzi');  
insert into VILLA_FEATURES('Fea3','billiard table');  
insert into VILLA_FEATURES('Fea4','Xbox 360');  
insert into VILLA_FEATURES('Fea5','board games');  
insert into VILLA_FEATURES('Fea6','pets allowed');  

  insert into userof values ('U1','Jackie','Jones', 'jack_killer@gmail.com', '28-02-1983');	
  insert into userof values ('U2','Jessie','Jackson', 'Hello_macy@yahoo.com', '04-03-1986');																
  insert into userof values ('U3','Tommy','Trojan', 'john_black@hotmail.com', '22-04-1990');	
  insert into userof values ('U4','Niki','Nanjan', 'ny_robert@usc.edu', '10-06-1980');	
  insert into userof values ('U5','Jalli','Shadan', 'cool_andrew@bbc.co.uk', '27-11-1984');	
  insert into userof values ('U6','Houtan','Khandan', 'coryphillip@voa.gov', '06-06-1966');	
  insert into userof values ('U7','Naz','Nazi', 'DaneilJ@msnbc.com', '20-04-2000');
  insert into userof values ('U8','Ab','Bazi','rohanau@cs.mit.edu','12-12-1956');   
  insert into userof values ('U9','Ben','Ghazi','edmorales@houti.com','10-11-1973');  
  insert into userof values ('U10','Carlos','Santana','danamoon@louti.com','07-07-1977');  
  insert into userof values ('U11','Roberto','Carlos','owner1@villa.com','05-05-1955');  
  insert into userof values ('U12','De','Vilardo','owner2@villa.com','04-04-1944'); 
  insert into userof values ('U13','villa','Blanka','owner3@villa.com','11-11-1974');  
  insert into userof values ('U14','nino','bino','ceo@villa.com','01-01-1991');
  insert into userof values ('U15','Bookish','Morinio','manager2@villa.com','17-04-1950');
  
insert into Owner values ('U11','111-111-1111','U15');
insert into Owner values ('U12','222-222-2222','U15');	
insert into Owner values ('U13','333-333-3333','U15');	
insert into Owner values ('U14','444-444-4444','');	

  insert into Villa values ('Vil1','Fifi','U11');
  insert into Villa values ('Vil2','Lulu','U12');
  insert into Villa values ('Vil3','Penny','U13');
  insert into Villa values ('Vil4','Kiki','U11');
  insert into Villa values ('Vil5','Vivi','U11');
  insert into Villa values ('Vil6','Gigi','U11');
  insert into Villa values ('Vil7','Kitty','U12');
  insert into Villa values ('Vil8','Ellie','U13');
  insert into Villa values ('Vil9','Ali','U14');
  insert into Villa values ('Vil10','Kelley','U12');
  insert into Villa values ('Vil11','Dori','U12');
  insert into Villa values ('Vil12','Houti','U13');
  
insert into Review values ('Rev1','U1','Vil1','Poor maintainance considering the price.',2);
insert into Review values ('Rev2','U2','Vil3','Boring and Dull',1);
insert into Review values ('Rev3','U4','Vil6','Love it!',4);
insert into Review values ('Rev4','U2','Vil1','Best vila error',2);	
insert into Review values ('Rev5','U7','Vil1','Though not clean, has fantastic scenery around it',3);
insert into Review values ('Rev6','U5','Vil2','not recommended',1);
insert into Review values ('Rev7','U6','Vil1','Good one',4);
insert into Review values ('Rev8','U4','Vil4','I gonna rent again and again',5);
insert into Review values ('Rev9','U9','Vil3','Good work',5);
insert into Review values ('Rev10','U3','Vil9','A must visit villa',5);
insert into Review values ('Rev11','U10','Vil8','Nice',1);
insert into Review values ('Rev13','U6','Vil7','poor one',1);
insert into Review values ('Rev14','U1','Vil7','popular one',4);
insert into Review values ('Rev15','U7','Vil3','wanna go back!',5);

    insert into Villa_To_VillaFeatures values ('Vil1','Fea1');
    insert into Villa_To_VillaFeatures values ('Vil1','Fea2');
    insert into Villa_To_VillaFeatures values ('Vil2','Fea1');
    insert into Villa_To_VillaFeatures values ('Vil3','Fea1');
    insert into Villa_To_VillaFeatures values ('Vil3','Fea4');
    insert into Villa_To_VillaFeatures values ('Vil3','Fea5');
    insert into Villa_To_VillaFeatures values ('Vil4','Fea2');
    insert into Villa_To_VillaFeatures values ('Vil5','Fea4');
    insert into Villa_To_VillaFeatures values ('Vil6','Fea6');
    insert into Villa_To_VillaFeatures values ('Vil7','Fea3');
    insert into Villa_To_VillaFeatures values ('Vil7','Fea4');
    insert into Villa_To_VillaFeatures values ('Vil7','Fea5');  
    insert into Villa_To_VillaFeatures values ('Vil7','Fea6');   
    insert into Villa_To_VillaFeatures values ('Vil8','Fea6');
    insert into Villa_To_VillaFeatures values ('Vil9','Fea5');
    insert into Villa_To_VillaFeatures values ('Vil10','Fea5');
    insert into Villa_To_VillaFeatures values ('Vil11','Fea2');
    insert into Villa_To_VillaFeatures values ('Vil12','Fea2');
    
    insert into Reservation values ('Res1','U1','Vil1','02-01-2013','04-01-2013','',50);
insert into Reservation values ('Res2','U7','Vil2','05-01-2013','06-01-2013','',30);
insert into Reservation values ('Res3','U2','Vil3','03-02-2013','07-02-2013','',60);
insert into Reservation values ('Res4','U4','Vil4','04-02-2013','05-02-2013','',39);
insert into Reservation values ('Res5','U4','Vil5','06-03-2013','12-03-2013','',40);
insert into Reservation values ('Res6','U4','Vil6','23-04-2013','25-04-2013','',42);
insert into Reservation values ('Res7','U6','Vil7','29-05-2013','01-06-2013','',60);
insert into Reservation values ('Res8','U10','Vil8','30-07-2013','02-08-2013','',100);
insert into Reservation values ('Res9','U3','Vil9','11-08-2013','12-08-2013','',24);
insert into Reservation values ('Res10','U2','Vil10','19-08-2013','21-08-2013','',75);
insert into Reservation values ('Res11','U5','Vil11','15-08-2013','17-08-2013','',51);
insert into Reservation values ('Res12','U6','Vil12','27-08-2013','28-08-2013','',33);
insert into Reservation values ('Res13','U2','Vil1','01-09-2013','03-09-2013','',40);
insert into Reservation values ('Res14','U5','Vil2','02-09-2013','03-09-2013','',25);
insert into Reservation values ('Res15','U9','Vil3','15-09-2013','20-09-2013','Coup3',36);
insert into Reservation values ('Res16','U5','Vil4','01-10-2013','03-10-2013','Coup4',27);
insert into Reservation values ('Res17','U4','Vil5','15-10-2013','16-10-2013','',24);
insert into Reservation values ('Res18','U5','Vil6','02-11-2013','04-11-2013','',30);
insert into Reservation values ('Res19','U10','Vil7','06-11-2013','07-11-2013','',50);
insert into Reservation values ('Res20','U9','Vil8','06-11-2013','10-11-2013','',60);
insert into Reservation values ('Res21','U4','Vil9','10-11-2013','13-11-2013','',15);
insert into Reservation values ('Res22','U4','Vil10','11-11-2013','13-11-2013','',60);
insert into Reservation values ('Res23','U6','Vil11','01-12-2013','04-12-2013','',40);
insert into Reservation values ('Res24','U5','Vil12','23-12-2013','26-12-2013','',30);
insert into Reservation values ('Res25','U7','Vil1','12-01-2014','15-01-2014','Coup1',48);
insert into Reservation values ('Res26','U9','Vil2','06-01-2014','07-01-2014','Coup2',34);
insert into Reservation values ('Res27','U6','Vil2','05-02-2014','09-02-2014','',40);
insert into Reservation values ('Res28','U5','Vil5','09-02-2014','15-02-2014','',50);
insert into Reservation values ('Res29','U4','Vil8','18-03-2014','19-03-2014','',120);
insert into Reservation values ('Res30','U2','Vil4','27-04-2014','30-04-2014','',50);
insert into Reservation values ('Res31','U4','Vil10','29-05-2014','01-06-2014','',96);
insert into Reservation values ('Res32','U9','Vil12','28-07-2014','02-08-2014','',42);
insert into Reservation values ('Res33','U9','Vil7','11-08-2014','12-08-2014','',75);
insert into Reservation values ('Res34','U7','Vil4','15-08-2014','21-08-2014','',50);
insert into Reservation values ('Res35','U8','Vil8','13-08-2014','17-08-2014','',120);
insert into Reservation values ('Res36','U3','Vil2','27-08-2014','28-08-2014','',40);
insert into Reservation values ('Res37','U2','Vil11','20-06-2014','23-06-2014','',70);
insert into Reservation values ('Res38','U1','Vil2','28-08-2014','30-08-2014','',40);
insert into Reservation values ('Res39','U9','Vil1','10-04-2014','15-04-2014','',60);
insert into Reservation values ('Res40','U9','Vil7','05-02-2014','09-02-2014','',75);
insert into Reservation values ('Res41','U8','Vil7','19-02-2014','15-02-2014','',75);
insert into Reservation values ('Res42','U5','Vil7','18-03-2014','19-03-2014','',75);
insert into Reservation values ('Res43','U6','Vil1','12-05-2014','13-05-2014','Coup5',51);
  
  insert into Villa_Rate values ('Rat1','Vil1','','31-08-2013',150);
insert into Villa_Rate values ('Rat2','Vil2','','31-08-2013',100);
insert into Villa_Rate values ('Rat3','Vil3','','31-08-2013',200);
insert into Villa_Rate values ('Rat4','Vil4','','31-08-2013',130);
insert into Villa_Rate values ('Rat5','Vil5','','31-08-2013',120);
insert into Villa_Rate values ('Rat6','Vil6','','31-08-2013',140);
insert into Villa_Rate values ('Rat7','Vil7','','31-08-2013',180);
insert into Villa_Rate values ('Rat8','Vil8','','31-08-2013',300);
insert into Villa_Rate values ('Rat9','Vil9','','31-08-2013',80);
insert into Villa_Rate values ('Rat10','Vil10','','31-08-2013',250);
insert into Villa_Rate values ('Rat11','Vil11','','31-08-2013',170);
insert into Villa_Rate values ('Rat12','Vil12','','31-08-2013',110);
insert into Villa_Rate values ('Rat13','Vil1','','31-12-2013',120);
insert into Villa_Rate values ('Rat14','Vil2','','31-12-2013',75);
insert into Villa_Rate values ('Rat15','Vil3','','31-12-2013',160);
insert into Villa_Rate values ('Rat16','Vil4','','31-12-2013',90);
insert into Villa_Rate values ('Rat17','Vil5','','31-12-2013',80);
insert into Villa_Rate values ('Rat18','Vil6','','31-12-2013',100);
insert into Villa_Rate values ('Rat19','Vil7','','31-12-2013',150);
insert into Villa_Rate values ('Rat20','Vil8','','31-12-2013',200);
insert into Villa_Rate values ('Rat21','Vil9','','31-12-2013',50);
insert into Villa_Rate values ('Rat22','Vil10','','31-12-2013',200);
insert into Villa_Rate values ('Rat23','Vil11','','31-12-2013',120);
insert into Villa_Rate values ('Rat24','Vil12','','31-12-2013',90);
insert into Villa_Rate values ('Rat25','Vil1','','31-08-2014',180);
insert into Villa_Rate values ('Rat26','Vil2','','31-08-2014',120);
insert into Villa_Rate values ('Rat27','Vil3','','31-08-2014',240);
insert into Villa_Rate values ('Rat28','Vil4','','31-08-2014',150);
insert into Villa_Rate values ('Rat29','Vil5','','31-08-2014',150);
insert into Villa_Rate values ('Rat30','Vil6','','31-08-2014',180);
insert into Villa_Rate values ('Rat31','Vil7','','31-08-2014',250);
insert into Villa_Rate values ('Rat32','Vil8','','31-08-2014',400);
insert into Villa_Rate values ('Rat33','Vil9','','31-08-2014',110);
insert into Villa_Rate values ('Rat34','Vil10','','31-08-2014',320);
insert into Villa_Rate values ('Rat35','Vil11','','31-08-2014',210);
insert into Villa_Rate values ('Rat36','Vil12','','31-08-2014',140);

insert into Liked_Reviews values ('Rev1','U4');
insert into Liked_Reviews values ('Rev1','U2');
insert into Liked_Reviews values ('Rev1','U3');
insert into Liked_Reviews values ('Rev2','U7');
insert into Liked_Reviews values ('Rev2','U4');
insert into Liked_Reviews values ('Rev3','U8');
insert into Liked_Reviews values ('Rev4','U9');
insert into Liked_Reviews values ('Rev5','U2');
insert into Liked_Reviews values ('Rev5','U4');
insert into Liked_Reviews values ('Rev14','U2');
insert into Liked_Reviews values ('Rev14','U4');
insert into Liked_Reviews values ('Rev14','U6');
insert into Liked_Reviews values ('Rev15','U3');
insert into Liked_Reviews values ('Rev15','U6');
insert into Liked_Reviews values ('Rev15','U7');

insert into Favorite_Villa values ('U1','Vil2');
insert into Favorite_Villa values ('U1','Vil4');
insert into Favorite_Villa values ('U2','Vil8');
insert into Favorite_Villa values ('U3','Vil10');
insert into Favorite_Villa values ('U3','Vil3');
insert into Favorite_Villa values ('U3','Vil7');
insert into Favorite_Villa values ('U4','Vil10');
insert into Favorite_Villa values ('U4','Vil4');
insert into Favorite_Villa values ('U5','Vil1');
insert into Favorite_Villa values ('U6','Vil3');
insert into Favorite_Villa values ('U7','Vil2');
insert into Favorite_Villa values ('U7','Vil4');
insert into Favorite_Villa values ('U7','Vil12');
insert into Favorite_Villa values ('U8','Vil1');
insert into Favorite_Villa values ('U8','Vil9');
insert into Favorite_Villa values ('U9','Vil6');
insert into Favorite_Villa values ('U10','Vil11');
insert into Favorite_Villa values ('U13','Vil1');
insert into Favorite_Villa values ('U14','Vil2');

insert into Coupon values ('Coup1','Vil1','','31-01-2014',20);
insert into Coupon values ('Coup2','Vil2','','31-12-2013',15);	
insert into Coupon values ('Coup3','Vil3','','31-12-2013',25);	
insert into Coupon values ('Coup4','Vil4','','31-12-2013',10);	
insert into Coupon values ('Coup5','Vil1','','31-08-2014',15);	
																															
insert into Manager values ('U14','');
insert into Manager values ('U15','U14');
 