-- kodexuser
INSERT INTO users.kodexuser (id, namedisplay, namefull, goodreadsuserid, goodreadsurl) VALUES (1, 'Brian', 'Brian Koser', '4812558', 'https://www.goodreads.com/user/show/4812558-brian-koser');
INSERT INTO users.kodexuser (id, namedisplay, namefull, goodreadsuserid, goodreadsurl) VALUES (2, 'Melissa', 'Melissa Koser', '54340861', 'https://www.goodreads.com/user/show/54340861-melissa-koser');
INSERT INTO users.kodexuser (id, namedisplay, namefull, goodreadsuserid, goodreadsurl) VALUES (3, 'Lydia', 'Lydia Koser', NULL, NULL);
INSERT INTO users.kodexuser (id, namedisplay, namefull, goodreadsuserid, goodreadsurl) VALUES (4, 'Amber', 'Amber Koser', NULL, NULL);
INSERT INTO users.kodexuser (id, namedisplay, namefull, goodreadsuserid, goodreadsurl) VALUES (5, 'Penny', 'Penelope Koser', NULL, NULL);

-- bookshelftype
INSERT INTO books.bookshelftype (id, name) VALUES (1, 'Award');
INSERT INTO books.bookshelftype (id, name) VALUES (2, 'Book');
INSERT INTO books.bookshelftype (id, name) VALUES (3, 'Format');
INSERT INTO books.bookshelftype (id, name) VALUES (4, 'Genre');
INSERT INTO books.bookshelftype (id, name) VALUES (5, 'Owner');

-- bookshelf
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Hugo', 1, '260907918');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Hugo Nominee', 1, '260908130');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('372 Pages', 2, '302308344');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Alternate History', 2, '217979013');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Crossover', 2, '223525642');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('DC', 2, '215755547');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Fiction', 2, '213473141');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Immortals', 2, '223526484');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Marvel', 2, '215747068');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Non-Fiction', 2, '178374250');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Parallel Universe', 2, '223526504');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Received as Gift', 2, '212773651');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Secret History', 2, '223526537');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Sherlock Holmes', 2, '215867394');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Star Trek', 2, '215365663');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Star Wars', 2, '215468774');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Graphic Novel', 3, '215747057');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Novella', 3, '298008748');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Play', 3, '308180236');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Short Story Collection', 3, '215831580');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Adventure', 4, '213522818');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Biography', 4, '215866107');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Classics', 4, '178343919');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Education', 4, '354440751');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Fantasy', 4, '214502981');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Financial', 4, '219217614');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Games', 4, '215470406');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Historical Fiction', 4, '214284479');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('History', 4, '214294778');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Horror', 4, '214185224');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('How-To', 4, '371788885');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Humor', 4, '214394572');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Language', 4, '218074131');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Marriage', 4, '216779744');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Math', 4, '217287636');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Music', 4, '218074284');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Mystery', 4, '213473323');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Newspaper Comics', 4, '214401818');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Philosophy', 4, '218281035');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Poetry', 4, '214264163');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Politics', 4, '215368387');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Reference', 4, '215835880');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Sci-Fi', 4, '214503222');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Science', 4, '214261260');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Sports', 4, '213609986');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Technology', 4, '215835395');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Textbook', 4, '213527074');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Theology', 4, '215867876');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Thriller', 4, '394032403');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Trivia or General Knowledge', 4, '213633192');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Own', 5, '15447015');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Own Audio', 5, '401986308');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Own eBook', 5, '401986321');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Own Paper', 5, '401986276');
INSERT INTO books.bookshelf(name, bookshelftypeid, goodreadsshelfid) VALUES ('Used to Own', 5, '177698908');

-- userbookshelftype
INSERT INTO books.userbookshelftype (id, name) VALUES (1, 'AutoGenerated');
INSERT INTO books.userbookshelftype (id, name) VALUES (2, 'DidNotFinishYear');
INSERT INTO books.userbookshelftype (id, name) VALUES (3, 'FirstReadYear');
INSERT INTO books.userbookshelftype (id, name) VALUES (4, 'NewAuthorsYear');
INSERT INTO books.userbookshelftype (id, name) VALUES (5, 'ReadStatus');
INSERT INTO books.userbookshelftype (id, name) VALUES (6, 'ReadYear');
INSERT INTO books.userbookshelftype (id, name) VALUES (7, 'User');

-- userbookshelf
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Did Not Finish 2016', 2, '252926713');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Did Not Finish 2017', 2, '252926743');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Did Not Finish 2018', 2, '252926753');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Did Not Finish 2019', 2, '315992374');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Did Not Finish 2020', 2, '373864589');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 1996', 3, '213527063');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 1997', 3, '213473155');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 1998', 3, '213527273');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 1999', 3, '213527277');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2000', 3, '214381365');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2001', 3, '214395473');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2002', 3, '215261041');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2003', 3, '215569421');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2004', 3, '215862609');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2005', 3, '215969198');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2006', 3, '216176578');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2007', 3, '216283346');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2008', 3, '216545641');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2009', 3, '216775833');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2010', 3, '216777173');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2011', 3, '216778572');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2012', 3, '217382361');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2013', 3, '217949599');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2014', 3, '217975264');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2015', 3, '131249441');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2016', 3, '168814714');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2017', 3, '207727264');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2019', 3, '298008825');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2020', 3, '350589224');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('First Read 2021', 3, '423131852');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 1996', 4, '218079355');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 1997', 4, '213500812');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 1998', 4, '213609932');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 1999', 4, '214371576');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2000', 4, '214381384');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2001', 4, '214395608');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2002', 4, '215261049');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2003', 4, '215569443');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2004', 4, '215862657');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2005', 4, '215969233');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2006', 4, '216176613');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2007', 4, '216284113');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2008', 4, '216545696');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2009', 4, '216776022');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2010', 4, '216777212');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2011', 4, '216778579');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2012', 4, '217382370');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2013', 4, '217949637');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2014', 4, '217975277');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2015', 4, '203051306');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2016', 4, '203051526');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2017', 4, '207727289');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2018', 4, '249641248');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2019', 4, '302308407');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2020', 4, '350589287');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('New Authors Read 2021', 4, '426718559');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Currently Reading', 5, '15377250');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Did Not Finish', 5, '203361171');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Not Going to Read', 5, '155634049');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read Individually, Own Collection', 5, '218076922');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read', 5, '15377251');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Want To Read', 5, '15377249');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2015', 6, '218855434');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2016', 6, '214293293');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2017', 6, '214293725');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2018', 6, '249641302');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2019', 6, '298008987');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2020', 6, '350589241');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read 2021', 6, '423131903');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Best of Year Published', 7, '233365088');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Best Summary Opening Sentences', 7, '215472153');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Favorites', 7, '203056271');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Hundredth', 7, '214289476');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Next in Series', 7, '422065540');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('On Deck', 7, '223183595');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Quotes', 7, '202947117');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read For School', 7, '433270164');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read with Children', 7, '186707459');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Read with Spouse', 7, '204688325');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Should Have Been a Short Story', 7, '305329008');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Summary was Sufficient', 7, '214246026');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('To Buy', 7, '271799522');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('To Re-Read', 7, '275147539');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('To Read with Children', 7, '208010622');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('To Read with Spouse', 7, '203409786');
INSERT INTO books.userbookshelf(name, userbookshelftypeid, goodreadsshelfid) VALUES ('Watched the Movie', 7, '227720808');



-- re-reads
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2, '2013-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 15, '2003-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 33, '2003-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 36, '2015-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 37, '2015-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 38, '2015-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 49, '2015-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 75, '1997-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 95, '2016-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 103, '2002-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 111, '1998-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 120, '1999-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 127, '1998-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 130, '2005-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 132, '1999-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 161, '2011-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 282, '2005-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 294, '2011-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 380, '2015-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 384, '2011-01-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 118, '2020-05-03');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 135, '2020-03-08');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 143, '2020-01-22');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 146, '2020-01-09');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 162, '2019-10-01');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 256, '2018-09-19');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 293, '2018-05-30');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2349, '2021-03-15');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2354, '2020-12-30');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2357, '2020-12-31');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2370, '2020-11-15');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2390, '2020-08-29');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2391, '2020-08-29');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2432, '2020-04-07');
INSERT INTO books.review (isspoiler, userbookid, dateended) VALUES (false, 2468, '2019-04-10');
















-- manual insert
Select * from books.author where name like 'Guyla%'

INSERT INTO books.author (name, goodreadsratingsaverage, goodreadsauthorid, goodreadsratingscount, goodreadsurl, "timestamp") 
VALUES ('Saundra Lamgo', 4.33, '250881', 6, 'https://www.goodreads.com/author/show/250881.Saundra_Lamgo', current_timestamp) 
RETURNING id;

INSERT INTO books.book (name, descriptionfull, descriptionshort, goodreadsbookid, goodreadsratingsaverage, goodreadsratingscount, goodreadsurl, imagelarge, imagesmall, isbn, isbn13, pagecount, publicationyear, "timestamp") 
VALUES ('At the Farm', 'At the Farm is the fourth book in a series of six beginning readers. There readers are filled with hundreds of short stories containing interesting character training themes, science, history, nature, and more. Written with one- syllable words, each book is designed around one of the six basic phonics word groups in our American language. At the Farm allows beginning readers to practice reading controlled-vowel words.', 'At the Farm is the fourth book in a series of six beginning readers.', '4308511', 2.00, 1, 'https://www.goodreads.com/book/show/4308511-at-the-farm', null, null, '1934470082', '9781934470084', 172, 1994, current_timestamp) 
RETURNING id;

INSERT INTO books.author_book (bookid, authorid) VALUES (2696, 1450);
INSERT INTO books.author_book (bookid, authorid) VALUES (2696, 1451);

Select * from books.bookshelf
INSERT INTO books.book_bookshelf (bookid, bookshelfid, "timestamp") VALUES (2696, 7, current_timestamp);
INSERT INTO books.book_bookshelf (bookid, bookshelfid, "timestamp") VALUES (2696, 20, current_timestamp);
INSERT INTO books.book_bookshelf (bookid, bookshelfid, "timestamp") VALUES (2696, 47, current_timestamp);
INSERT INTO books.book_bookshelf (bookid, bookshelfid, "timestamp") VALUES (2696, 51, current_timestamp);
INSERT INTO books.book_bookshelf (bookid, bookshelfid, "timestamp") VALUES (2696, 54, current_timestamp);

INSERT INTO books.userbook(bookid, userid) VALUES (2696, 3) RETURNING id;

Select * from books.userbookshelf
INSERT INTO books.userbook_userbookshelf (userbookid, userbookshelfid, "timestamp") VALUES (2881, 29, current_timestamp);
--INSERT INTO books.userbook_userbookshelf (userbookid, userbookshelfid, "timestamp") VALUES (2879, 55, current_timestamp);
INSERT INTO books.userbook_userbookshelf (userbookid, userbookshelfid, "timestamp") VALUES (2881, 61, current_timestamp);
INSERT INTO books.userbook_userbookshelf (userbookid, userbookshelfid, "timestamp") VALUES (2881, 68, current_timestamp);

INSERT INTO books.review (isspoiler, body, dateadded, dateupdated, datestarted, dateended, goodreadsreviewid, goodreadsurl, rating, userbookid) 
VALUES (false, null, null, null, '2020-06-29', '2020-08-20', null, null, null, 2881) 
RETURNING id;


select * from books.userbook where userid = 3


