--------------------------------------------------------
--  파일이 생성됨 - 목요일-9월-14-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTOR
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."ACTOR" 
   (	"ACT_NO" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"IMG" VARCHAR2(100 BYTE), 
	"REG_DATE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIR_REL
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."DIR_REL" 
   (	"MOV_NO" NUMBER, 
	"DIR_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIRECTOR
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."DIRECTOR" 
   (	"DIR_NO" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"IMG" VARCHAR2(100 BYTE), 
	"REG_DATE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GE_REL
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."GE_REL" 
   (	"MOV_NO" NUMBER, 
	"GEN_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GENRE
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."GENRE" 
   (	"GEN_NO" NUMBER, 
	"NAME" VARCHAR2(20 BYTE), 
	"REG_DATE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOPE_MOV
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."HOPE_MOV" 
   (	"ID" VARCHAR2(10 BYTE), 
	"MOV_NO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MA_REL
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."MA_REL" 
   (	"MOV_NO" NUMBER, 
	"ACT_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."MEMBER" 
   (	"ID" VARCHAR2(30 BYTE), 
	"PW" VARCHAR2(30 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"IMG" VARCHAR2(100 BYTE), 
	"REG_DATE" VARCHAR2(20 BYTE), 
	"MOD_DATE" VARCHAR2(20 BYTE), 
	"GRADE" VARCHAR2(20 BYTE), 
	"TOKEN" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIE_FREE
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."MOVIE_FREE" 
   (	"MOV_NO" NUMBER, 
	"TITLE" VARCHAR2(50 BYTE), 
	"SUMMARY" VARCHAR2(1000 BYTE), 
	"HIT" NUMBER, 
	"REG_DATE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIE_INFO
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."MOVIE_INFO" 
   (	"MOV_NO" NUMBER, 
	"TITLE" VARCHAR2(50 BYTE), 
	"TRAILER" VARCHAR2(100 BYTE), 
	"POSTER" VARCHAR2(100 BYTE), 
	"RELEASE" VARCHAR2(20 BYTE), 
	"RTIME" VARCHAR2(50 BYTE), 
	"GRADE" VARCHAR2(20 BYTE), 
	"ATTD" NUMBER, 
	"SUMMARY" VARCHAR2(1000 BYTE), 
	"REG_DATE" VARCHAR2(20 BYTE), 
	"MOD_DATE" VARCHAR2(20 BYTE), 
	"COUNTRY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOVIE_REVIEW
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."MOVIE_REVIEW" 
   (	"MOV_NO" NUMBER, 
	"TITLE" VARCHAR2(50 BYTE), 
	"POSTER" VARCHAR2(100 BYTE), 
	"SUMMARY" VARCHAR2(1000 BYTE), 
	"REG_DATE" VARCHAR2(20 BYTE), 
	"MOD_DATE" VARCHAR2(20 BYTE), 
	"ID" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RAT_REL
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."RAT_REL" 
   (	"MOV_NO" NUMBER, 
	"ID" VARCHAR2(10 BYTE), 
	"RAT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SA_REL
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."SA_REL" 
   (	"MOV_NO" NUMBER, 
	"ACT_NO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEEN_MOV
--------------------------------------------------------

  CREATE TABLE "MOVIERJH"."SEEN_MOV" 
   (	"ID" VARCHAR2(10 BYTE), 
	"MOV_NO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into MOVIERJH.ACTOR
SET DEFINE OFF;
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (101,'안젤리나졸리','anzelinazoli.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (61,'강성수','captivating_eyes_joakj.jpg','17/07/28');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (83,'봉준호','tn_DSHT047711.JPG','17/08/17');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (102,'브레드피트','breadpit.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (103,'크리스찬베일','christianbeil.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (104,'디카프리오','dicaprio.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (105,'드웨인존슨','dweinjohnson.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (106,'엠마왓슨','emmawatson.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (107,'펠트로','feltro.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (108,'짐케리','gymcarry.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (109,'휴잭맨','jackman.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (110,'제니퍼','jenniper.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (111,'스칼렛요한슨','johanson.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (112,'조니뎁','jonnydep.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (113,'마릴린먼로','munlro.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (115,'로한','rohan.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (116,'테론','teron.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (117,'톰크르주','tomcruse.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (118,'윌스미스','willsmith.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (119,'메간폭스','meganfox.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (20,'김선아','kimsuna.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (21,'손예진','sonyejin.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (22,'문근영','moon.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (23,'하지원','haziwon.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (24,'김윤진','kimyoonjin.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (25,'전지현','junjihyun.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (26,'임수정','imsujung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (27,'안성기','ansungki.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (28,'정우성','jungwoosung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (29,'공유','share.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (30,'권상우','kwonsangwoo.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (31,'강지환','kangjihwan.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (32,'김래원','kimlaewon.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (33,'김동완','kimdongwan.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (34,'김남길','kimnamgill.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (35,'김상호','kimsangho.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (36,'감우성','kamwoosung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (37,'김상경','kimsangkyung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (38,'김성균','kimsungkyeun.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (39,'고창석','gochangsuk.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (40,'김보성','kimbosung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (41,'김병옥','kimbyungock.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (81,'testtest','kimbosung.jpg','17/08/17');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (82,'pp','vcredist.bmp','17/08/17');
REM INSERTING into MOVIERJH.DIR_REL
SET DEFINE OFF;
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (52,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (53,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (54,14);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (54,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (55,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (56,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (57,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (58,16);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (59,16);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (60,17);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (61,17);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (62,19);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (63,25);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (64,25);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (65,25);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (66,25);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (67,27);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (68,27);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (69,27);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (70,29);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (71,29);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (72,34);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (73,35);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (74,35);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (81,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (101,31);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (102,41);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (103,27);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (104,47);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (105,48);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (106,46);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (107,27);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (108,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (109,51);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (110,44);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (111,30);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (112,47);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (113,52);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (114,14);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (115,15);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (116,25);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (117,52);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (118,31);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (119,51);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (120,52);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (121,52);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (122,52);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (123,41);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (124,47);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (125,44);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (126,51);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (127,23);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (128,34);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (129,48);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (130,48);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (131,25);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (131,31);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (132,52);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (133,48);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (134,51);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (135,14);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (136,47);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (137,18);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (138,11);
Insert into MOVIERJH.DIR_REL (MOV_NO,DIR_NO) values (139,46);
REM INSERTING into MOVIERJH.DIRECTOR
SET DEFINE OFF;
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (15,'강제규','tn_DSHT048446.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (14,'강우석','tn_DSHT048400.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (16,'곽재용','tn_DSHT049287.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (17,'곽경택','tn_DSHT048404.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (18,'구임서','tn_00010815_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (19,'김기덕','tn_DSHT047848.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (20,'김성수','tn_DSHT046969.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (21,'김응수','tn_DSHT049706.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (22,'김정일',null,'17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (23,'김혁','tn_00001668_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (24,'노진섭','tn_00001315_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (25,'류승완','tn_DSHT048461.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (26,'민병천','tn_DSHT048910.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (27,'박찬욱','tn_DSHT047846.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (28,'박호태','tn_DSHT049781.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (29,'봉준호','tn_DSHT047711.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (30,'서세원','tn_DSHT048923.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (31,'신성일','tn_DSHT047932.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (32,'심형래','tn_DSHT049794.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (33,'유영진','tn_00001747_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (34,'이경규','tn_DSKT099413.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (35,'임권택','tn_DSHT047713.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (36,'임종재','tn_DSHT050405.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (37,'정진수','tn_DSHT050424.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (38,'홍성기','tn_DSHT048342.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (41,'팀 버튼','timburton.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (42,'고어 버빈스키','gore.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (44,'데이빗 예이츠','david.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (46,'마이클 베이','michaelbay.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (47,'제임스 카메론','jamescameron.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (48,'피터 잭슨','peterjackson.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (51,'크리스토퍼','nolan2.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (52,'스필버그','spielberg1.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (39,'df',null,'17/07/26');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (11,'최동훈','choidonghun.jpg','17/07/25');
REM INSERTING into MOVIERJH.GE_REL
SET DEFINE OFF;
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (52,45);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (52,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (53,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (53,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (54,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (55,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (55,45);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (55,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (56,42);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (56,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (57,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (57,42);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (58,42);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (58,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (59,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (59,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (60,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (61,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (61,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (62,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (62,51);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (63,36);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (64,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (64,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (65,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (65,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (66,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (66,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (67,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (67,45);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (68,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (68,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (69,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (69,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (70,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (70,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (71,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (71,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (72,42);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (72,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (73,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (74,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (74,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (81,52);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (101,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (101,52);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (101,53);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (102,45);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (102,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (103,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (104,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (104,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (105,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (105,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (106,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (106,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (106,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (107,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (107,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (108,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (108,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (108,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (109,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (109,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (109,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (110,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (111,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (111,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (112,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (112,52);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (113,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (113,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (114,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (114,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (115,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (115,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (116,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (116,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (117,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (117,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (118,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (118,51);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (119,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (119,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (119,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (120,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (120,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (121,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (121,51);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (122,52);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (123,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (124,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (124,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (125,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (125,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (126,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (126,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (127,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (127,42);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (127,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (128,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (128,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (129,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (129,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (130,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (130,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (131,40);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (131,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (131,44);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (132,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (132,45);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (132,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (133,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (133,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (134,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (134,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (135,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (136,41);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (136,43);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (137,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (137,48);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (138,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (138,47);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (139,46);
Insert into MOVIERJH.GE_REL (MOV_NO,GEN_NO) values (139,47);
REM INSERTING into MOVIERJH.GENRE
SET DEFINE OFF;
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (52,'다큐멘터리','17/07/28');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (53,'멜로판타지','17/07/28');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (36,'느와르영화','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (40,'범죄','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (41,'드라마','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (42,'코미디','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (43,'로멘스','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (44,'스릴러','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (45,'전쟁','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (46,'판타지','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (47,'액션','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (48,'SF','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (49,'애니메이션','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (51,'공포','17/07/26');
REM INSERTING into MOVIERJH.HOPE_MOV
SET DEFINE OFF;
REM INSERTING into MOVIERJH.MA_REL
SET DEFINE OFF;
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (52,33);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (52,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (53,35);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (53,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (54,20);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (54,24);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (55,20);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (55,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (55,32);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (55,37);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (56,22);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (56,23);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (56,33);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (57,28);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (57,34);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (58,25);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (58,27);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (59,21);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (59,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (59,38);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (60,21);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (60,37);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (61,24);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (61,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (62,28);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (62,38);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (63,21);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (63,27);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (63,34);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (63,37);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (64,27);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (64,34);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (65,38);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (65,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (66,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (66,32);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (67,27);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (67,31);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (68,29);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (68,34);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (69,20);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (70,21);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (70,22);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (70,24);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (70,32);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (71,26);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (71,31);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (71,33);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (71,36);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (71,37);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (71,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (72,32);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (72,37);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (73,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (73,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (74,35);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (74,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (81,28);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (81,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (101,28);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (101,29);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (101,39);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (102,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (102,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (102,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (103,30);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (103,32);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (103,40);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (104,109);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (104,116);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (104,117);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (104,119);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (105,104);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (105,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (105,112);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (106,108);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (106,110);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (106,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (107,36);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (107,61);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (107,101);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (107,110);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (108,103);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (108,110);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (109,103);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (109,104);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (109,105);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (109,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (110,105);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (110,117);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (111,25);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (111,26);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (111,31);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (112,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (113,115);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (113,119);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (114,24);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (114,25);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (114,34);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (114,40);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (115,101);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (115,105);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (116,25);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (116,40);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (117,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (117,109);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (117,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (117,116);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (118,83);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (118,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (119,104);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (119,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (120,103);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (120,110);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (120,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (120,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (121,103);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (121,117);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (122,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (122,108);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (122,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (123,61);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (123,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (124,106);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (124,109);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (124,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (125,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (126,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (126,104);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (126,115);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (127,26);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (127,61);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (128,33);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (128,36);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (128,40);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (129,102);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (129,116);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (130,35);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (130,107);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (130,116);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (130,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (131,36);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (131,41);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (131,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (132,104);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (132,115);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (132,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (133,111);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (133,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (134,103);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (134,118);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (135,28);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (136,104);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (136,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (137,61);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (137,106);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (138,113);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (138,119);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (139,109);
Insert into MOVIERJH.MA_REL (MOV_NO,ACT_NO) values (139,115);
REM INSERTING into MOVIERJH.MEMBER
SET DEFINE OFF;
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('nodias','444444','강성수',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test4','111','테스터',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test5','555','tester',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('park','123456d','박진현',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test2','123','테스터2',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test3','123','테스터3',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('admin2','444444','강성수',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('asdd','asd','asd',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('qweqwe','qweqwe','qweqwe',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test6','ttt','test',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('admin','444444','admin',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test','1234','테스트',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('nodias@naver.com','123123','강성수',null,null,null,null,'fdqqgidn7t4cccu42iuvon57kh');
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test7','132','테스터7',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test8','12','test8',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test9','33','t9',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test10','33','33',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test11','22','32',null,null,null,null,null);
REM INSERTING into MOVIERJH.MOVIE_FREE
SET DEFINE OFF;
REM INSERTING into MOVIERJH.MOVIE_INFO
SET DEFINE OFF;
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (63,'짝패','https://youtu.be/rNUoq8cbPDw','zzackpae.PNG','2006','152','12세',4500000,'2005년 온성. 서울에서 형사생활을 하던 태수는 어린 시절 죽마고우 왕재의 부음을 듣고 십여 년 만에 고향을 찾는다. 그는 장례식장에서 필호와 석환, 동환과 재회한다. 왕재의 갑작스런 죽음에 의문을 품은 태수는 서울행을 잠시 보류하고 며칠 더 고향에 남기로 한다.','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (64,'베를린','https://youtu.be/GLyq0_4L7Ho','barillin.PNG','2012','120분','15세',5448300,'거대한 국제적 음모가 숨겨진 운명의 도시 베를린. 그 곳에 상주하는 국정원 요원 정진수는 불법무기거래장소를 감찰하던 중 국적불명, 지문마저 감지되지 않는 일명 ‘고스트’ 비밀요원 표종성의 존재를 알게 된다. 그의 정체를 밝혀내기 위해 뒤를 쫓던 정진수는 그 배후에 숨겨진 엄청난 국제적 음모를 알게 되면서 걷잡을 수 없는 위기에 빠진다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (65,'부당거래','https://youtu.be/FLCzAJx32mw','budang.PNG','2010','119','19세',6800000,'온 국민을 충격으로 몰아넣은 연쇄 살인 사건. 계속된 검거 실패로 대통령이 직접 사건에 개입하고, 수사 도중 유력한 용의자가 사망하는 사고가 발생하자 경찰청은 마지막 카드를 꺼내든다. ','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (66,'주먹이 운다','https://youtu.be/VoUfe5jCsVs','jumuckcry.PNG','2005','134분','15세',685000,'왕년엔 복싱스타. 지금은 매맞는 남자. 이제 더 이상 물러설 곳이 없다!! 한때 아시안 게임 은메달리스트로 잘 나가던 태식, 현재 그는 길거리 한복판에서 돈을 받고 사람들에게 매맞아 주는 일을 한다.','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (61,'통증','https://youtu.be/NfQWBrMhpCs','pain.PNG','2011','114','19세',1400000,'어릴 적 자신의 실수 때문에 가족을 잃은 죄책감으로 온 몸의 감각을 잃어버린 ‘남순’(권상우). 통증을 못 느끼는 탓에 마음의 상처도, 타인의 고통도 알아채지 못하는 무미건조한 삶을 살던 어느 날, 이상한 여자를 만났다. 본인을 흡혈귀라 부르는 ‘동현’은 한번 피가 나면 멈추지 않아 작은 통증조차 치명적인 여자. ‘남순’은 자신과 극과 극인 고통을 가진 ‘동현’과 점점 가까워지면서 난생 처음 가슴에 지독한 통증을 느끼게 되는데…','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (62,'나쁜남자','https://youtu.be/fshVa16aYgw','badgays1.PNG','2001','115','19세',689875,'사창가의 깡패 두목인 한기(조재현 분)는 길에서 우연히 마주친 여대생 선화(서원 분)를 선망의 시선으로 뚫어지게 쳐다본다. 선화는 허름한 한기를 싸늘하게 쏘아보고, 한기는 홧김에 그녀에게 강제로 키스한다. 선화로부터 심한 모욕을 당한 한기는 계략을 꾸며 그녀를 창녀촌으로 끌어들인다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (67,'공동경비구역JSA','https://youtu.be/0Pebe8arUKU','JSA.PNG','2000','110','15세',4508000,'판문점 공동경비구역 내 돌아오지 않는 다리 북측 초소에서 북한 초소병(신하균 분)이 총상을 입고 살해되는 사건이 발생한다. 사건 이후 북한은 남한의 기습테러공격으로, 남한은 북한의 납치설로 각각 엇갈린 주장을 한다.','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (68,'올드보이','https://youtu.be/2HkjrJ6IK5E','oldboy.PNG','2003','120분','19세',2000000,'술 좋아하고 떠들기 좋아하는 오.대.수. 본인의 이름풀이를 ''오늘만 대충 수습하며 살자''라고 이죽거리는 이 남자는 아내와 어린 딸아이를 가진 지극히 평범한 샐러리맨이다. 어느 날, 술이 거나하게 취해 집에 돌아가는 길에 존재를 알 수 없는 누군가에게 납치, 사설 감금방에 갇히게 되는데','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (69,'싸이보그지만괜찮아',null,'cyborg.PNG','2006','115','12세',300000,'엉뚱한 상상이 가득한 신세계 정신병원. 어느 날, 자기가 싸이보그라고 생각하는 소녀 ‘영군’(임수정)이 이 곳으로 들어온다. 개성 강한 사람들이 머무르는 곳이지만, 여기서도 영군은 유독 눈에 띄는 아이. 형광등, 자판기 등에 말을 거는 영군을 사람들은 이해할 수 없다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (70,'설국열차','https://youtu.be/xVh3bh0N68Q','sulguck.PNG','2013','125','15세',7850000,'기상 이변으로 모든 것이 꽁꽁 얼어붙은 지구. 살아남은 사람들을 태운 기차 한 대가 끝없이 궤도를 달리고 있다. 춥고 배고픈 사람들이 바글대는 빈민굴 같은 꼬리칸, 그리고 선택된 사람들이 술과 마약까지 즐기며 호화로운 객실을 뒹굴고 있는 앞쪽칸. 열차 안의 세상은 결코 평등하지 않다.','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (71,'괴물','https://youtu.be/u2GGvrNo4HI','monster.PNG','2006','119','15세',7800000,'한강 둔치로 오징어 배달을 나간 강두, 우연히 웅성웅성 모여있는 사람들 속에서 특이한 광경을 목격하게 된다. 생전 보도 못한 무언가가 한강다리에 매달려 움직이는 것이다. 사람들','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (72,'복면달호','https://youtu.be/NqkdhZl4Lfs','bockmyeon.PNG','2007','114','12세',1400000,'내일의 락스타를 꿈꾸며 지방 나이트에서 열심히 샤우팅을 내지르던 봉달호(차태현)와 그의 목소리에서 신이 내린 천상의 뽕필(뽕짝의 feel)을 발견한「큰소리 기획」의 장사장(임채무)의 잘못된 만남. 가수 데뷔라는 말에 이성상실, 앞뒤 안 보고 계약서에 도장을 찍어버린 후 달호의 인생은 완','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (73,'취화선','https://youtu.be/q7MDYi6a2sI?t=1','chihwasun.PNG','2002','120분','19세',480000,'1850년대, 청계천 거지 소굴 근처에서 거지패들에게 죽도록 맞고있던 어린 승업(최종성)을 김병문(안성기)이 구해주고 승업은 맞은 내력을 설명하며 김선비에게 그림을 그려보인다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (74,'장군의아들','https://youtu.be/PV_vd6d4-es','janggun.PNG','1990','148분','15세',700000,'8세에 어머니를 잃고 고아가 된 김두한은 각설이 생활을 하다가 타고난 힘으로 우미관을 중심으로 한 종로 주먹계에 소속되고, 이 세계에서 실력을 인정받게 된다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (131,'살인의추억','https://youtu.be/ga8aOMcHRL0','salin.jpg','2003','127','15세',8000000,'1986년 경기도. 젊은 여인이 무참히 강간, 살해당한 시체로 발견된다. 2개월 후, 비슷한 수법의 강간살인사건이 연이어 발생하면서 사건은 세간의 주목을 받기 시작하고, 일대는 연쇄살인이라는 생소한 범죄의 공포에 휩싸인다. 사건 발생지역에 특별수사본부가 설치되고, 수사본부는 구희봉 반장(변희봉)을 필두로 지역토박이 형사 박두만(송강호)과 조용구(김뢰하), 그리고 서울 시경에서 자원해 온 서태윤(김상경)이 배치된다. ','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (132,'라이언일병','https://youtu.be/zwhP5b4tD6g','savingprivateryan.jpg','1998','170','15세',9800000,'1944년 6월 6일 노르망디 상륙 작전. 오마하 해변에 대기하고 있던 병사들은 한치 앞도 내다볼 수 없는 긴장된 상황과 두려움에 무기력함을 감출 수 없었다. 노르망디 해변을 응시하는 밀러 대위(톰 행크스) 그리고 전쟁 중 가장 어려운 임무를 수행해야할 두려움에 지친 그의 대원들. 지옥을 방불케하는 치열한 총격전이 벌어지고 ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (134,'스타워즈','https://youtu.be/38ZdD7ekFUg','starwars.jpg','2005','147','전체연령',1574988,'클론 전쟁이 시작되었던 때로부터 3년이 지나고 팰퍼틴 의장(황제)과 제다이 사이의 불화는 더욱 커져 클론 전쟁은 더 이상 걷잡을 수 없게 격화된다. 자신이 제다이가 될 것임을 굳게 믿고 있던 아나킨은 제다이 기사 자격을 줄 수 없다는 기사단의 결정에 절망하고, 스승인 오비완과의 갈등은 더욱 깊어만 간다. 그런 아나킨에게 자신의 정체를 드러낸 펠퍼틴은 절대적인 힘을 갖게 해 주겠다며','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (133,'스파이더맨','https://youtu.be/FN3YaybNJ2s','spiderman.jpg','2002','121','12세',1878798,'평범하고 내성적인 학생 피터 파커, 그는 우연히 유전자가 조작된 슈퍼거미에 물린다. 그 후, 피터는 손에서 거미줄이 튀어 나오고 벽을 기어 오를 수 있는 거미와 같은 능력을 갖게 된다. 다가오는 위험을 본능적으로 감지하는 초감각과 엄청난 파워까지. 피터는 짝사랑하던 ''메리 제인''의 관심을 끌기 위해 멋','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (135,'택시운전사','https://youtu.be/ZjVK09RDRY0','taxidriver.jpg','2017','128','15세',12000000,'1980년 5월, 서울 택시운전사. “광주? 돈 워리, 돈 워리! 아이 베스트 드라이버” 택시운전사 ''만섭''(송강호)은 외국손님을 태우고 광주에 갔다 통금 전에 돌아오면 밀린 월세를 갚을 수 있는 거금 10만원을 준다는 말에 독일기자 ''피터''(토마스 크레취만)를 태우고 영문도 모른 채 길을 나선다. 광주 그리고 사람들. “모르겄어라,','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (136,'타이타닉','https://youtu.be/zCy5WQ9S4c0','titanic.jpg','1998','140','15세',20000000,'로즈는 사교적인 어머니의 강요로 귀족 집안의 약혼자와 결혼을 앞두고 타이타닉에 승선한다. 한편, 배가 출발하기 바로 전 도박으로 3등석 자리표를 얻은 청년 잭도 친구와 함께 3등석에 승선한다. 로즈에게 반한 잭은 자살하려는 로즈를 구하고, 그것을 계기로 저녁식사에 초대받게되며','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (137,'트랜스포머','https://youtu.be/XnwmUZuF5OY','transpormer.jpg','2007','135','12세',6850483,'인류보다 월등히 뛰어난 지능과 파워를 지닌 외계 생명체 ‘트랜스포머’. 정의를 수호하는 ‘오토봇’ 군단과 악을 대변하는 ‘디셉티콘’ 군단으로 나뉘는 ‘트랜스포머’는 궁극의 에너지원인 ‘큐브’를 차지하기 위해 오랜 전쟁을 벌여왔다. 하지만 행성 폭발로 우주 어딘가로 사라져버린 ‘큐브’. 그들은 오랜 전쟁의 종지부를 찍기 위해 ‘큐브’를 찾아 전 우주를 떠돈다. 인류의 미래를 좌우할 에너지원인 ‘큐브’는 우주를 떠돌다','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (138,'워크래프트','https://youtu.be/XpHgJRHeQfM','warcraft.jpg','2016','120','12세',43917,'두 개의 운명, 하나의 세계.세상의 운명을 건 피할 수 없는 전쟁이 시작된다! 서로 다른 차원에 살고 있던 인간과 오크. 하나의 세계를 차지하기 위한 두 종족의 첫 번째 전쟁이 시작 되는데…','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (139,'엑스맨','https://youtu.be/E78oHkN7jB4','xman.jpg','2000','104','12세',784857,'돌연변이는 인간 진화의 핵심 요소다. 인간을 작은 세포에서 지구상 가장 진화된 종으로 발전시켰다. 그 과정은 매우 느려서 보통 까마득한 시간이 걸린다. 그러나 수백만 년마다 획기적인 진화가 이룩된다.}  사이클롭스, 진 그레이, 스톰은 유전자변이로 탄생한 일종의 ''호모 슈피리어''들로서 각자 특이한 능력을 지니고 있다. 사이클롭스(제임스 마스든 분)는 강력한 에너지 빔을 눈에서 뿜어내고, 진 그레이(팜케 얀','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (102,'300','https://youtu.be/WorI5HPWbpg','300.jpg','2006','116','19세',1500000,'BC 480년. ''크세르크세스'' 왕이 이끄는 페르시아 100만 대군이 그리스를 침공한다. 그리스군의 연합이 지연되자 스파르타의 왕 ''레오니다스(제라드 버틀러)''는 300명의 스파르타 용사들을 이끌고 ''테르모필레 협곡''을 지킨다. 100만 대군과 맞서는 무모한 싸움.','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (103,'아가씨','https://youtu.be/DMa_a7jni8I','aggac.jpg','2016','144','19세',1200000,'어릴 적 부모를 잃고 후견인 이모부(조진웅)의 엄격한 보호 아래 살아가는 귀족 아가씨(김민희). 그녀에게 백작이 추천한 새로운 하녀가 찾아온다. 매일 이모부의 서재에서 책을 읽는 것이 일상의 전부인 외로운 아가씨는 순박해 보이는 하녀에게 조금씩 의지하기 시작한다.','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (104,'아바타','https://youtu.be/cRdxXPV9GNQ','avatar.jpg','2009','162','12세',12000000,'가까운 미래, 지구는 에너지 고갈 문제를 해결하기 위해 머나먼 행성 판도라에서 대체 자원을 채굴하기 시작한다. 하지만 판도라의 독성을 지닌 대기로 인해 자원 획득에 어려움을 겪게 된 인류는 판도라의 토착민 ‘나비(Na’vi)’의 외형에 인간의 의식을 주입, 원격 조종이 가능한 새로운 생명체 ‘아바타’를 탄생시키는 프로그램을 개발한다.','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (105,'어벤져스','https://youtu.be/eOrNdBpGMv8','avengers.jpg','2012','142','12세',8000000,'에너지원 ‘큐브’를 이용한 적의 등장으로 인류가 위험에 처하자 국제평화유지기구인 쉴드(SHIELD)의 국장 닉 퓨리(사무엘 L.잭슨)는 ''어벤져스'' 작전을 위해 전 세계에 흩어져 있던 슈퍼 히어로들을 찾아나선다.','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (106,'벤허','https://youtu.be/g-25RP47UJI','benhar.jpg','1959','192','12세',4000000,'서기 26년, 로마 제국 시대. 유다 벤허(찰톤 헤스톤)는 예루살렘의 제일가는 유태 귀족이다. 어느날 로마의 지배하에 있던 이스라엘에 새로운 총독이 부임해오는데, 신임 총독 일행에 주둔 사령관으로 벤허의 옛친구인 멧살라(스테판 보이드)도 함께 온다. ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (81,'dfd','dfd','890233_0.jpg','232','232','12세',232,'123123232','17/07/28','17/07/28','232');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (101,'7번방의 선물','https://youtu.be/lW0pfdN8htI','7bunbang.jpg','2014','120분','12세',7500000,'최악의 흉악범들이 모인 교도소 7번방에 이상한 놈이 들어왔다. 그는 바로 6살 지능의 딸바보 용구. 평생 죄만 짓고 살아온 7번방 패밀리들에게 떨어진 미션은 바로 용구의 딸 예승이를 외부인 절대 출입금지인 교도소에 반.입.하.는.것. 웃음과 감동 가득한 사상 초유의 합동 작전이 시작된다!','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (107,'복수는나의것','https://youtu.be/xAxQibTt3oA','bocksuismine.jpg','2002','120','19세',486987,'선천성 청각 장애인 류(신하균)에게 누나(임지은)는 유일한 가족이다. 신부전증을 앓고 있는 누나는 병이 악화되어 신장을 이식하지 않으면 얼마 살 수 없다는 진단을 받는다. 누나와 혈액형이 달라 이식 수술이 좌절된 류는 장기밀매단과 접촉해 자신의 신장과 전재산 천 만원을 넘겨주고 누나를 위한 신장을 받기로 한다','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (108,'시빌워','https://youtu.be/hJiY1QhmC7Y','captain.jpg','2016','147','12세',3600000,'어벤져스와 관련된 사고로 부수적인 피해가 일어나자 정부는 어벤져스를 관리하고 감독하는 시스템인 일명 ‘슈퍼히어로 등록제’를 내놓는다. 어벤져스 내부는 정부의 입장을 지지하는 찬성파(팀 아이언맨)와 이전처럼 정부의 개입 없이 자유롭게 인류를 보호해야 한다는 반대파(팀 캡틴)로 나뉘어 대립하기 시작하는데...','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (109,'다크나이트','https://youtu.be/yQ5U8suTUw0','darknight.jpg','2008','152','15세',7000000,'범죄와 부정부패를 제거하여 고담시를 지키려는 배트맨(크리스찬 베일). 그는 ''짐 고든 형사''(게리 올드만)와 패기 넘치는 고담시 지방 검사 ''하비 덴트''(아론 에크하트)와 함께 도시를 범죄 조직으로부터 영원히 구원하고자 한다. 세 명의 의기투합으로 위기에 처한 악당들이 모인 자리에 보라색 양복을 입고 얼굴에 짙게 화장을 한 괴이한 존재가 나타나','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (110,'데드풀','https://youtu.be/wZcfOkcWYbI','deadpool.jpg','2016','107','19세',1800000,'정의감 제로, 책임감 제로, 정신은 인터스텔라급.마블 역사상 가장 매력 터지는 히어로 ‘데드풀’이 온다! 전직 특수부대 출신의 용병 ‘웨이드 윌슨(라이언 레놀즈)’은 암 치료를 위한 비밀 실험에 참여 후, 강력한 힐링팩터를 지닌 슈퍼히어로 ‘데드풀’로 거듭난다. ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (111,'도둑들','https://youtu.be/CJnDTSAyOrw','doductul.jpg','2012','135','15세',9800000,'한 팀으로 활동 중인 한국의 도둑 뽀빠이와 예니콜, 씹던껌, 잠파노. 미술관을 터는데 멋지게 성공한 이들은 뽀빠이의 과거 파트너였던 마카오박이 제안한 홍콩에서의 새로운 계획을 듣게 된다. 여기에 마카오박이 초대하지 않은 손님, 감옥에서 막 출소한 금고털이 팹시가 합류하고','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (112,'ET','https://youtu.be/NHH5pPCeyrs','et.jpg','1982','115','전체연령',3000000,'신비, 환상, 모험... 새롭게 시작되는 감동!어느 한적한 마을의 숲속에 우주선이 나타난다.  우주선에서 내린 외계인들은 지구의 각종 표본들을 채취하던 중 인간들이 나타나자 서둘러 지구를 떠나는데, 그 와중에 뒤쳐진 한 외계인만 홀로 남게 된다. ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (113,'분노의질주','https://youtu.be/BfPSLwxbyfU','fastandfurious.jpg','2013','130','15세',654858,'억만 불이 걸린 한 탕에 성공한 후, 정부의 추적을 피해 전세계를 떠돌던 도미닉(빈 디젤)과 브라이언(폴 워커). 1급 수배자가 되어 고향으로 돌아갈 수 없게 된 그들 앞에 타고난 본능의 베테랑 정부 요원 홉스(드웨인 존슨)가 찾아온다. 전세계에 걸쳐 군 호송 차량을 습격하며 범','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (114,'강철중','https://youtu.be/JYx-YKflBJI','gangchuljung.jpg','2008','127','15세',5000000,'강동서 강력반 꼴통 형사 강철중(설경구). 5년이 지난 지금도 여전히 사건 현장을 누비고 다니지만 15년 차 형사생활에 남은 거라곤 달랑 전세 집 한 칸. 형사라는 직업 때문에 은행에서 전세금 대출받는 것도 여의치 않다. 잘해야 본전 잘 못하면 사망 혹은 병신이 될 수도 있는 빡센 형사생활에 넌더리가 난 그는 급기야 사표를 제출한다.','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (52,'태극기 휘날리며','https://youtu.be/oCRB18wb5Nw','taegukkki.PNG','2003','2시간25분','15세',12000100,'1950년 6월, 서울 종로거리에서 가족의 생계를 책임지기 위해 열심히 살아가는 ‘진태’(장동건)는 힘든 생활 속에도 약혼녀 ‘영신’(이은주)과의 결혼과, 세상에서 가장 소중하게 생각하는 동생 ‘진석’(원빈)의 대학진학을 위해 언제나 활기차고 밝은 생활을 해 나간다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (53,'쉬리','https://youtu.be/RPL0vM71vrc','sheri.PNG','1998','120분','15세',7500000,'국가 일급 비밀정보기관 OP의 특수비밀요원 유중원(한석규 분)과 그의 절친한 동료 요원 이장길(송강호 분). 그들에게 뭔가 중요한 제보를 자청했던 무기밀매상 보스 임봉주가 거리에서 무참히 저격당한다. 저격 현장에 남아 있는 두 발의 탄피, 유중원은 직감적으로 특수 8군단 소속 최고의 저격수 이방희(박은숙 분)의 존재를 감지한다. ','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (54,'은행나무침대',null,'eunhaengnamu.PNG','1996','98분','19세',507801,'석판화가이자 대학 강사인 수현과 외과의사인 선영은 서로 사랑하는 사이다. 그의 일상은 안정돼 보이고 평범했지만 우연히 노천시장에서 은행나무 침대를 만나면서 혼란에 빠져든다. 그에게는 자신도 알지 못한 전생의 사랑이 존재한 것이다. 천년전, 가야금을 연주하는 궁중 악사 종문은 공주 미단과 사랑하는 사이지만 미단 공주는 이미 당대 최고의 무관인 황장군과 결혼하기로 되어있다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (55,'실미도','https://youtu.be/RIa9PmOmG3o','silmido.PNG','2003','135분','15세',11000000,'북으로 간 아버지 때문에 연좌제에 걸려 사회 어느 곳에서도 인간대접 받을 수 없었던 강인찬(설경구 분) 역시 어두운 과거와 함께 뒷골목을 전전하다가 살인미수로 수감된다. 그런 그 앞에 한 군인이 접근, ''나라를 위해 칼을 잡을 수 있겠냐''는 엉뚱한 제안을 던지곤 그저 살인미수일 뿐인 그에게 사형을 언도하는데... 누군가에게 이끌려 사형장으로 향하던 인찬, 그러나 그가 도착한 곳은 인천 외딴 부둣가','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (56,'공공의적','https://youtu.be/DXmjQcqLmkw','gonggongejuck.PNG','2002','138분','19세',3500000,'비오는 한밤, 잠복근무 중이던 철중(설경구)은 전봇대 뒤에서 어쩔 수없이 볼일을 본다. 그 때 철중과 부딪히는 검은 그림자. 철중은 비도 내리고 똥도 묻은 김에, 가차없이 달려가 사내의 뒤통수를 후려친다. ','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (57,'투캅스','https://youtu.be/Z_1FW51Wp58','twocaps.PNG','1993','110분','15세',1200000,'파트너인 김형사와 환락가를 누비고 다니던 조형사(안성기)는 불법영업을 하는 가라오케에 있다가 시경 검찰반의 급습으로 적발당한다. 그러나 눈에 띄게 부를 축척해 둔 김형사는 파면당하지만 서민 아파트에서 가난하게 혼자 살고 있는 조형사는 경고 처분만 받는다.','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (58,'엽기적인그녀','https://youtu.be/A_5eqp70row','yupgijuck.PNG','2001','122분','12세',5405600,'견우는 그녀와 함께 같은 지하철을 타게된다. 취해서 비틀거리지만 않았다면 정말 매력적이고 괜찮아보였던 그녀. 술에 취해서 기대고있는 모습이 귀여워서 힐끔거리며 지켜보다가 그녀가 갑자기 어떤 대머리 아저씨의 머리에다가 구토를 해버리고 만다.','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (59,'클래식','https://youtu.be/Zna3dZczsgk','classic.PNG','2003','132분','12세',708000,'같은 대학에 다니는 지혜(손예진)와 수경(이수인)은 연극반 선배 상민(조인성)을 좋아한다. 하지만 호들갑스런 수경이 상민에게 보낼 편지의 대필을 부탁하고, 지혜는 수경의 이름으로 상민을 향한 자신의 감정을 고백한다','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (60,'친구','https://youtu.be/8O-f9jiYfho','friend.PNG','2001','115분','19세',4802000,'1976년 13살, 호기심 많던 폭력조직의 두목을 아버지로 둔 준석(유오성 분), 가난한 장의사의 아들 동수(장동건 분), 화목한 가정에서 티없이 자란 상택(서태화 분), 밀수업자를 부모님으로 둔 귀여운 감초 중호(정운택 분). 넷은 어딜 가든 함께 했다. 훔친 플레이보이지를 보며 함께 낄낄거렸고','17/07/26','17/07/26','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (115,'바람과함께가다','https://youtu.be/8mM8iNarcRc','gonewiththewind.jpg','1939','187','12세',5948974,'남북 전쟁 전의 미국 남부는 새로운 문명과는 단절 된 채 옛 관습과 전통에 뭍혀 살아가는 아름다운 땅이었다. 북부가 노예 제도를 폐지하고 남부에도 이를 강요하자 남부는 연방을 탈퇴, 남과 북은 전쟁에 휘말리게 된다. 조지아주 타라 농장의 장녀 스칼렛 오하라(비비안 리)는 빼어난 미모와 늠름한 성격으로 청년들의 선망의 대상이 된다. ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (116,'군함도','https://youtu.be/jcltMtps69Y','gunhamdo.jpg','2017','122','15세',6500000,'1945년 일제강점기. 경성 반도호텔 악단장 ‘강옥’(황정민)과 그의 하나뿐인 딸 ‘소희’(김수안). 그리고 종로 일대를 주름잡던 주먹 ‘칠성’(소지섭), 일제 치하에서 온갖 고초를 겪어온 ‘말년’(이정현) 등 각기 다른 사연을 품은 조선인들이 일본에서 돈을 벌 수 있다는 말에 속아 군함도로 향한다. 하지만 ','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (117,'혹성탈출','https://youtu.be/T3tidwW1gGM','hocksung.jpg','2011','156','12세',458574,'과학자 ‘윌 로드만(제임스 프랭코 분)’은 알츠하이머 병에 걸린 아버지(존 리스고 분)를 치료하고자 인간의 손상된 뇌기능을 회복시켜주는 ‘큐어’를 개발한다. 이 약의 임상실험으로 유인원들이 이용되고, 한 유인원에게서 어린 ‘시저(앤디 서키스 분)’가 태어나 ‘윌’은 자신 집에서 ‘시저’를 키우게 된다','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (118,'아이덴티티','https://youtu.be/PCJgswitaag','identity.jpg','2016','157','12세',215793,'23개의 인격을 가진 남자 ‘케빈’(제임스 맥어보이). 그는 언제 누가 등장할지 모르는 인격들 사이를 오가며 유일하게 자신을 이해하는 ‘플래처’ 박사(베티 버클리)에게만 자신의 이야기를 꺼내 놓는다. 어느 날, ‘케빈’은 지금까지 등장한 적 없는 24번째 인격의 지시로 3명의 소녀들을 납치하고 오래도록 계획했던 비밀스러운 일을 꾸민다. 소녀들이 그에게서 도망치려 할수록 ‘케빈’의 인격들은 점차 폭주하기 시작하는데…','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (121,'죠스','https://youtu.be/ucMLFO6TsFM','jaws.jpg','1975','124','12세',787232,'뉴 잉글랜드의 작은 해안 피서지 애미티(Amity). 우정이란 뜻을 가진 이 마을은 아주 평화로운 바닷가 마을로, 전형적인 작은 바닷가 마을이다. 이곳은 여름 피서객들을 상대로 하는 것이 마을 수입의 전부다. 여름이 되어 해수욕장이 막 개장하기에 앞서 한 무리의 젊은이들이 한밤의 백사장에서 캠프파이어를 하며 젊음을 불태우고 있다','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (122,'쥬라기공원','https://youtu.be/QD9A-q2RPl0','jurasicpark.jpg','1993','123','12세',5000000,'코스타리카 서해안의 한 섬에 세워진 테마 파크 ‘쥬라기 공원’. 최신 복제 기술로 살아난 공룡들이 활보하는 이곳에 공룡학자를 비롯한 각계의 전문가가 일반 공개에 앞서 정밀 안전 진단을 위한 투어에 나선다. 그러나 최첨단 컴퓨터 시스템으로 철저히 통제되고 있는 공룡들이 예기치 않은 사고로 폭주하게 되고, 여기에 설상가상으로 태풍까지 몰려오면서 일행들의 투어는 순식간에 생존을 위한 사투의 현장으로 뒤바뀌는데…','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (119,'인셉션','https://youtu.be/RSyQ3K0xnYg','inception.jpg','2010','147','12세',9980000,'드림머신이라는 기계로 타인의 꿈과 접속해 생각을 빼낼 수 있는 미래사회. ‘돔 코브’(레오나르도 디카프리오)는 생각을 지키는 특수보안요원이면서 또한 최고의 실력으로 생각을 훔치는 도둑이다. 우연한 사고로 국제적인 수배자가 된 그는 기업간의 전쟁 덕에 모든 것을 되찾을 수 있는 기회를 얻게 된다. ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (120,'아이언맨','https://youtu.be/KAE5ymVLmZg','ironman.jpg','2008','125','12세',789878,'천재적인 두뇌와 재능으로 세계 최강의 무기업체를 이끄는 CEO이자, 타고난 매력으로 셀러브리티 못지않은 화려한 삶을 살아가던 억만장자 토니 스타크. 아프가니스탄에서 자신이 개발한 신무기 발표를 성공리에 마치고 돌아가던 그는 게릴라군의 갑작스런 공격에 의해 가슴에 치명적인 부상을 입고 납치된다. ','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (123,'쥬라기월드','https://youtu.be/108xilc-LsI','jurasicword.jpg','2015','125','12세',455327,'이슬라 누블라에서 다시 제작된 테마 파크 ''쥬라기 공원'' 이 성공적인 프랜차이즈가 되어 매번 성황을 이루는 곳으로 자리잡는다. 또한 유전학자들은 연구를 바탕으로 하이브리드 공룡을 탄생시킨다. 이 아이디어를 오웬 (크리스 프랫 분)은 반대하고 그의 예상대로 하이브리드 공룡이 울타리를 이탈하면서 공원은 아수라장이 되는데..','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (124,'킹스맨','https://youtu.be/SW6EKneLyCI','kingsman.jpg','2015','128','19세',4500000,'전설적 베테랑 요원 해리 하트(콜린 퍼스)는 경찰서에 구치된 에그시(태런 애거튼)를 구제한다. 탁월한 잠재력을 알아본 그는 에그시를 전설적 국제 비밀정보기구 ‘킹스맨’ 면접에 참여시킨다. 아버지 또한 ‘킹스맨’의 촉망 받는 요원이었으나 해리 하트를 살리기 위해 죽었다는 사실을 알게 된 에그시. 목숨을 앗아갈 만큼 위험천만한 훈련을 통과해야 하는 킹스맨 후보들. 최종 멤버 발탁을 눈 앞에 둔 에그시는 최고의 악당 발렌타인(사무엘 L. 잭슨)을 마주하','17/09/05','17/09/05','영국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (125,'콩','https://youtu.be/JNrpekFKAmE','kong.jpg','2017','118','12세',2200000,'고대의 생명체가 존재한다는 정보를 입수한 구제적인 비밀 과학단체의 의뢰를 받은 탐사팀이 지도에도 없는 미지의 해골섬인 스컬 아일랜드를 찾아 나선다. 탐사팀의 등장으로 그 섬의 주인인 ‘콩’을 깨우게 되고, 설상가상 지하세계에 잠들어 있던 콩의 적들까지도 깨어나는데... 역대급 대결, 누구도 살아나갈 수 없다!','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (126,'메트릭스','https://youtu.be/pcW78sj91Qg','matrix.jpg','1999','126','12세',1857878,'인간의 기억을 지배하는 가상현실, 매트릭스 2199년. 인공 두뇌를 가진 컴퓨터(AI: Artificial Intelligence)가 지배하는 세계에서 인간을 가축처럼 인공 자궁(子宮: 인큐베이터)에서 재배해 에너지원으로 활용하는 끔찍한 시대다. AI에 의해 뇌세포에 ‘매트릭스’라는 프로그램(내용은 1999년의 가상 현실)을 입력당한 인간은, 매트릭스 프로그램','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (127,'미녀는괴로워','https://youtu.be/Cj4ZGKanyJ4','minyo.jpg','2006','120','12세',7000000,'씨름판에 나가도 거뜬할 체격을 가진, 그러나 한 남자에게 사랑받고 싶은 여린 마음의 한나(김아중). 신이 그녀에게 허락한 유일한 선물인 천상의 목소리로 가수를 꿈꾸지만 미녀 가수 ‘아미’의 립싱크에 대신 노래를 불러주는 ‘얼굴 없는 가수’ 신세다. 생계를 위해 밤에는 ‘폰팅 알바’까지 뛰어야 한다. 쉴 틈 없이 혹사당하는 목.','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (128,'내부자들','https://youtu.be/AnacC1N_PK4','naebuza.jpg','2015','130','19세',8605042,'“복수극으로 가자고, 화끈하게”유력한 대통령 후보와 재벌 회장, 그들을 돕는 정치깡패 안상구(이병헌).뒷거래의 판을 짠 이는 대한민국 여론을 움직이는 유명 논설주간 이강희(백윤식)다.더 큰 성공을 원한 안상구는 이들의 비자금 파일로 거래를 준비하다 발각되고,이 일로 폐인이 되어 버려진다.“넌 복수를 원하고, 난 정의를 원한다. 그림 좋잖아?”빽 없고 족보가 없어 늘 승진을 눈 앞에 두고 주저 앉는 검사 우장훈(조승우)','17/09/05','17/09/05','한국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (129,'프로메테우스','https://youtu.be/1uFm9EPiEOw','prometeous.jpg','2012','185','19세',187985,'2085년. 인간이 외계인의 유전자 조작을 통해 탄생한 생명체라는 증거들이 속속 발견되면서 인류의 기원을 찾기 위해 탐사대가 꾸려진다. 우주선 ‘프로메테우스호’를 타고 외계 행성에 도착한 이들은 곧 미지의 생명체와 맞닥뜨리게 되고, 이는 인류 전체를 위협하는 엄청난 공포가 되는데...','17/09/05','17/09/05','미국');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (130,'로건','https://youtu.be/AGEzpLhvXZE','rogun.jpg','2017','117','19세',1269872,'가까운 미래, 능력을 잃어가는 ‘로건(울버린)’은 멕시코 국경 근처의 한 은신처에서 병든 ‘프로페서 X’를 돌보며 살아간다. 세상으로부터 자신을 숨기며 살아가고자 했던 ‘로건’은 정체불명의 집단에게 쫓기는 돌연변이 소녀 ‘로라’를 만나게 되고, 그녀를 지기키 위해 모든 것을 건 대결을 펼치게 되는데…','17/09/05','17/09/05','미국');
REM INSERTING into MOVIERJH.MOVIE_REVIEW
SET DEFINE OFF;
REM INSERTING into MOVIERJH.RAT_REL
SET DEFINE OFF;
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (54,'nodias',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (64,'nodias',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (74,'nodias',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'nodias',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (53,'nodias',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (53,'admin2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'admin2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (56,'admin2',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (64,'admin2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (65,'admin2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (70,'admin2',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (74,'admin2',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (58,'asdd',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (59,'asdd',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (69,'asdd',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (58,'qweqwe',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (59,'qweqwe',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (69,'qweqwe',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'admin',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (55,'admin',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (67,'admin',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'test',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (55,'test',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (67,'test',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (81,'test6',10);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (122,'test7',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (115,'park',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (109,'park',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (54,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (64,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (65,'test3',20);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (72,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (109,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (132,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (139,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (130,'test3',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (71,'test4',40);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (69,'test4',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (66,'test4',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (62,'test4',10);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (119,'test4',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (101,'test4',10);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (124,'test4',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (101,'test6',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (65,'test6',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (68,'test6',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (131,'test6',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (107,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (109,'test6',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (111,'test6',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (113,'test6',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (64,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (67,'test6',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (71,'test6',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (103,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (114,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (121,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (66,'test6',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (70,'test6',30);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (133,'test6',60);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (134,'test6',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (68,'test9',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (62,'park',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (62,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (134,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (137,'test3',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (104,'test3',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (108,'test3',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (112,'test3',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (117,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (120,'test3',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (123,'test3',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (129,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (126,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (119,'test3',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (135,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (115,'test6',20);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (125,'test6',60);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (74,'test6',30);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (132,'test6',40);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (128,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (112,'test6',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (109,'test9',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (101,'test9',30);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (112,'test9',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (101,'test7',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (68,'test7',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (111,'test7',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (109,'test7',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (112,'test7',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (81,'test7',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (63,'test7',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (66,'test8',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (61,'test8',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (122,'test8',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (112,'test8',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (69,'test8',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (101,'test10',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (112,'test10',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (81,'test10',10);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (81,'park',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (55,'park',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (56,'park',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (65,'park',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (66,'park',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (72,'park',60);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'park',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (53,'park',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (52,'test2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (53,'test2',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (54,'test2',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (72,'test2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (104,'test2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (66,'test2',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (55,'test2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (108,'test2',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (113,'test2',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (130,'test2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (110,'test2',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (65,'test4',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (131,'test4',70);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (68,'test4',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (114,'test4',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (72,'test4',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (65,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (68,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (109,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (113,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (128,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (69,'test5',10);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (136,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (58,'test5',50);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (66,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (72,'test5',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (72,'test6',90);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (56,'test6',100);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (122,'test6',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (57,'test6',80);
Insert into MOVIERJH.RAT_REL (MOV_NO,ID,RAT) values (101,'park',40);
REM INSERTING into MOVIERJH.SA_REL
SET DEFINE OFF;
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (52,28);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (52,29);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (52,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (53,27);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (53,32);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (53,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (54,21);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (54,25);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (55,27);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (55,31);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (55,33);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (55,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (56,20);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (56,26);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (56,32);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (56,36);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (57,24);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (57,27);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (57,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (58,29);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (58,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (59,24);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (59,36);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (60,20);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (60,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (61,29);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (61,34);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (61,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (61,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (62,36);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (62,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (63,20);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (63,24);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (63,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (63,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (64,30);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (64,31);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (64,40);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (65,28);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (65,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (65,37);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (66,25);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (66,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (66,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (67,21);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (67,37);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (68,25);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (68,26);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (68,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (68,37);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (68,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (69,23);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (69,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (70,27);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (70,31);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (70,37);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (70,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (71,22);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (71,28);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (71,32);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (71,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (72,27);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (72,30);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (72,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (73,28);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (73,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (73,36);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (74,23);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (74,29);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (74,30);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (81,20);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (101,34);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (101,36);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (101,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (101,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (102,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (102,118);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (102,119);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (103,29);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (103,33);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (103,34);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (103,36);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (103,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (104,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (104,103);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (104,106);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (104,110);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (104,118);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (105,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (105,113);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (106,103);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (106,111);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (106,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (107,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (107,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (108,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (108,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (108,119);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (109,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (109,108);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (110,102);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (110,110);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (110,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (110,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (111,37);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (111,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (111,40);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (112,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (112,116);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (113,111);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (113,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (114,32);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (114,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (114,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (115,102);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (115,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (115,113);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (115,116);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (116,113);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (116,118);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (117,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (117,103);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (117,104);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (117,107);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (117,115);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (117,119);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (118,108);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (118,115);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (119,108);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (119,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (120,30);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (120,104);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (120,107);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (120,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (120,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (120,119);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (121,106);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (121,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (121,116);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (122,106);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (122,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (122,111);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (122,116);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (123,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (123,116);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (123,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (124,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (124,116);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (125,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (126,108);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (126,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (127,39);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (127,40);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (127,106);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (128,33);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (128,34);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (128,35);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (128,38);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (128,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (129,108);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (129,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (129,118);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (130,104);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (130,107);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (130,110);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (130,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (131,21);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (131,29);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (132,25);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (132,102);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (133,107);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (133,109);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (133,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (134,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (134,112);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (134,115);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (135,40);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (136,111);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (136,118);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (137,41);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (137,111);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (137,117);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (138,61);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (138,103);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (138,113);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (139,101);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (139,106);
Insert into MOVIERJH.SA_REL (MOV_NO,ACT_NO) values (139,113);
REM INSERTING into MOVIERJH.SEEN_MOV
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ACTOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_ACTOR" ON "MOVIERJH"."ACTOR" ("ACT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DIR_REL
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_DIR_REL" ON "MOVIERJH"."DIR_REL" ("MOV_NO", "DIR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_DIRECTOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_DIRECTOR" ON "MOVIERJH"."DIRECTOR" ("DIR_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_GE_REL
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_GE_REL" ON "MOVIERJH"."GE_REL" ("MOV_NO", "GEN_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_GENRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_GENRE" ON "MOVIERJH"."GENRE" ("GEN_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_HOPE_MOV
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_HOPE_MOV" ON "MOVIERJH"."HOPE_MOV" ("ID", "MOV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MA_REL
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_MA_REL" ON "MOVIERJH"."MA_REL" ("MOV_NO", "ACT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_MEMBER" ON "MOVIERJH"."MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MOVIE_FREE
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_MOVIE_FREE" ON "MOVIERJH"."MOVIE_FREE" ("MOV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MOVIE_INFO
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_MOVIE_INFO" ON "MOVIERJH"."MOVIE_INFO" ("MOV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MOVIE_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_MOVIE_REVIEW" ON "MOVIERJH"."MOVIE_REVIEW" ("MOV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_RAT_REL
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_RAT_REL" ON "MOVIERJH"."RAT_REL" ("MOV_NO", "ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SA_REL
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_SA_REL" ON "MOVIERJH"."SA_REL" ("MOV_NO", "ACT_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SEEN_MOV
--------------------------------------------------------

  CREATE UNIQUE INDEX "MOVIERJH"."PK_SEEN_MOV" ON "MOVIERJH"."SEEN_MOV" ("ID", "MOV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ACTOR
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."ACTOR" ADD CONSTRAINT "PK_ACTOR" PRIMARY KEY ("ACT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."ACTOR" MODIFY ("ACT_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."ACTOR" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIR_REL
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."DIR_REL" ADD CONSTRAINT "PK_DIR_REL" PRIMARY KEY ("MOV_NO", "DIR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."DIR_REL" MODIFY ("MOV_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."DIR_REL" MODIFY ("DIR_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTOR
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."DIRECTOR" ADD CONSTRAINT "PK_DIRECTOR" PRIMARY KEY ("DIR_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."DIRECTOR" MODIFY ("DIR_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."DIRECTOR" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GE_REL
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."GE_REL" ADD CONSTRAINT "PK_GE_REL" PRIMARY KEY ("MOV_NO", "GEN_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."GE_REL" MODIFY ("MOV_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."GE_REL" MODIFY ("GEN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENRE
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."GENRE" ADD CONSTRAINT "PK_GENRE" PRIMARY KEY ("GEN_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."GENRE" MODIFY ("GEN_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."GENRE" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HOPE_MOV
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."HOPE_MOV" ADD CONSTRAINT "PK_HOPE_MOV" PRIMARY KEY ("ID", "MOV_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."HOPE_MOV" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."HOPE_MOV" MODIFY ("MOV_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MA_REL
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."MA_REL" ADD CONSTRAINT "PK_MA_REL" PRIMARY KEY ("MOV_NO", "ACT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."MA_REL" MODIFY ("MOV_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."MA_REL" MODIFY ("ACT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."MEMBER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIE_FREE
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."MOVIE_FREE" ADD CONSTRAINT "PK_MOVIE_FREE" PRIMARY KEY ("MOV_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."MOVIE_FREE" MODIFY ("MOV_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIE_INFO
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."MOVIE_INFO" ADD CONSTRAINT "PK_MOVIE_INFO" PRIMARY KEY ("MOV_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."MOVIE_INFO" MODIFY ("MOV_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."MOVIE_INFO" MODIFY ("COUNTRY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIE_REVIEW
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."MOVIE_REVIEW" ADD CONSTRAINT "PK_MOVIE_REVIEW" PRIMARY KEY ("MOV_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."MOVIE_REVIEW" MODIFY ("MOV_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RAT_REL
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."RAT_REL" ADD CONSTRAINT "PK_RAT_REL" PRIMARY KEY ("MOV_NO", "ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."RAT_REL" MODIFY ("MOV_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."RAT_REL" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SA_REL
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."SA_REL" ADD CONSTRAINT "PK_SA_REL" PRIMARY KEY ("MOV_NO", "ACT_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."SA_REL" MODIFY ("MOV_NO" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."SA_REL" MODIFY ("ACT_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEEN_MOV
--------------------------------------------------------

  ALTER TABLE "MOVIERJH"."SEEN_MOV" ADD CONSTRAINT "PK_SEEN_MOV" PRIMARY KEY ("ID", "MOV_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "MOVIERJH"."SEEN_MOV" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIERJH"."SEEN_MOV" MODIFY ("MOV_NO" NOT NULL ENABLE);
