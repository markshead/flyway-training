alter table PERSON
add FIRST_NAME varchar(100);

alter table PERSON
add LAST_NAME varchar(100);

UPDATE PERSON
SET
  FIRST_NAME = left(NAME,position(' ', name)),
  LAST_NAME = right(NAME,length(name) - position(' ', name));

alter table PERSON drop NAME;
