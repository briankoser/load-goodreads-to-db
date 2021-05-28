-- Database - create from admin dashboard instead of directly
-- CREATE DATABASE kodex WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';



-- Users
CREATE SCHEMA users;
CREATE TABLE users.KodexUser (
	id INT primary key,
    nameDisplay varchar not null,
    nameFull varchar not null,
    goodreadsUserId varchar unique,
    goodreadsUrl varchar
);


-- Books
CREATE SCHEMA books;

CREATE TABLE books.BookShelfType (
	id INT primary key,
    name varchar not null
);

CREATE TABLE books.UserBookShelfType (
	id INT primary key,
    name varchar not null
);

CREATE TABLE books.BookShelf (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    name varchar not null,
    bookshelftypeid int not null,
    goodreadsShelfId varchar unique,
	CONSTRAINT fk_BookShelf_bookshelftypeid FOREIGN KEY(bookshelftypeid) REFERENCES books.BookShelfType(id)
);

CREATE TABLE books.UserBookShelf (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    name varchar not null,
    userbookshelftypeid int not null,
    goodreadsShelfId varchar unique,
	CONSTRAINT fk_UserBookShelf_userbookshelftypeid FOREIGN KEY(userbookshelftypeid) REFERENCES books.UserBookShelfType(id)
);

CREATE TABLE books.Author (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    name varchar not null,
    dateBorn Date,
    dateDied Date,
    gender varchar(6),
    goodreadsAuthorId varchar unique,
    goodreadsRatingsAverage numeric(3, 2),
    goodreadsRatingsCount Integer,
    goodreadsUrl varchar,
	"timestamp" timestamp with time zone default CURRENT_TIMESTAMP not null
);

CREATE TABLE books.list (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
	name varchar not null,
    description varchar,
	goodreadsSeriesId varchar unique
);

CREATE TABLE books.Book (
    id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    name varchar not null,
    descriptionFull varchar,
    descriptionShort varchar,
    goodreadsBookId varchar unique,
    goodreadsRatingsAverage numeric(3, 2),
    goodreadsRatingsCount integer,
    goodreadsRatingsDistributionFive integer,
    goodreadsRatingsDistributionFour integer,
    goodreadsRatingsDistributionThree integer,
    goodreadsRatingsDistributionTwo integer,
    goodreadsRatingsDistributionOne integer,
    goodreadsUrl varchar,
    imageLarge varchar,
    imageSmall varchar,
    isbn varchar(10),
    isbn13 varchar(13),
    pageCount integer,
    publicationYear integer,
    slug varchar unique not null,
	"timestamp" timestamp with time zone default CURRENT_TIMESTAMP not null
);

CREATE TABLE books.Book_List (
    id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    bookid integer not null,
    listid integer not null,
    "position" integer not null,
	CONSTRAINT fk_Book_List_bookid FOREIGN KEY(bookid) REFERENCES books.book(id),
	CONSTRAINT fk_Book_List_listid FOREIGN KEY(listid) REFERENCES books.list(id)
);

CREATE TABLE books.Author_Book (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    bookid integer not null,
    authorid integer not null,
	CONSTRAINT fk_Author_Book_bookid FOREIGN KEY(bookid) REFERENCES books.book(id),
	CONSTRAINT fk_Author_Book_authorid FOREIGN KEY(authorid) REFERENCES books.author(id)
);

CREATE TABLE books.Book_BookShelf (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    bookid integer not null,
    bookshelfid integer not null,
    "timestamp" timestamp with time zone default CURRENT_TIMESTAMP not null,
	CONSTRAINT fk_Book_BookShelf_bookid FOREIGN KEY(bookid) REFERENCES books.book(id),
	CONSTRAINT fk_Book_BookShelf_bookshelfid FOREIGN KEY(bookshelfid) REFERENCES books.bookshelf(id)
);

CREATE TABLE books.UserBook (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    bookid integer not null,
    userid integer not null,
	CONSTRAINT fk_UserBook_bookid FOREIGN KEY(bookid) REFERENCES books.book(id),
	CONSTRAINT fk_UserBook_userid FOREIGN KEY(userid) REFERENCES users.KodexUser(id)
);

CREATE TABLE books.userbook_userbookshelf (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
	userbookid integer not null,
    userbookshelfid integer not null,
	"timestamp" timestamp with time zone default CURRENT_TIMESTAMP not null,
	CONSTRAINT fk_userbook_userbookshelf_userbookid FOREIGN KEY(userbookid) REFERENCES books.userbook(id),
	CONSTRAINT fk_userbook_userbookshelf_userbookshelfid FOREIGN KEY(userbookshelfid) REFERENCES books.userbookshelf(id)
);

CREATE TABLE books.Review (
	id INT primary key GENERATED BY DEFAULT AS IDENTITY,
    userbookid integer not null,
    isSpoiler boolean not null,
    body varchar,
    dateAdded timestamp with time zone,
    dateEnded timestamp with time zone,
    dateStarted timestamp with time zone,
    dateUpdated timestamp with time zone,
    goodreadsReviewId varchar unique,
    goodreadsUrl varchar,
    rating integer CHECK (rating >= 0) CHECK (rating <= 10),
	CONSTRAINT fk_Review_userbookid FOREIGN KEY(userbookid) REFERENCES books.userbook(id)
);

ALTER TABLE ONLY books.book_bookshelf ADD CONSTRAINT uq_book_bookshelf UNIQUE (bookid, bookshelfid);
ALTER TABLE ONLY books.userbook_userbookshelf ADD CONSTRAINT uq_userbook_userbookshelf UNIQUE (userbookid, userbookshelfid);



-- Permissions
REVOKE CONNECT,TEMPORARY ON DATABASE kodex FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM PUBLIC;

GRANT ALL ON SCHEMA public TO kodexadmin;

grant connect on database kodex to kodexload;
grant usage on schema books to kodexload;
grant usage on schema users to kodexload;
grant insert, select on books.author to kodexload;
grant insert on books.author_book to kodexload;
grant insert, select on books.book to kodexload;
grant insert on books.book_bookshelf to kodexload;
grant select on books.bookshelf to kodexload;
grant insert, select on books.review to kodexload;
grant insert, select on books.userbook to kodexload;
grant insert on books.userbook_userbookshelf to kodexload;
grant insert, select on books.userbookshelf to kodexload;
grant select on users.kodexuser to kodexload;