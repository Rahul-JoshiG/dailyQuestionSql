use books_shop_db;

#Q1. Reverse and uppercase the following:
# "Why does my cat look at me with such hatered?"
#Sol
Select Upper(Reverse("Why does my cat look at me with such hatered?")) as solution;

#Q2. what will be the output of following 
Select Replace(Concat('I', ' ', 'Like', ' ', 'cats'), ' ', '-') as solution;
#sol I-Like-cats

#Q3. replace space in titles with '->' arrow
#sol
Select Replace(title, ' ', '->') as Title from books;

#Q4. print original author_lname and reverse_lname as the forward and backword names
#sol
Select author_lname as forward, reverse(author_lname) as backward from books;

#Q5. full name in caps
#sol
Select upper(concat(author_fname, ' ', author_lname)) as full_name_caps from books;

#Q6. concate title and release year like that "title was release in release year"
#sol
Select concat(title, " was released in ", release_year) as title_with_release_year from books;

#Q7. print book title and length of each title
#sol
Select title, char_length(title) as 'character count' from books;

#Q8. short title, author name, quantity
#sol
Select Concat(substring(title, 1, 10),'...') as 'short title', 
concat(author_lname,', ', author_fname) as author,
concat(stock_quantity, ' in stock') as quantity
from books;
