CREATE TABLE LOAN
(
  loan_no VARCHAR2(5),
  Acc_no VARCHAR2(5),
  loan_amt NUMBER(10,2),
   interest_rate NUMBER(5,2),
   LOAN_DATE DATE,
   remaining_loan NUMBER
);
INSERT INTO LOAN VALUES('L001','A001',to_date('1/1/2004','dd/mm/yyyy'),100000,7,75000);
INSERT INTO LOAN VALUES('L002','A002',to_date('18/5/2004','dd/mm/yyyy'),300000,9,150000); 
INSERT INTO LOAN VALUES('L003','A005',to_date('15/6/2004','dd/mm/yyyy'),500000,11,300000);

SELECT * FROM LOAN ;
update LOAN set loan_amt=100000+loan_amt;
update loan set interest_rate=2+interest_rate;

CREATE table LOAN_TEMP AS SELECT loan_no,Acc_no,loan_amt,LOAN_DATE from LOAN;
SELECT * from LOAN_TEMP;
SELECT * from LOAN WHERE LOAN_DATE=to_date('01/2004','MM/yyyy');
SELECT * from LOAN WHERE LOAN_DATE=to_date('01','MM');
alter table loan add credit_no VARCHAR2(4);
DESCRIBE loan;
SELECT * from LOAN WHERE LOAN_DATE>=to_date('01/2004','MM/yyyy');
SELECT * from LOAN WHERE Acc_no<='A005';