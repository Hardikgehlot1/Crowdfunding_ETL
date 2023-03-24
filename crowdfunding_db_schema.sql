--Drop table if exists
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaign;

--Creating category table

create table category(
category_id varchar(250) not null,
category varchar(250) not null,
primary key(category_id)
)

--showing category table
select * from category;

--creating subcategory table
create table subcategory(
subcategory_id varchar(250) not null,
subcategory varchar(250) not null,
primary key(subcategory_id)	
)

--showing subcategory table
select * from subcategory;

--creating contacts table
create table contacts(
contact_id integer Not Null,
first_name varchar(250) Not Null,
last_name varchar(250) Not Null,
email varchar(250) Not null,
primary key(contact_id)	
)

--showing contacts table
select * from contacts;


--creating campaign table
create table campaign(
cf_id integer not null,	
contact_id integer not null,
company_name varchar(250) not null,
description varchar(250) not null,
goal float not null,
pledged float not null,
outcome varchar(250) not null,
backers_count integer not null,
country varchar(250) not null,
currency varchar(250) not null,
launched_date date not null,
end_date date not null,
category_id varchar(250) not null,
subcategory_id varchar(250) not null,
primary key (cf_id),
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id ) REFERENCES category(category_id ),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
)

--showing campaign
select * from campaign;














