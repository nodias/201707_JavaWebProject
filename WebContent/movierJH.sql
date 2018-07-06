--------------------------------------------------------
--  ������ ������ - �����-9��-14-2017   
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
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (101,'������������','anzelinazoli.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (61,'������','captivating_eyes_joakj.jpg','17/07/28');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (83,'����ȣ','tn_DSHT047711.JPG','17/08/17');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (102,'�극����Ʈ','breadpit.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (103,'ũ����������','christianbeil.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (104,'��ī������','dicaprio.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (105,'���������','dweinjohnson.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (106,'�����ӽ�','emmawatson.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (107,'��Ʈ��','feltro.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (108,'���ɸ�','gymcarry.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (109,'�����','jackman.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (110,'������','jenniper.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (111,'��Į�����ѽ�','johanson.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (112,'���ϵ�','jonnydep.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (113,'�������շ�','munlro.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (115,'����','rohan.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (116,'�׷�','teron.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (117,'��ũ����','tomcruse.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (118,'�����̽�','willsmith.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (119,'�ް�����','meganfox.jpg','17/09/05');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (20,'�輱��','kimsuna.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (21,'�տ���','sonyejin.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (22,'���ٿ�','moon.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (23,'������','haziwon.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (24,'������','kimyoonjin.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (25,'������','junjihyun.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (26,'�Ӽ���','imsujung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (27,'�ȼ���','ansungki.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (28,'���켺','jungwoosung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (29,'����','share.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (30,'�ǻ��','kwonsangwoo.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (31,'����ȯ','kangjihwan.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (32,'�跡��','kimlaewon.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (33,'�赿��','kimdongwan.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (34,'�賲��','kimnamgill.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (35,'���ȣ','kimsangho.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (36,'���켺','kamwoosung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (37,'����','kimsangkyung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (38,'�輺��','kimsungkyeun.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (39,'��â��','gochangsuk.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (40,'�躸��','kimbosung.jpg','17/07/26');
Insert into MOVIERJH.ACTOR (ACT_NO,NAME,IMG,REG_DATE) values (41,'�躴��','kimbyungock.jpg','17/07/26');
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
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (15,'������','tn_DSHT048446.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (14,'���켮','tn_DSHT048400.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (16,'�����','tn_DSHT049287.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (17,'������','tn_DSHT048404.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (18,'���Ӽ�','tn_00010815_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (19,'����','tn_DSHT047848.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (20,'�輺��','tn_DSHT046969.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (21,'������','tn_DSHT049706.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (22,'������',null,'17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (23,'����','tn_00001668_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (24,'������','tn_00001315_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (25,'���¿�','tn_DSHT048461.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (26,'�κ�õ','tn_DSHT048910.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (27,'������','tn_DSHT047846.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (28,'��ȣ��','tn_DSHT049781.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (29,'����ȣ','tn_DSHT047711.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (30,'������','tn_DSHT048923.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (31,'�ż���','tn_DSHT047932.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (32,'������','tn_DSHT049794.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (33,'������','tn_00001747_photo1.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (34,'�̰��','tn_DSKT099413.jpg','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (35,'�ӱ���','tn_DSHT047713.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (36,'������','tn_DSHT050405.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (37,'������','tn_DSHT050424.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (38,'ȫ����','tn_DSHT048342.JPG','17/07/25');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (41,'�� ��ư','timburton.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (42,'��� ����Ű','gore.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (44,'���̺� ������','david.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (46,'����Ŭ ����','michaelbay.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (47,'���ӽ� ī�޷�','jamescameron.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (48,'���� �轼','peterjackson.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (51,'ũ��������','nolan2.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (52,'���ʹ���','spielberg1.jpg','17/09/05');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (39,'df',null,'17/07/26');
Insert into MOVIERJH.DIRECTOR (DIR_NO,NAME,IMG,REG_DATE) values (11,'�ֵ���','choidonghun.jpg','17/07/25');
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
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (52,'��ť���͸�','17/07/28');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (53,'�����Ÿ��','17/07/28');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (36,'���͸���ȭ','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (40,'����','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (41,'���','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (42,'�ڹ̵�','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (43,'�θེ','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (44,'������','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (45,'����','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (46,'��Ÿ��','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (47,'�׼�','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (48,'SF','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (49,'�ִϸ��̼�','17/07/26');
Insert into MOVIERJH.GENRE (GEN_NO,NAME,REG_DATE) values (51,'����','17/07/26');
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
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('nodias','444444','������',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test4','111','�׽���',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test5','555','tester',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('park','123456d','������',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test2','123','�׽���2',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test3','123','�׽���3',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('admin2','444444','������',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('asdd','asd','asd',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('qweqwe','qweqwe','qweqwe',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test6','ttt','test',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('admin','444444','admin',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test','1234','�׽�Ʈ',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('nodias@naver.com','123123','������',null,null,null,null,'fdqqgidn7t4cccu42iuvon57kh');
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test7','132','�׽���7',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test8','12','test8',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test9','33','t9',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test10','33','33',null,null,null,null,null);
Insert into MOVIERJH.MEMBER (ID,PW,NAME,IMG,REG_DATE,MOD_DATE,GRADE,TOKEN) values ('test11','22','32',null,null,null,null,null);
REM INSERTING into MOVIERJH.MOVIE_FREE
SET DEFINE OFF;
REM INSERTING into MOVIERJH.MOVIE_INFO
SET DEFINE OFF;
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (63,'¦��','https://youtu.be/rNUoq8cbPDw','zzackpae.PNG','2006','152','12��',4500000,'2005�� �¼�. ���￡�� �����Ȱ�� �ϴ� �¼��� � ���� �׸���� ������ ������ ��� �ʿ� �� ���� ������ ã�´�. �״� ��ʽ��忡�� ��ȣ�� ��ȯ, ��ȯ�� ��ȸ�Ѵ�. ������ ���۽��� ������ �ǹ��� ǰ�� �¼��� �������� ��� �����ϰ� ��ĥ �� ���⿡ ����� �Ѵ�.','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (64,'������','https://youtu.be/GLyq0_4L7Ho','barillin.PNG','2012','120��','15��',5448300,'�Ŵ��� ������ ���� ������ ����� ���� ������. �� ���� �����ϴ� ������ ��� �������� �ҹ�����ŷ���Ҹ� �����ϴ� �� �����Ҹ�, �������� �������� �ʴ� �ϸ� ����Ʈ�� ��п�� ǥ������ ���縦 �˰� �ȴ�. ���� ��ü�� �������� ���� �ڸ� �Ѵ� �������� �� ���Ŀ� ������ ��û�� ������ ���� �˰� �Ǹ鼭 ������ �� ���� ���⿡ ������','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (65,'�δ�ŷ�','https://youtu.be/FLCzAJx32mw','budang.PNG','2010','119','19��',6800000,'�� ������ ������� ���Ƴ��� ���� ���� ���. ��ӵ� �˰� ���з� ������� ���� ��ǿ� �����ϰ�, ���� ���� ������ �����ڰ� ����ϴ� ��� �߻����� ����û�� ������ ī�带 �������. ','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (66,'�ָ��� ���','https://youtu.be/VoUfe5jCsVs','jumuckcry.PNG','2005','134��','15��',685000,'�ճ⿣ ���̽�Ÿ. ������ �Ÿ´� ����. ���� �� �̻� ������ ���� ����!! �Ѷ� �ƽþ� ���� ���޴޸���Ʈ�� �� ������ �½�, ���� �״� ��Ÿ� �Ѻ��ǿ��� ���� �ް� ����鿡�� �Ÿ¾� �ִ� ���� �Ѵ�.','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (61,'����','https://youtu.be/NfQWBrMhpCs','pain.PNG','2011','114','19��',1400000,'� �� �ڽ��� �Ǽ� ������ ������ ���� ��å������ �� ���� ������ �Ҿ���� ��������(�ǻ��). ������ �� ������ ſ�� ������ ��ó��, Ÿ���� ���뵵 �˾�ä�� ���ϴ� ���̰����� ���� ��� ��� ��, �̻��� ���ڸ� ������. ������ �����Ͷ� �θ��� ���������� �ѹ� �ǰ� ���� ������ �ʾ� ���� �������� ġ������ ����. ���������� �ڽŰ� �ذ� ���� ������ ���� ���������� ���� ��������鼭 ���� ó�� ������ ������ ������ ������ �Ǵµ���','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (62,'���۳���','https://youtu.be/fshVa16aYgw','badgays1.PNG','2001','115','19��',689875,'��â���� ���� �θ��� �ѱ�(������ ��)�� �濡�� �쿬�� ����ģ ����� ��ȭ(���� ��)�� ������ �ü����� �վ����� �Ĵٺ���. ��ȭ�� �㸧�� �ѱ⸦ �δ��ϰ� ��ƺ���, �ѱ�� ȱ�迡 �׳࿡�� ������ Ű���Ѵ�. ��ȭ�κ��� ���� ����� ���� �ѱ�� �跫�� �ٸ� �׳ฦ â�������� ������δ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (67,'������񱸿�JSA','https://youtu.be/0Pebe8arUKU','JSA.PNG','2000','110','15��',4508000,'�ǹ��� ������񱸿� �� ���ƿ��� �ʴ� �ٸ� ���� �ʼҿ��� ���� �ʼҺ�(���ϱ� ��)�� �ѻ��� �԰� ���صǴ� ����� �߻��Ѵ�. ��� ���� ������ ������ ����׷���������, ������ ������ ��ġ���� ���� ������ ������ �Ѵ�.','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (68,'�õ庸��','https://youtu.be/2HkjrJ6IK5E','oldboy.PNG','2003','120��','19��',2000000,'�� �����ϰ� ����� �����ϴ� ��.��.��. ������ �̸�Ǯ�̸� ''���ø� ���� �����ϸ� ����''��� ���װŸ��� �� ���ڴ� �Ƴ��� � �����̸� ���� ������ ����� ���������̴�. ��� ��, ���� �ų��ϰ� ���� ���� ���ư��� �濡 ���縦 �� �� ���� ���������� ��ġ, �缳 ���ݹ濡 ������ �Ǵµ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (69,'���̺�������������',null,'cyborg.PNG','2006','115','12��',300000,'������ ����� ������ �ż��� ���ź���. ��� ��, �ڱⰡ ���̺��׶�� �����ϴ� �ҳ� ��������(�Ӽ���)�� �� ������ ���´�. ���� ���� ������� �ӹ����� ��������, ���⼭�� ������ ���� ���� ��� ����. ������, ���Ǳ� � ���� �Ŵ� ������ ������� ������ �� ����','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (70,'��������','https://youtu.be/xVh3bh0N68Q','sulguck.PNG','2013','125','15��',7850000,'��� �̺����� ��� ���� �ǲ� ������ ����. ��Ƴ��� ������� �¿� ���� �� �밡 ������ �˵��� �޸��� �ִ�. ��� ����� ������� �ٱ۴�� ��α� ���� ����ĭ, �׸��� ���õ� ������� ���� ������� ���� ȣȭ�ο� ������ �߱��� �ִ� ����ĭ. ���� ���� ������ ���� ������� �ʴ�.','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (71,'����','https://youtu.be/u2GGvrNo4HI','monster.PNG','2006','119','15��',7800000,'�Ѱ� ��ġ�� ��¡�� ����� ���� ����, �쿬�� �������� ���ִ� ����� �ӿ��� Ư���� ������ ����ϰ� �ȴ�. ���� ���� ���� ���𰡰� �Ѱ��ٸ��� �Ŵ޷� �����̴� ���̴�. �����','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (72,'�����ȣ','https://youtu.be/NqkdhZl4Lfs','bockmyeon.PNG','2007','114','12��',1400000,'������ ����Ÿ�� �޲ٸ� ���� ����Ʈ���� ������ �������� �������� ����ȣ(������)�� ���� ��Ҹ����� ���� ���� õ���� ����(��¦�� feel)�� �߰��ѡ�ū�Ҹ� ��ȹ���� �����(��ä��)�� �߸��� ����. ���� ���߶�� ���� �̼����, �յ� �� ���� ��༭�� ������ ������ �� ��ȣ�� �λ��� ��','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (73,'��ȭ��','https://youtu.be/q7MDYi6a2sI?t=1','chihwasun.PNG','2002','120��','19��',480000,'1850���, û��õ ���� �ұ� ��ó���� �����е鿡�� �׵��� �°��ִ� � �¾�(������)�� �躴��(�ȼ���)�� �����ְ� �¾��� ���� ������ �����ϸ� �輱�񿡰� �׸��� �׷����δ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (74,'�屺�ǾƵ�','https://youtu.be/PV_vd6d4-es','janggun.PNG','1990','148��','15��',700000,'8���� ��Ӵϸ� �Ұ� ��ư� �� ������� ������ ��Ȱ�� �ϴٰ� Ÿ�� ������ ��̰��� �߽����� �� ���� �ָ԰迡 �Ҽӵǰ�, �� ���迡�� �Ƿ��� �����ް� �ȴ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (131,'�������߾�','https://youtu.be/ga8aOMcHRL0','salin.jpg','2003','127','15��',8000000,'1986�� ��⵵. ���� ������ ������ ����, ���ش��� ��ü�� �߰ߵȴ�. 2���� ��, ����� ������ �������λ���� ���̾� �߻��ϸ鼭 ����� ������ �ָ��� �ޱ� �����ϰ�, �ϴ�� ��������̶�� ������ ������ ������ �۽��δ�. ��� �߻������� Ư�����纻�ΰ� ��ġ�ǰ�, ���纻�δ� ����� ����(�����)�� �ʵη� ��������� ���� �ڵθ�(�۰�ȣ)�� ���뱸(�����), �׸��� ���� �ð濡�� �ڿ��� �� ������(����)�� ��ġ�ȴ�. ','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (132,'���̾��Ϻ�','https://youtu.be/zwhP5b4tD6g','savingprivateryan.jpg','1998','170','15��',9800000,'1944�� 6�� 6�� �븣���� ��� ����. ������ �غ��� ����ϰ� �ִ� ������� ��ġ �յ� ���ٺ� �� ���� ����� ��Ȳ�� �η��� ��������� ���� �� ������. �븣���� �غ��� �����ϴ� �з� ����(�� ��ũ��) �׸��� ���� �� ���� ����� �ӹ��� �����ؾ��� �η��� ��ģ ���� �����. ������ ������ϴ� ġ���� �Ѱ����� �������� ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (134,'��Ÿ����','https://youtu.be/38ZdD7ekFUg','starwars.jpg','2005','147','��ü����',1574988,'Ŭ�� ������ ���۵Ǿ��� ���κ��� 3���� ������ ����ƾ ����(Ȳ��)�� ������ ������ ��ȭ�� ���� Ŀ�� Ŭ�� ������ �� �̻� ������ �� ���� ��ȭ�ȴ�. �ڽ��� �����̰� �� ������ ���� �ϰ� �ִ� �Ƴ�Ų�� ������ ��� �ڰ��� �� �� ���ٴ� ������ ������ �����ϰ�, ������ ����ϰ��� ������ ���� �� ����. �׷� �Ƴ�Ų���� �ڽ��� ��ü�� �巯�� ����ƾ�� �������� ���� ���� �� �ְڴٸ�','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (133,'�����̴���','https://youtu.be/FN3YaybNJ2s','spiderman.jpg','2002','121','12��',1878798,'����ϰ� �������� �л� ���� ��Ŀ, �״� �쿬�� �����ڰ� ���۵� ���۰Ź̿� ������. �� ��, ���ʹ� �տ��� �Ź����� Ƣ�� ������ ���� ��� ���� �� �ִ� �Ź̿� ���� �ɷ��� ���� �ȴ�. �ٰ����� ������ ���������� �����ϴ� �ʰ����� ��û�� �Ŀ�����. ���ʹ� ¦����ϴ� ''�޸� ����''�� ������ ���� ���� ��','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (135,'�ýÿ�����','https://youtu.be/ZjVK09RDRY0','taxidriver.jpg','2017','128','15��',12000000,'1980�� 5��, ���� �ýÿ�����. ������? �� ����, �� ����! ���� ����Ʈ ����̹��� �ýÿ����� ''����''(�۰�ȣ)�� �ܱ��մ��� �¿�� ���ֿ� ���� ��� ���� ���ƿ��� �и� ������ ���� �� �ִ� �ű� 10������ �شٴ� ���� ���ϱ��� ''����''(�丶�� ũ���븸)�� �¿�� ������ �� ä ���� ������. ���� �׸��� �����. ���𸣰ξ��,','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (136,'Ÿ��Ÿ��','https://youtu.be/zCy5WQ9S4c0','titanic.jpg','1998','140','15��',20000000,'����� �米���� ��Ӵ��� ����� ���� ������ ��ȥ�ڿ� ��ȥ�� �յΰ� Ÿ��Ÿ�п� �¼��Ѵ�. ����, �谡 ����ϱ� �ٷ� �� �������� 3� �ڸ�ǥ�� ���� û�� �赵 ģ���� �Բ� 3��� �¼��Ѵ�. ����� ���� ���� �ڻ��Ϸ��� ��� ���ϰ�, �װ��� ���� ����Ļ翡 �ʴ�ްԵǸ�','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (137,'Ʈ��������','https://youtu.be/XnwmUZuF5OY','transpormer.jpg','2007','135','12��',6850483,'�η����� ������ �پ ���ɰ� �Ŀ��� ���� �ܰ� ����ü ��Ʈ�������ӡ�. ���Ǹ� ��ȣ�ϴ� �����亿�� ���ܰ� ���� �뺯�ϴ� �����Ƽ�ܡ� �������� ������ ��Ʈ�������ӡ��� �ñ��� ���������� ��ť�ꡯ�� �����ϱ� ���� ���� ������ �����Դ�. ������ �༺ ���߷� ���� ��򰡷� ��������� ��ť�ꡯ. �׵��� ���� ������ �����θ� ��� ���� ��ť�ꡯ�� ã�� �� ���ָ� ������. �η��� �̷��� �¿��� ���������� ��ť�ꡯ�� ���ָ� ������','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (138,'��ũ����Ʈ','https://youtu.be/XpHgJRHeQfM','warcraft.jpg','2016','120','12��',43917,'�� ���� ���, �ϳ��� ����.������ ����� �� ���� �� ���� ������ ���۵ȴ�! ���� �ٸ� ������ ��� �ִ� �ΰ��� ��ũ. �ϳ��� ���踦 �����ϱ� ���� �� ������ ù ��° ������ ���� �Ǵµ���','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (139,'������','https://youtu.be/E78oHkN7jB4','xman.jpg','2000','104','12��',784857,'�������̴� �ΰ� ��ȭ�� �ٽ� ��Ҵ�. �ΰ��� ���� �������� ������ ���� ��ȭ�� ������ �������״�. �� ������ �ſ� ������ ���� ����� �ð��� �ɸ���. �׷��� ���鸸 �⸶�� ȹ������ ��ȭ�� �̷�ȴ�.}  ����Ŭ�ӽ�, �� �׷���, ������ �����ں��̷� ź���� ������ ''ȣ�� ���Ǹ���''��μ� ���� Ư���� �ɷ��� ���ϰ� �ִ�. ����Ŭ�ӽ�(���ӽ� ������ ��)�� ������ ������ ���� ������ �վ��, �� �׷���(���� ��','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (102,'300','https://youtu.be/WorI5HPWbpg','300.jpg','2006','116','19��',1500000,'BC 480��. ''ũ����ũ����'' ���� �̲��� �丣�þ� 100�� �뱺�� �׸����� ħ���Ѵ�. �׸������� ������ �������� ���ĸ�Ÿ�� �� ''�����ϴٽ�(����� ��Ʋ��)''�� 300���� ���ĸ�Ÿ ������ �̲��� ''�׸����ʷ� ����''�� ��Ų��. 100�� �뱺�� �¼��� ������ �ο�.','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (103,'�ư���','https://youtu.be/DMa_a7jni8I','aggac.jpg','2016','144','19��',1200000,'� �� �θ� �Ұ� �İ��� �̸��(������)�� ������ ��ȣ �Ʒ� ��ư��� ���� �ư���(�����). �׳࿡�� ������ ��õ�� ���ο� �ϳడ ã�ƿ´�. ���� �̸���� ���翡�� å�� �д� ���� �ϻ��� ������ �ܷο� �ư����� ������ ���̴� �ϳ࿡�� ���ݾ� �����ϱ� �����Ѵ�.','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (104,'�ƹ�Ÿ','https://youtu.be/cRdxXPV9GNQ','avatar.jpg','2009','162','12��',12000000,'����� �̷�, ������ ������ �� ������ �ذ��ϱ� ���� �ӳ��� �༺ �ǵ��󿡼� ��ü �ڿ��� ä���ϱ� �����Ѵ�. ������ �ǵ����� ������ ���� ���� ���� �ڿ� ȹ�濡 ������� �ް� �� �η��� �ǵ����� ������ ������(Na��vi)���� ������ �ΰ��� �ǽ��� ����, ���� ������ ������ ���ο� ����ü ���ƹ�Ÿ���� ź����Ű�� ���α׷��� �����Ѵ�.','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (105,'�����','https://youtu.be/eOrNdBpGMv8','avengers.jpg','2012','142','12��',8000000,'�������� ��ť�ꡯ�� �̿��� ���� �������� �η��� ���迡 ó���� ������ȭ�����ⱸ�� ����(SHIELD)�� ���� �� ǻ��(�繫�� L.�轼)�� ''�����'' ������ ���� �� ���迡 ����� �ִ� ���� ����ε��� ã�Ƴ�����.','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (106,'����','https://youtu.be/g-25RP47UJI','benhar.jpg','1959','192','12��',4000000,'���� 26��, �θ� ���� �ô�. ���� ����(���� �콺��)�� ����췽�� ���ϰ��� ���� �����̴�. ����� �θ��� �����Ͽ� �ִ� �̽��󿤿� ���ο� �ѵ��� �����ؿ��µ�, ���� �ѵ� ���࿡ �ֵ� ��ɰ����� ������ ��ģ���� ����(������ ���̵�)�� �Բ� �´�. ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (81,'dfd','dfd','890233_0.jpg','232','232','12��',232,'123123232','17/07/28','17/07/28','232');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (101,'7������ ����','https://youtu.be/lW0pfdN8htI','7bunbang.jpg','2014','120��','12��',7500000,'�־��� ��ǹ����� ���� ������ 7���濡 �̻��� ���� ���Դ�. �״� �ٷ� 6�� ������ ���ٺ� �뱸. ��� �˸� ���� ��ƿ� 7���� �йи��鿡�� ������ �̼��� �ٷ� �뱸�� �� �����̸� �ܺ��� ���� ���Ա����� �����ҿ� ��.��.��.��.��. ������ ���� ������ ��� ������ �յ� ������ ���۵ȴ�!','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (107,'�����³��ǰ�','https://youtu.be/xAxQibTt3oA','bocksuismine.jpg','2002','120','19��',486987,'��õ�� û�� ����� ��(���ϱ�)���� ����(������)�� ������ �����̴�. �ź������� �ΰ� �ִ� ������ ���� ��ȭ�Ǿ� ������ �̽����� ������ �� �� �� ���ٴ� ������ �޴´�. ������ �������� �޶� �̽� ������ ������ ���� ���иŴܰ� ������ �ڽ��� ����� ����� õ ������ �Ѱ��ְ� ������ ���� ������ �ޱ�� �Ѵ�','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (108,'�ú���','https://youtu.be/hJiY1QhmC7Y','captain.jpg','2016','147','12��',3600000,'������� ���õ� ���� �μ����� ���ذ� �Ͼ�� ���δ� ������� �����ϰ� �����ϴ� �ý����� �ϸ� ����������� ��������� �����´�. ����� ���δ� ������ ������ �����ϴ� ������(�� ���̾��)�� ����ó�� ������ ���� ���� �����Ӱ� �η��� ��ȣ�ؾ� �Ѵٴ� �ݴ���(�� ĸƾ)�� ������ �븳�ϱ� �����ϴµ�...','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (109,'��ũ����Ʈ','https://youtu.be/yQ5U8suTUw0','darknight.jpg','2008','152','15��',7000000,'���˿� �������и� �����Ͽ� ���ø� ��Ű���� ��Ʈ��(ũ������ ����). �״� ''�� ��� ����''(�Ը� �õ常)�� �б� ��ġ�� ���� ���� �˻� ''�Ϻ� ��Ʈ''(�Ʒ� ��ũ��Ʈ)�� �Բ� ���ø� ���� �������κ��� ������ �����ϰ��� �Ѵ�. �� ���� �Ǳ��������� ���⿡ ó�� �Ǵ���� ���� �ڸ��� ����� �纹�� �԰� �󱼿� £�� ȭ���� �� ������ ���簡 ��Ÿ��','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (110,'����Ǯ','https://youtu.be/wZcfOkcWYbI','deadpool.jpg','2016','107','19��',1800000,'���ǰ� ����, å�Ӱ� ����, ������ ���ͽ��ڶ��.���� ����� ���� �ŷ� ������ ����� ������Ǯ���� �´�! ���� Ư���δ� ����� �뺴 �����̵� ����(���̾� ������)���� �� ġ�Ḧ ���� ��� ���迡 ���� ��, ������ �������͸� ���� ��������� ������Ǯ���� �ŵ쳭��. ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (111,'���ϵ�','https://youtu.be/CJnDTSAyOrw','doductul.jpg','2012','135','15��',9800000,'�� ������ Ȱ�� ���� �ѱ��� ���� �Ǻ��̿� ������, �ô���, ���ĳ�. �̼����� �ʹµ� ������ ������ �̵��� �Ǻ����� ���� ��Ʈ�ʿ��� ��ī������ ������ ȫ�ῡ���� ���ο� ��ȹ�� ��� �ȴ�. ���⿡ ��ī������ �ʴ����� ���� �մ�, �������� �� ����� �ݰ����� �սð� �շ��ϰ�','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (112,'ET','https://youtu.be/NHH5pPCeyrs','et.jpg','1982','115','��ü����',3000000,'�ź�, ȯ��, ����... ���Ӱ� ���۵Ǵ� ����!��� ������ ������ ���ӿ� ���ּ��� ��Ÿ����.  ���ּ����� ���� �ܰ��ε��� ������ ���� ǥ������ ä���ϴ� �� �ΰ����� ��Ÿ���� ���ѷ� ������ �����µ�, �� ���߿� ������ �� �ܰ��θ� Ȧ�� ���� �ȴ�. ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (113,'�г�������','https://youtu.be/BfPSLwxbyfU','fastandfurious.jpg','2013','130','15��',654858,'�︸ ���� �ɸ� �� ���� ������ ��, ������ ������ ���� �����踦 ������ ���̴�(�� ����)�� ����̾�(�� ��Ŀ). 1�� �����ڰ� �Ǿ� �������� ���ư� �� ���� �� �׵� �տ� Ÿ�� ������ ���׶� ���� ��� ȩ��(����� ����)�� ã�ƿ´�. �����迡 ���� �� ȣ�� ������ �����ϸ� ��','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (114,'��ö��','https://youtu.be/JYx-YKflBJI','gangchuljung.jpg','2008','127','15��',5000000,'������ ���¹� ���� ���� ��ö��(���汸). 5���� ���� ���ݵ� ������ ��� ������ ����� �ٴ����� 15�� �� �����Ȱ�� ���� �Ŷ�� �޶� ���� �� �� ĭ. ������ ���� ������ ���࿡�� ������ ����޴� �͵� ����ġ �ʴ�. ���ؾ� ���� �� ���ϸ� ��� Ȥ�� ������ �� ���� �ִ� ���� �����Ȱ�� �ʹ����� �� �״� �ޱ�� ��ǥ�� �����Ѵ�.','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (52,'�±ر� �ֳ�����','https://youtu.be/oCRB18wb5Nw','taegukkki.PNG','2003','2�ð�25��','15��',12000100,'1950�� 6��, ���� ���ΰŸ����� ������ ���踦 å������ ���� ������ ��ư��� �����¡�(�嵿��)�� ���� ��Ȱ �ӿ��� ��ȥ�� �����š�(������)���� ��ȥ��, ���󿡼� ���� �����ϰ� �����ϴ� ���� ��������(����)�� ���������� ���� ������ Ȱ������ ���� ��Ȱ�� �� ������','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (53,'����','https://youtu.be/RPL0vM71vrc','sheri.PNG','1998','120��','15��',7500000,'���� �ϱ� ���������� OP�� Ư����п�� ���߿�(�Ѽ��� ��)�� ���� ��ģ�� ���� ��� �����(�۰�ȣ ��). �׵鿡�� ���� �߿��� ������ ��û�ߴ� ����иŻ� ���� �Ӻ��ְ� �Ÿ����� ������ ���ݴ��Ѵ�. ���� ���忡 ���� �ִ� �� ���� ź��, ���߿��� ���������� Ư�� 8���� �Ҽ� �ְ��� ���ݼ� �̹���(������ ��)�� ���縦 �����Ѵ�. ','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (54,'���೪��ħ��',null,'eunhaengnamu.PNG','1996','98��','19��',507801,'����ȭ������ ���� ������ ������ �ܰ��ǻ��� ������ ���� ����ϴ� ���̴�. ���� �ϻ��� ������ ���̰� ��������� �쿬�� ��õ���忡�� ���೪�� ħ�븦 �����鼭 ȥ���� �������. �׿��Դ� �ڽŵ� ���� ���� ������ ����� ������ ���̴�. õ����, ���߱��� �����ϴ� ���� �ǻ� ������ ���� �̴ܰ� ����ϴ� �������� �̴� ���ִ� �̹� ��� �ְ��� ������ Ȳ�屺�� ��ȥ�ϱ�� �Ǿ��ִ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (55,'�ǹ̵�','https://youtu.be/RIa9PmOmG3o','silmido.PNG','2003','135��','15��',11000000,'������ �� �ƹ��� ������ �������� �ɷ� ��ȸ ��� �������� �ΰ����� ���� �� ������ ������(���汸 ��) ���� ��ο� ���ſ� �Բ� �ް���� �����ϴٰ� ���ι̼��� �����ȴ�. �׷� �� �տ� �� ������ ����, ''���� ���� Į�� ���� �� �ְڳ�''�� ������ ������ ������ ���� ���ι̼��� ���� �׿��� ������ ���ϴµ�... ���������� �̲��� ���������� ���ϴ� ����, �׷��� �װ� ������ ���� ��õ �ܵ� �ε԰�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (56,'��������','https://youtu.be/DXmjQcqLmkw','gonggongejuck.PNG','2002','138��','19��',3500000,'����� �ѹ�, �ẹ�ٹ� ���̴� ö��(���汸)�� ������ �ڿ��� ��¿ ������ ������ ����. �� �� ö�߰� �ε����� ���� �׸���. ö���� �� ������ �˵� ���� �迡, �������� �޷��� �系�� ������� �ķ�ģ��. ','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (57,'��İ��','https://youtu.be/Z_1FW51Wp58','twocaps.PNG','1993','110��','15��',1200000,'��Ʈ���� ������� ȯ������ ����� �ٴϴ� ������(�ȼ���)�� �ҹ������� �ϴ� ������ɿ� �ִٰ� �ð� �������� �޽����� ���ߴ��Ѵ�. �׷��� ���� ��� �θ� ��ô�� �� ������� �ĸ�������� ���� ����Ʈ���� �����ϰ� ȥ�� ��� �ִ� ������� ��� ó�и� �޴´�.','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (58,'�������α׳�','https://youtu.be/A_5eqp70row','yupgijuck.PNG','2001','122��','12��',5405600,'�߿�� �׳�� �Բ� ���� ����ö�� Ÿ�Եȴ�. ���ؼ� ��Ʋ�Ÿ����� �ʾҴٸ� ���� �ŷ����̰� �����ƺ����� �׳�. ���� ���ؼ� �����ִ� ����� �Ϳ����� �����Ÿ��� ���Ѻ��ٰ� �׳డ ���ڱ� � ��Ӹ� �������� �Ӹ����ٰ� ���並 �ع����� ����.','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (59,'Ŭ����','https://youtu.be/Zna3dZczsgk','classic.PNG','2003','132��','12��',708000,'���� ���п� �ٴϴ� ����(�տ���)�� ����(�̼���)�� ���ع� ���� ���(���μ�)�� �����Ѵ�. ������ ȣ�鰩���� ������ ��ο��� ���� ������ ������ ��Ź�ϰ�, ������ ������ �̸����� ����� ���� �ڽ��� ������ ����Ѵ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (60,'ģ��','https://youtu.be/8O-f9jiYfho','friend.PNG','2001','115��','19��',4802000,'1976�� 13��, ȣ��� ���� ���������� �θ��� �ƹ����� �� �ؼ�(������ ��), ������ ���ǻ��� �Ƶ� ����(�嵿�� ��), ȭ���� �������� Ƽ���� �ڶ� ����(����ȭ ��), �м����ڸ� �θ������ �� �Ϳ��� ���� ��ȣ(������ ��). ���� ��� ���� �Բ� �ߴ�. ��ģ �÷��̺������� ���� �Բ� �����ŷȰ�','17/07/26','17/07/26','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (115,'�ٶ����Բ�����','https://youtu.be/8mM8iNarcRc','gonewiththewind.jpg','1939','187','12��',5948974,'���� ���� ���� �̱� ���δ� ���ο� ������� ���� �� ä �� ������ ���뿡 ���� ��ư��� �Ƹ��ٿ� ���̾���. �Ϻΰ� �뿹 ������ �����ϰ� ���ο��� �̸� �������� ���δ� ������ Ż��, ���� ���� ���￡ �ָ����� �ȴ�. �������� Ÿ�� ������ ��� ��Į�� ���϶�(���� ��)�� ��� �̸�� �Ƹ��� �������� û����� ������ ����� �ȴ�. ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (116,'���Ե�','https://youtu.be/jcltMtps69Y','gunhamdo.jpg','2017','122','15��',6500000,'1945�� ����������. �漺 �ݵ�ȣ�� �Ǵ��� ��������(Ȳ����)�� ���� �ϳ����� �� ������(�����). �׸��� ���� �ϴ븦 �ָ���� �ָ� ��ĥ����(������), ���� ġ�Ͽ��� �°� ���ʸ� �޾�� �����⡯(������) �� ���� �ٸ� �翬�� ǰ�� �����ε��� �Ϻ����� ���� �� �� �ִٴ� ���� �Ӿ� ���Ե��� ���Ѵ�. ������ ','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (117,'Ȥ��Ż��','https://youtu.be/T3tidwW1gGM','hocksung.jpg','2011','156','12��',458574,'������ ���� �ε常(���ӽ� ������ ��)���� �������̸� ���� �ɸ� �ƹ���(�� ������ ��)�� ġ���ϰ��� �ΰ��� �ջ�� ������� ȸ�������ִ� ��ť��� �����Ѵ�. �� ���� �ӻ�������� ���ο����� �̿�ǰ�, �� ���ο����Լ� � ������(�ص� ��Ű�� ��)���� �¾ �������� �ڽ� ������ ���������� Ű��� �ȴ�','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (118,'���̵�ƼƼ','https://youtu.be/PCJgswitaag','identity.jpg','2016','157','12��',215793,'23���� �ΰ��� ���� ���� ���ɺ�(���ӽ� �ƾ��). �״� ���� ���� �������� �𸣴� �ΰݵ� ���̸� ������ �����ϰ� �ڽ��� �����ϴ� ���÷�ó�� �ڻ�(��Ƽ ��Ŭ��)���Ը� �ڽ��� �̾߱⸦ ���� ���´�. ��� ��, ���ɺ��� ���ݱ��� ������ �� ���� 24��° �ΰ��� ���÷� 3���� �ҳ���� ��ġ�ϰ� �������� ��ȹ�ߴ� ��н����� ���� �ٹδ�. �ҳ���� �׿��Լ� ����ġ�� �Ҽ��� ���ɺ��� �ΰݵ��� ���� �����ϱ� �����ϴµ���','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (121,'�ҽ�','https://youtu.be/ucMLFO6TsFM','jaws.jpg','1975','124','12��',787232,'�� �ױ۷����� ���� �ؾ� �Ǽ��� �ֹ�Ƽ(Amity). �����̶� ���� ���� �� ������ ���� ��ȭ�ο� �ٴ尡 ������, �������� ���� �ٴ尡 �����̴�. �̰��� ���� �Ǽ������� ���� �ϴ� ���� ���� ������ ���δ�. ������ �Ǿ� �ؼ������� �� �����ϱ⿡ �ռ� �� ������ �����̵��� �ѹ��� ����忡�� ķ�����̾ �ϸ� ������ ���¿�� �ִ�','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (122,'�������','https://youtu.be/QD9A-q2RPl0','jurasicpark.jpg','1993','123','12��',5000000,'�ڽ�Ÿ��ī ���ؾ��� �� ���� ������ �׸� ��ũ ������ ������. �ֽ� ���� ����� ��Ƴ� ������� Ȱ���ϴ� �̰��� �������ڸ� ����� ������ �������� �Ϲ� ������ �ռ� ���� ���� ������ ���� ��� ������. �׷��� ��÷�� ��ǻ�� �ý������� ö���� �����ǰ� �ִ� ������� ����ġ ���� ���� �����ϰ� �ǰ�, ���⿡ ���󰡻����� ��ǳ���� �������鼭 ������� ����� ���İ��� ������ ���� ������ �������� �ڹٲ�µ���','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (119,'�μ���','https://youtu.be/RSyQ3K0xnYg','inception.jpg','2010','147','12��',9980000,'�帲�ӽ��̶�� ���� Ÿ���� �ް� ������ ������ ���� �� �ִ� �̷���ȸ. ���� �ںꡯ(���������� ��ī������)�� ������ ��Ű�� Ư�����ȿ���̸鼭 ���� �ְ��� �Ƿ����� ������ ��ġ�� �����̴�. �쿬�� ���� �������� �����ڰ� �� �״� ������� ���� ���� ��� ���� ��ã�� �� �ִ� ��ȸ�� ��� �ȴ�. ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (120,'���̾��','https://youtu.be/KAE5ymVLmZg','ironman.jpg','2008','125','12��',789878,'õ������ �γ��� ������� ���� �ְ��� �����ü�� �̲��� CEO����, Ÿ�� �ŷ����� �����긮Ƽ �������� ȭ���� ���� ��ư��� �︸���� ��� ��Ÿũ. �������Ͻ�ź���� �ڽ��� ������ �Ź��� ��ǥ�� �������� ��ġ�� ���ư��� �״� �Ը����� ���۽��� ���ݿ� ���� ������ ġ������ �λ��� �԰� ��ġ�ȴ�. ','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (123,'�������','https://youtu.be/108xilc-LsI','jurasicword.jpg','2015','125','12��',455327,'�̽��� ����󿡼� �ٽ� ���۵� �׸� ��ũ ''���� ����'' �� �������� ��������� �Ǿ� �Ź� ��Ȳ�� �̷�� ������ �ڸ���´�. ���� �������ڵ��� ������ �������� ���̺긮�� ������ ź����Ų��. �� ���̵� ���� (ũ���� ���� ��)�� �ݴ��ϰ� ���� ������ ���̺긮�� ������ ��Ÿ���� ��Ż�ϸ鼭 ������ �Ƽ������� �Ǵµ�..','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (124,'ŷ����','https://youtu.be/SW6EKneLyCI','kingsman.jpg','2015','128','19��',4500000,'������ ���׶� ��� �ظ� ��Ʈ(�ݸ� �۽�)�� �������� ��ġ�� ���׽�(�·� �ְ�ư)�� �����Ѵ�. Ź���� ������� �˾ƺ� �״� ���׽ø� ������ ���� ��������ⱸ ��ŷ���ǡ� ������ ������Ų��. �ƹ��� ���� ��ŷ���ǡ��� �˸� �޴� ����̾����� �ظ� ��Ʈ�� �츮�� ���� �׾��ٴ� ����� �˰� �� ���׽�. ����� �Ѿư� ��ŭ ����õ���� �Ʒ��� ����ؾ� �ϴ� ŷ���� �ĺ���. ���� ��� ��Ź�� �� �տ� �� ���׽ô� �ְ��� �Ǵ� �߷�Ÿ��(�繫�� L. �轼)�� ������','17/09/05','17/09/05','����');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (125,'��','https://youtu.be/JNrpekFKAmE','kong.jpg','2017','118','12��',2200000,'����� ����ü�� �����Ѵٴ� ������ �Լ��� �������� ��� ���д�ü�� �Ƿڸ� ���� Ž������ �������� ���� ������ �ذ��� ���� ���Ϸ��带 ã�� ������. Ž������ �������� �� ���� ������ ���ᡯ�� ����� �ǰ�, ���󰡻� ���ϼ��迡 ���� �ִ� ���� ��������� ����µ�... ����� ���, ������ ��Ƴ��� �� ����!','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (126,'��Ʈ����','https://youtu.be/pcW78sj91Qg','matrix.jpg','1999','126','12��',1857878,'�ΰ��� ����� �����ϴ� ��������, ��Ʈ���� 2199��. �ΰ� �γ��� ���� ��ǻ��(AI: Artificial Intelligence)�� �����ϴ� ���迡�� �ΰ��� ����ó�� �ΰ� �ڱ�(���: ��ť������)���� ����� ������������ Ȱ���ϴ� ������ �ô��. AI�� ���� �������� ����Ʈ��������� ���α׷�(������ 1999���� ���� ����)�� �Է´��� �ΰ���, ��Ʈ���� ���α׷�','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (127,'�̳�±��ο�','https://youtu.be/Cj4ZGKanyJ4','minyo.jpg','2006','120','12��',7000000,'�����ǿ� ������ �Ŷ��� ü���� ����, �׷��� �� ���ڿ��� ����ް� ���� ���� ������ �ѳ�(�����). ���� �׳࿡�� ����� ������ ������ õ���� ��Ҹ��� ������ �޲����� �̳� ���� ���ƹ̡��� ����ũ�� ��� �뷡�� �ҷ��ִ� ���� ���� ������ �ż���. ���踦 ���� �㿡�� ������ �˹١����� �پ�� �Ѵ�. �� ƴ ���� Ȥ����ϴ� ��.','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (128,'�����ڵ�','https://youtu.be/AnacC1N_PK4','naebuza.jpg','2015','130','19��',8605042,'������������ ���ڰ�, ȭ���ϰԡ������� ����� �ĺ��� ��� ȸ��, �׵��� ���� ��ġ���� �Ȼ�(�̺���).�ްŷ��� ���� § �̴� ���ѹα� ������ �����̴� ���� ���ְ� �̰���(������)��.�� ū ������ ���� �Ȼ󱸴� �̵��� ���ڱ� ���Ϸ� �ŷ��� �غ��ϴ� �߰��ǰ�,�� �Ϸ� ������ �Ǿ� ��������.���� ������ ���ϰ�, �� ���Ǹ� ���Ѵ�. �׸� ���ݾ�?���� ���� ������ ���� �� ������ �� �տ� �ΰ� ���� �ɴ� �˻� ������(���¿�)','17/09/05','17/09/05','�ѱ�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (129,'���θ��׿콺','https://youtu.be/1uFm9EPiEOw','prometeous.jpg','2012','185','19��',187985,'2085��. �ΰ��� �ܰ����� ������ ������ ���� ź���� ����ü��� ���ŵ��� �Ӽ� �߰ߵǸ鼭 �η��� ����� ã�� ���� Ž��밡 �ٷ�����. ���ּ� �����θ��׿콺ȣ���� Ÿ�� �ܰ� �༺�� ������ �̵��� �� ������ ����ü�� �´ڶ߸��� �ǰ�, �̴� �η� ��ü�� �����ϴ� ��û�� ������ �Ǵµ�...','17/09/05','17/09/05','�̱�');
Insert into MOVIERJH.MOVIE_INFO (MOV_NO,TITLE,TRAILER,POSTER,RELEASE,RTIME,GRADE,ATTD,SUMMARY,REG_DATE,MOD_DATE,COUNTRY) values (130,'�ΰ�','https://youtu.be/AGEzpLhvXZE','rogun.jpg','2017','117','19��',1269872,'����� �̷�, �ɷ��� �Ҿ�� ���ΰ�(�����)���� �߽��� ���� ��ó�� �� ����ó���� ���� �������伭 X���� ������ ��ư���. �������κ��� �ڽ��� ����� ��ư����� �ߴ� ���ΰǡ��� ��ü�Ҹ��� ���ܿ��� �ѱ�� �������� �ҳ� ���ζ󡯸� ������ �ǰ�, �׳ฦ ����Ű ���� ��� ���� �� ����� ��ġ�� �Ǵµ���','17/09/05','17/09/05','�̱�');
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
