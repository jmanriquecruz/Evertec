IF OBJECT_ID('PERSON_WORK_SITUATION') IS NOT NULL
BEGIN
	DROP TABLE PERSON_WORK_SITUATION
	PRINT '<< CREATED TABLE PERSON_WORK_SITUATION  >>'
END

CREATE TABLE PERSON_WORK_SITUATION
(
	ID_PERSON_WORK_SITUATION NUMERIC(12) IDENTITY (1,1)
	,ID_CHARGE_POSITION NUMERIC(12) NOT NULL
	,ID_PERSON NUMERIC(12) NOT NULL
	,YEAR_MONTH NUMERIC(12) NOT NULL
	,CONSTRAINT PK_PERSON_WORK_SITUATION PRIMARY KEY(ID_PERSON_WORK_SITUATION)
	,CONSTRAINT FK_PERSON_W_REFERENCE_CHARGE_P FOREIGN KEY (ID_CHARGE_POSITION)   REFERENCES CHARGE_POSITION (ID_CHARGE_POSITION) 
	,CONSTRAINT FK_PERSON_W_REFERENCE_PERSON FOREIGN KEY (ID_PERSON)  REFERENCES PERSON (ID_PERSON)  
)
IF OBJECT_ID('PERSON_WORK_SITUATION') IS NOT NULL
BEGIN
	PRINT '<< CREATED TABLE PERSON_WORK_SITUATION  >>'
END