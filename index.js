const sosoreadsLib = require('sosoreads');
const { Client } = require('pg');



// constants
const goodreadsDeveloperKey = ''; // todo: move to credentials file
const pageSize = 1;
const goodreadsUserIds = ['4812558'];

const sosoreadsOptions = {
    "goodreads_developer_key": goodreadsDeveloperKey
};
const sosoreads = sosoreadsLib(sosoreadsOptions);
const dbOptions = {
    database: 'kodex',
    host: 'SG-koser-1876-pgsql-master.servers.mongodirector.com',
    user: '',
    password: '', 
    port: 5432
}; // todo: move password to credentials file
const db = new Client(dbOptions);



// main flow
// load multiple users
// saveUsersReviews()
//     .then(results => {
//         console.log(results);
//     })
//     .catch(err => {
//         console.log(err);
//     });

// load single user
saveUserReviewsAsync('4812558')
    .then(results => {
        console.log(results);
    })
    .catch(err => {
        console.log(err);
    });



// db functions
async function insertAuthorAsync(author) {
    const query = 'INSERT INTO books.author (name, goodreadsratingsaverage, goodreadsauthorid, goodreadsratingscount, goodreadsurl, "timestamp") VALUES ($1, $2, $3, $4, $5, current_timestamp) RETURNING id';
    const values = [author.name, author.ratings.average, author.id, author.ratings.count, author.url];
    const res = await db.query(query, values);
    const id = res.rows[0]?.id;
    console.log(`Inserted Author: ${id}`);
    return id;
}

async function insertAuthorBookAsync(bookId, authorId) {
    db.query('INSERT INTO books.author_book (bookid, authorid) VALUES ($1, $2)', [bookId, authorId);
}

async function queryAuthorIdsAsync(goodreadsAuthorIds) {
    const res = await db.query(`SELECT id, goodreadsAuthorId FROM books.author WHERE author.goodreadsauthorid IN ('${goodreadsAuthorIds.join("','")}')`);
    return res.rows;
}

async function queryBookIdAsync(goodreadsBookId) {
    const res = await db.query('SELECT id FROM books.book WHERE book.goodreadsbookid = $1::text', [goodreadsBookId]);
    let id = res.rows[0]?.id;
    console.log(`Book ID: ${id}`);
    return id;
}

async function queryDoesReviewExistAsync(goodreadsReviewId) {
    const res = await db.query('SELECT count(*) > 0 as doesexist FROM books.review WHERE goodreadsreviewid = $1::text', [goodreadsReviewId]);
    const doesExist = res.rows[0].doesexist;
    console.log(`Does exist: ${doesExist}`);
    return doesExist;
}

async function queryUserBookIdAsync(goodreadsBookId, goodreadsUserId) {
    const res = await db.query('SELECT userbook.id FROM books.userbook JOIN books.book ON userbook.bookid = book.id JOIN users.kodexuser ON userbook.userid = kodexuser.id WHERE book.goodreadsbookid = $1::text AND kodexuser.goodreadsuserid = $2::text', [goodreadsBookId, goodreadsUserId]);
    const id = res.rows[0]?.id;
    console.log(`User Book ID: ${id}`);
    return id;
}



// functions
function buildBook (review) {
    // return {
    //     "authorIds": [1234567890],
    //     "descriptions": {
    //         "short": "This groundbreaking English version by Robert Fagles is the most important recent translation of Homer's great epic poem.",
    //         "full": "This groundbreaking English version by Robert Fagles is the most important recent translation of Homer's great epic poem. The verse"
    //     },
    //     "goodreadsId": "117929",
    //     "goodreadsUrl": "https://www.goodreads.com/book/show/117929.The_Iliad",
    //     "id": "2345678901",
    //     "images": {
    //         "large": "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1482528464l/117929._SX98_.jpg",
    //         "small": "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1482528464l/117929._SY75_.jpg"
    //     },
    //     "isbn": "0140445927",
    //     "isbn13": "9780140445923",
    //     "originalPublicationYear": "-750",
    //     "pageCount": 683,
    //     "ratings": {
    //         "average": "3.87",
    //         "count": 346167,
    //         "distribution": {
    //             "five": 115210,
    //             "four": 113155,
    //             "three": 83415,
    //             "two": 24967,
    //             "one": 9420
    //         }
    //     },
    //     "series": [{
    //         "count": 8,
    //         "name": "Epic Cycle",
    //         "positionInSeries": 2
    //     }],
    //     "title": "The Iliad"
    // };
}

// function buildSeries (review) {
//     return {
//         "authorId": "123",
//         "bestBookId": "123456",
//         "bookCount": "16",
//         "description": "P.G. Wodehouse's series of comic novels featuring young British dilettante Bertram \"Bertie\" Wooster, and his wry valet Jeeves, who is often the cause of his salvation from increasingly entangled social situations.",
//         "goodreadsId": "52643",
//         "id": "52643",
//         "title": "Jeeves"
//     };
// }

// function buildShelf (sosoShelf) {
//     return {
//         "goodreadsId": sosoShelf.id,
//         "name": sosoShelf.name
//     };
// }

function buildReview (review) {
    // return {
    //     "bookId": "2345678901",
    //     "owned": false,
    //     "review": {
    //         "body": "I'm a fan of the bad book club podcast 372 Pages We'll Never Get Back, and a fan of many of the books they've covered. I built",
    //         "dates": {
    //             "add": "2020-02-16T11:33:07-08:00",
    //             "end": "2020-03-04",
    //             "start": "2020-02-16",
    //             "update": "2020-03-04T19:54:53-08:00"
    //         },
    //         "goodreadsId": "3193280293",
    //         "goodreadsUrl": "https://www.goodreads.com/review/show/3193280293",
    //         "isSpoiler": false,
    //         "rating": 1,
    //         "readCount": 1
    //     },
    //     "shelfIds": ["3456789012"],
    //     "userId": "5678901234"
    // };
}

async function createAuthorBooksAsync (bookId, authorIds) {
    for (const authorId in authorIds) {
        insertAuthorBookAsync(bookId, authorId);
    };
}

async function getAuthorIdsAsync (sosoreadsAuthors) {
    let goodreadsAuthorIds = sosoreadsAuthors.map(a => a.id);
    let dbAuthorIds = await queryAuthorIdsAsync(goodreadsAuthorIds);
    let authorIds = [];

    sosoreadsAuthors.forEach(async sosoReadsAuthor => {
        if (dbAuthorIds.map(a => a.goodreadsauthorid).includes(sosoReadsAuthor.id)) {
            authorIds.push(dbAuthorIds.find(a => a.goodreadsauthorid === sosoReadsAuthor.id).id);
        }
        else {
            let authorId = insertAuthorAsync(sosoReadsAuthor);
            authorIds.push(authorId);
        }
    });

    return authorIds;
}

async function getBookIdAsync (review) {
    let bookId = await queryBookIdAsync(review.book.id);
    if (bookId) {
        return bookId;
    }
    else {
        let authorIds = await getAuthorIdsAsync(review.book.authors);
        // let bookShelfIds = await getBookshelfIdsAsync(review);
        // let bookId = await getBookIdAsync(review);
        // createAuthorBooksAsync(review.book.id, authorIds);
        // createBookBookShelfsAsync(review.book.id, bookShelfIds);
    }
}

async function getUserBookIdAsync (review, goodreadsUserId) {
    let userBookId = await queryUserBookIdAsync(review.book.id, goodreadsUserId);
    if (userBookId) {
        return userBookId;
    }
    else {
        let bookId = await getBookIdAsync(review);

        // create user book
    }
}

async function saveUserReviewsAsync (goodreadsUserId) {
    let isSaveComplete = false;
    let page = 0;
    await db.connect();
    
    // loop saving a page of reviews until all are saved
    while (!isSaveComplete) {
        page += 1;
        const reviewsOptions = {
            "userId": goodreadsUserId,
            "paging": {
                "count": pageSize,
                "number": page
            },
            "shelf": "read"
        };

        // get page of reviews from Goodreads
        await sosoreads.getReviews(reviewsOptions)
            .then(async response => {
                // loop through reviews
                response.reviews.forEach(async sosoreadsReview => {
                    console.log(`sosoreadsReview id: ${sosoreadsReview.id}`);
                    
                    // check if review exists in db
                    let doesReviewExist = await queryDoesReviewExistAsync(sosoreadsReview.id);
                    if (doesReviewExist) {
                        console.log('review exists in db');
                        // if changes, update
                        // if no change, break from loop
                    }
                    else {
                        // if userbook exists, get userbookid. if userbook doesn't exist, insert it
                        let userBookId = await getUserBookIdAsync(sosoreadsReview, goodreadsUserId);

                        // create review
                    }
                });

                isSaveComplete = true;
            });

        // if every review in the page was new, save next page of reviews and loop again
        await sleep(1000);
    }

    await db.end();

    return page;
};

function saveUsersReviews () {
    let saveUserReviewsArray = [];
    goodreadsUserIds.forEach(userId => saveUserReviewsArray.push(saveUserReviewsAsync(userId)));
    return Promise.all(saveUserReviewsArray);
}

function sleep(ms) {
    return new Promise((resolve) => {
        setTimeout(resolve, ms);
    });
} 
