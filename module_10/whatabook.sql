/*
    Display user wishlist
*/
SELECT user.user id, user.first_name, user.last_name, book.book_id, book.book_name, book.author
FROM wishlist
    INNER JOIN user ON wishlist.user_id = user.user.id
    INNER JOIN book ON wishlist.book_id = book.book_id
WHERE user.user_id = 1;

/*
    View the store's location
*/
SELECT store_id, locale from store;

/*
    All whatabook books
*/
SELECT book_id, book_name, author, details from book;

/*
    View listing of all books that are NOT in a user's wishlist
*/
SELECT book_id, book_name, author, details
FROM book
WHERE book_id NOT IN (SELECT book_id FROM wishlist WHERE user_id = 2);

/* 
    Adding a new book with INSERT statement
*/
INSERT INTO wishlist(user_id, book_id)
    VALUES(2, 5)

/*
    Removing a book from the wishlist
*/
DELETE FROM wishlist WHERE user_id = 2 AND book_id = 5;