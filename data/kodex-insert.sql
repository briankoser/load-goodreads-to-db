-- todo: insert second review for Brian re-reads (stupid Goodreads API won't provide)
INSERT INTO books.review (isspoiler, body, dateadded, dateended, datestarted, dateupdated, goodreadsreviewid, goodreadsurl, rating, userbookid) VALUES (false, null, null, null, null, null, '2877756673', null, null, 228);

-- select book.name, userbook.id, userbook.userid from books.book join books.userbook on book.id = userbook.bookid where name like 'Archie%'

-- 1414636663,Morning Glories, Vol. 1: For a Better Future,first-read-2015
-- 2108555756,Midnight Riot (Peter Grant, #1),first-read-2018
-- 1925022080,The Lion, the Witch and the Wardrobe (The Chronicles of Narnia, #1),first-read-1997
-- 1164159036,Jonathan Strange & Mr Norrell,first-read-2011
-- 1165503649,The Fellowship of the Ring (The Lord of the Rings, #1),first-read-2003
-- 1164163955,The Ladies of Grace Adieu and Other Stories,first-read-2011
-- 1742925963,The Hitchhiker's Guide to the Galaxy (Hitchhiker's Guide to the Galaxy, #1),first-read-2005
-- 1932085797,Charlie and the Chocolate Factory (Charlie Bucket, #1),first-read-1998
-- 1165505677,Here, There Be Dragons (The Chronicles of the Imaginarium Geographica, #1),first-read-2013
-- 1414419125,The Anubis Gates,first-read-2016
-- 1707934480,The Mouse and the Motorcycle (Ralph S. Mouse, #1),first-read-1999
-- 1948779989,American Gods (American Gods, #1),first-read-2005
-- 1421567801,Astro City, Vol. 4: The Tarnished Angel,first-read-2015
-- 1165506889,The Hobbit,first-read-2003
-- 1414636331,Astro City, Vol. 2: Confession,first-read-2017
-- 1164184399,Nine Princes in Amber (The Chronicles of Amber #1),first-read-2014
-- 1707935836,Little House in the Big Woods (Little House, #1),first-read-1997
-- 1946897506,HTML for the World Wide Web,first-read-2004
-- 141805292,The Book of Three (The Chronicles of Prydain, #1),first-read-2002
-- 1401589206,Jingo (Discworld, #21),first-read-2011
-- 1164184924,The Guns of Avalon (The Chronicles of Amber #2),first-read-2014
-- 1550983107,Matilda,first-read-1998
-- 1414444075,We Have Always Lived in the Castle,first-read-2016
-- 1932888183,Freddy Goes to Florida (Freddy the Pig #1),first-read-1999
-- 1414441312,Dimension of Miracles (Dimension of Miracles #1),first-read-2016
-- 1401589387,Making Money (Discworld, #36; Moist Von Lipwig, #2),first-read-2011
-- 1201499705,Astro City, Vol. 1: Life in the Big City,undefined
-- 1923917585,Astro City, Vol. 3: Family Album,first-read-2018
-- 1164166172,The Pragmatic Programmer: From Journeyman to Master,first-read-2011

-- todo: insert Melissa re-reads
-- 2140623254,Dune (Dune Chronicles, #1)
-- 1635056868,Astro City, Vol. 3: Family Album
-- 2162563593,A Crown of Swords (The Wheel of Time, #7)
-- 2156640269,Lord of Chaos (The Wheel of Time, #6)
-- 2340562653,Something Wicked This Way Comes (Green Town, #2)
-- 1635098598,Astro City, Vol. 2: Confession
-- 1610826458,The Hobbit, or There and Back Again
-- 1609810716,The Eye of the World (The Wheel of Time, #1)
-- 1612054835,Charlie and the Chocolate Factory (Charlie Bucket, #1)
-- 1635059990,Astro City, Vol. 8: Shining Stars"
-- 2309579046,I Am Legend
-- 1620449166,The Ocean at the End of the Lane

-- todo: clean up auto-generated books.userbookshelf

-- todo: back up books data
-- SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'kodex' AND pid <> pg_backend_pid();



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