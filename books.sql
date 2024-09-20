create database books_shop_db;
use books_shop_db;
create table books(
	book_id int not null primary key auto_increment,
    title varchar(100),
    author_fname varchar(100),
    author_lname varchar(100),
    release_year int,
    stock_quantity int,
    pages int);
    
insert into books(title, author_fname, author_lname, release_year, stock_quantity, pages) values
('The namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eagger', 2013, 28, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526), 
('White Noise', 'Don', 'DeLillo', 1985, 49, 325),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 143);


desc books;

select * from books;


#string function
#concat
Select Concat(author_fname, ' ', author_lname) from books;
Select Concat(author_fname, ' ', author_lname) as author_full_name from books;
Select concat(title,' was release in year ', release_year) as data from books;

#concat_ws
Select Concat_ws('-', author_fname, author_lname, title) as full_name from books;

#substring
select substr("hello world",5);

select substring("Hello",-3);

select substr(title, 4,8) from books;

Select Concat(substr(title, 1, 10), ' ...') as title from books;

#replace
Select Replace("hello", "hello", "#$#$");
Select Replace("hello world", "l", 7);
Select Replace(title, 'e', 3) from books;
Select Concat(Substring(Replace(title, 'e', 3), 1, 10), '...') as strings from books;


#reverse
Select Reverse("hello");
Select Reverse("nitin");
Select concat(author_fname,' ', Reverse(author_fname)) as palindrome from books;

#char_length
select char_length("Hello");
select author_fname, title, char_length(title) as length from books;

#upper / lower
Select upper("hello");
select lower('HELLO');

Select Concat("MY FAVORITE BOOK IS ", upper(title)) as fav_book from books;

