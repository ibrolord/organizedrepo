create table WINE_TYPE
(
	wtCode CHAR(1),
	wtName VARCHAR(20),
	wtLeadFirst VARCHAR(25),
	wtLeadLast VARCHAR(30),
	wtServeTemp DECIMAL(3,1),

	constraint pk_WINE_TYPE_wtCode primary key(wtCode)

);

drop table WINE;