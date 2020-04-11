
CREATE TABLE GUEST (
 GUESTID              INTEGER       NOT NULL,
 FIRSTNAME            VARCHAR(14),
 LASTNAME             VARCHAR(13),
 EMAIL                VARCHAR(13),
 PHONENUM             INTEGER(13),
 PRIMARY KEY (GUESTID));

INSERT INTO GUEST VALUES (0001,'MORGAN','FREEMAN', 'mfreeman@gmail.com', 5204568756);
INSERT INTO GUEST VALUES (0002,'LADY','GAGA', 'chromatica@gmail.com', 3135854897);
INSERT INTO GUEST VALUES (0003,'MARIO','NINTENDO', 'ilovepeach@gmail.com', 9786453456);
INSERT INTO GUEST VALUES (0004,'DOJA','CAT', 'sayso969@gmail.com', 3459875425);

CREATE TABLE CREDIT_CARD (
 GUESTID            INTEGER       NOT NULL,
 CARDNUM               INTEGER       NOT NULL,
 CVV                INTEGER(10)   NOT NULL,
 EXPM               INTEGER(9)    NOT NULL,
 EXPD               INTEGER       NOT NULL,
 OWNERFIRSTNAME     VARCHAR(25)   NOT NULL,
 OWNERLASTNAME      VARCHAR(25)   NOT NULL,
 FOREIGN KEY (GUESTID) REFERENCES GUEST (GUESTID),
 FOREIGN KEY (OWNERFIRSTNAME) REFERENCES GUEST (FIRSTNAME),
 FOREIGN KEY (OWNERLASTNAME) REFERENCES GUEST (LASTNAME),
 PRIMARY KEY (CARDNUM));

INSERT INTO CREDIT_CARD VALUES (4564545878565484, 654, 10, 22, 'MORGAN', 'FREEMAN');
INSERT INTO CREDIT_CARD VALUES (8788654632158467, 985, 04, 03, 'LADY', 'GAGA');
INSERT INTO CREDIT_CARD VALUES (9999856436365258, 741, 12, 30, 'MARIO', 'NINTENDO');
INSERT INTO CREDIT_CARD VALUES (6665482257978888, 221, 11, 11, 'DOJA', 'CAT');

CREATE TABLE RESERVATION (
 RESERVATIONID          INTEGER       NOT NULL,
 CARDNUM                 INTEGER       NOT NULL,
 ROOMID                 INTEGER       NOT NULL,
 PRICE		            FLOAT,
 STARTDATE	            DATE       NOT NULL,
 ENDDATE                DATE,
 FOREIGN KEY (CARDNUM) REFERENCES CREDIT_CARD (CARDNUM),
 FOREIGN KEY (ROOMID) REFERENCES ROOMTYPE (ROOMID),
 PRIMARY KEY (RESERVATIONID);

INSERT INTO RESERVATION VALUES (654654, 165.32, 17/12/2020, 17/15/2020);
INSERT INTO RESERVATION VALUES (654655, 300.32, 17/10/2020, 17/17/2020);
INSERT INTO RESERVATION VALUES (654656, 544.32, 18/14/2020, 21/15/2020);

CREATE TABLE ROOMTYPE (
ROOMID          INTEGER     NOT NULL,
ROOMTYPE        VARCHAR     NOT NULL,
MAXOCCUPANCY    INTEGER     NOT NULL,
ISSMOKING       SMALLINT(1) NOT NULL,
PRIMARY KEY (ROOMID);

INSERT INTO ROOMTYPE VALUES (1, 'WEDDING', 200, 0);
INSERT INTO ROOMTYPE VALUES (2, 'CONFERENCE 1', 25, 0);
INSERT INTO ROOMTYPE VALUES (3, 'CONFERENCE 2', 45, 0);
INSERT INTO ROOMTYPE VALUES (301, 'NORMAL', 2, 0);
INSERT INTO ROOMTYPE VALUES (504, 'DELUX', 4, 0);
INSERT INTO ROOMTYPE VALUES (515, 'PENTHOUSE', 8, 0);

CREATE TABLE AMENITY (
 AMENITYID       INTEGER    NOT NULL,
 TYPE		     VARCHAR    NOT NULL,
 HOURS           VARCHAR    NOT NULL,
 PRIMARY KEY (AMENITYID));

INSERT INTO ROOMTYPE VALUES (800, 'POOL', '8-10PM');
INSERT INTO ROOMTYPE VALUES (700, 'LAZY RIVER', '4-9PM');
INSERT INTO ROOMTYPE VALUES (600, 'RESTAURANT', '2-9PM');