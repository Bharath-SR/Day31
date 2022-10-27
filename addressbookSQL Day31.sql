/*UC-1 Create Database*/

CREATE DATABASE address_book;
SHOW DATABASES;
USE address_book;

/*UC-2 Create Address Book*/

CREATE TABLE address_book(First_name varchar(50),
				     Last_name varchar(50),
				     Address varchar(150),
				     City varchar(50),
				     State varchar(50),
				     Zip_code int,
				     Phone_number int,
				     Email varchar(50),
					 primary key (First_name)
                     );
                   
                     
/*UC-3 Insert new Contacts into Address Book*/

INSERT INTO address_book VALUES('Bharath','Seenappa','voc nagar',
'Hosur','TamilNadu','635109','784159632','bharaths@gmail.com');
INSERT INTO address_book VALUES('Hello','User','Vasanth Nagar','Hosur','TamilNadu',
'635144','1265478985','hellouser@gmail.com');
SELECT * FROM address_book;

/*UC-4 Ability to edit usng userName*/
 UPDATE address_book SET state = 'TN' where First_name = 'Bharath';

INSERT INTO address_book VALUES('virat','kohli','street1','Delhi','State',
'478987','1254478','viratkohli@gmail.com');

/*UC-5 Ability to delete usng userName*/
DELETE FROM address_book WHERE First_name = 'Hello';

/* Adding record. */
INSERT INTO address_book VALUES('rohit','sharma','street2','mumbai',
'Maharastra','78469','5577448','rohitsharma@gmail.com');

/*UC-6 Ability to retrive person using state or city*/ 
SELECT * FROM address_book WHERE City = 'Hosur';
SELECT * FROM address_book WHERE State = 'TamilNadu';
SELECT * FROM address_book WHERE City = 'Hosur' OR State = 'TamilNadu';


/*UC-7 understand size of address book using state or city*/ 
SELECT COUNT(First_name) FROM address_book WHERE City = 'Hosur';
SELECT COUNT(First_name) FROM address_book WHERE State = 'TamilNadu';
SELECT COUNT(First_name) FROM address_book WHERE City = 'Hosur' OR State = 'TamilNadu';


UPDATE address_book SET City = 'Chennai' where First_name = 'rohit';


/*UC-8 sort by city*/ 
SELECT * FROM address_book ORDER BY City ASC;

/*UC-9 Identif address book with name */
ALTER TABLE address_book ADD Type varchar(50);
UPDATE address_book SET Type = 'Family' WHERE First_name = 'Bharath';
UPDATE address_book SET Type = 'Profession' WHERE First_name = 'virat';
UPDATE address_book SET Type = 'Friends' WHERE First_name = 'rohit';

/*UC-10 ability to get number of contact persons*/ 
SELECT COUNT(First_name) FROM address_book WHERE Type = 'Profession';
SELECT COUNT(First_name) FROM address_book WHERE Type = 'Friends';


/*UC-11 Ability to add person to both friend and family*/ 
INSERT INTO address_book VALUES('hardik','pandya','Street5','Hyderabad',
    'Telangana',457845,58475768,'hardik@gmail.com','Family');
