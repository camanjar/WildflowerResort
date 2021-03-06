CREATE TABLE IF NOT EXISTS CREDIT_CARD (
GUESTID            INTEGER       NOT NULL,
CARDNUM            VARCHAR(16)   NOT NULL,
CVV                INTEGER(3)    NOT NULL,
EXPM               INTEGER(9)    NOT NULL,
EXPY               INTEGER       NOT NULL,
OWNERFIRSTNAME     VARCHAR(25)   NOT NULL,
OWNERLASTNAME      VARCHAR(25)   NOT NULL,
PRIMARY KEY (CARDNUM),
FOREIGN KEY (GUESTID) REFERENCES GUEST (GUESTID));