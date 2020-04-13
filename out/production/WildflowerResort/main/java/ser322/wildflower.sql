CREATE TABLE GUEST (
GUESTID              INTEGER            NOT NULL,
FIRSTNAME            VARCHAR(25)        NOT NULL,
LASTNAME             VARCHAR(25)        NOT NULL,
EMAIL                VARCHAR(30),
PHONENUM             VARCHAR(11),
PRIMARY KEY (GUESTID));

CREATE TABLE CREDIT_CARD (
GUESTID            INTEGER       NOT NULL,
CARDNUM            VARCHAR(16)   NOT NULL,
CVV                INTEGER(3)    NOT NULL,
EXPM               INTEGER(9)    NOT NULL,
EXPD               INTEGER       NOT NULL,
OWNERFIRSTNAME     VARCHAR(25)   NOT NULL,
OWNERLASTNAME      VARCHAR(25)   NOT NULL,
PRIMARY KEY (CARDNUM),
FOREIGN KEY (GUESTID) REFERENCES GUEST (GUESTID));

CREATE TABLE ROOMTYPE (
ROOMID          INTEGER         NOT NULL,
ROOMTYPE        VARCHAR(15)     NOT NULL,
MAXOCCUPANCY    INTEGER         NOT NULL,
ISSMOKING       SMALLINT(1)     NOT NULL,
PRIMARY KEY (ROOMID));

CREATE TABLE RESERVATION (
RESERVATIONID          INTEGER       NOT NULL,
CARDNUM                VARCHAR(16)   NOT NULL,
ROOMID                 INTEGER       NOT NULL,
PRICE                  FLOAT,
STARTDATE              DATE          NOT NULL,
ENDDATE                DATE          NOT NULL,
FOREIGN KEY (CARDNUM) REFERENCES CREDIT_CARD (CARDNUM),
FOREIGN KEY (ROOMID) REFERENCES ROOMTYPE (ROOMID),
PRIMARY KEY (RESERVATIONID));

CREATE TABLE AMENITY (
AMENITYID      INTEGER    NOT NULL,
TYPE           VARCHAR(15)    NOT NULL,
HOURS          VARCHAR(15)    NOT NULL,
PRIMARY KEY (AMENITYID));

-- ///////////// dummy data below ///////////// --

INSERT INTO GUEST VALUES (1,'MORGAN','FREEMAN', 'mfreeman@gmail.com', '5204568756');
INSERT INTO GUEST VALUES (2,'LADY','GAGA', 'chromatica@gmail.com', '3135854897');
INSERT INTO GUEST VALUES (3,'MARIO','NINTENDO', 'ilovepeach@gmail.com', '9786453456');
INSERT INTO GUEST VALUES (4,'DOJA','CAT', 'sayso969@gmail.com', '3459875425');

INSERT INTO CREDIT_CARD VALUES (1, '4564545878565484', 654, 10, 22, 'MORGAN', 'FREEMAN');
INSERT INTO CREDIT_CARD VALUES (2, '8788654632158467', 985, 04, 03, 'LADY', 'GAGA');
INSERT INTO CREDIT_CARD VALUES (3, '9999856436365258', 741, 12, 30, 'MARIO', 'NINTENDO');
INSERT INTO CREDIT_CARD VALUES (4, '6665482257978888', 221, 11, 11, 'DOJA', 'CAT');

INSERT INTO ROOMTYPE VALUES (1, 'WEDDING', 200, 0);
INSERT INTO ROOMTYPE VALUES (2, 'CONFERENCE 1', 25, 0);
INSERT INTO ROOMTYPE VALUES (3, 'CONFERENCE 2', 45, 0);
INSERT INTO ROOMTYPE VALUES (301, 'NORMAL', 2, 0);
INSERT INTO ROOMTYPE VALUES (504, 'DELUX', 4, 0);
INSERT INTO ROOMTYPE VALUES (515, 'PENTHOUSE', 8, 0);

INSERT INTO AMENITY VALUES (800, 'POOL', '8-10PM');
INSERT INTO AMENITY VALUES (700, 'LAZY RIVER', '4-9PM');
INSERT INTO AMENITY VALUES (600, 'RESTAURANT', '2-9PM');

INSERT INTO RESERVATION VALUES (654654, '4564545878565484', 301, 165.32, '2020/10/13', '2020/10/15');
INSERT INTO RESERVATION VALUES (654655, '8788654632158467', 504, 300.32, '2020/10/13', '2020/10/13');
INSERT INTO RESERVATION VALUES (654656, '9999856436365258', 515, 544.32, '2020/10/13', '2020/10/13');