CREATE TABLE IF NOT EXISTS GUEST (
GUESTID              INTEGER            NOT NULL,
FIRSTNAME            VARCHAR(25)        NOT NULL,
LASTNAME             VARCHAR(25)        NOT NULL,
EMAIL                VARCHAR(30),
PHONENUM             VARCHAR(11),
PRIMARY KEY (GUESTID));