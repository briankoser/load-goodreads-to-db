const sosoreadsLib = require('sosoreads');
const { Client } = require('pg');



// constants
const goodreadsDeveloperKey = ''; // todo: move to credentials file
const pageSize = 3;
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
async function getDoesReviewExistAsync(goodreadsId) {
    const res = await db.query('SELECT count(*) > 0 as doesexist FROM books.review WHERE goodreadsreviewid = $1::text', [goodreadsId]);
    let doesExist = res.rows[0].doesexist;
    console.log(`Does exist: ${doesExist}`);
    return doesExist;
}

async function createFaunaShelfAsync (goodreadsId, name) {
    // return fauna.query(
    //     q.Create(
    //         q.Collection('Shelf'),
    //         { data: {
    //             "type": q.Ref(q.Collection("ShelfType"), "294435424391135754"), // AutoGenerated shelf type
    //             "goodreadsId": goodreadsId,
    //             "name": name
    //         }}
    //     )
    // );
}

async function getFaunaAuthorAsync (goodreadsId) {
    // return fauna.query(
    //     q.Map(
    //         q.Paginate(
    //             q.Match(q.Index("authorByGoodreadsId"), goodreadsId)
    //         ),
    //         q.Lambda("X", q.Get(q.Var("X")))));
}

async function getFaunaBookAsync (goodreadsId) {
    // return fauna.query(
    //     q.Map(
    //         q.Paginate(
    //             q.Match(q.Index("bookByGoodreadsId"), goodreadsId)
    //         ),
    //         q.Lambda("X", q.Get(q.Var("X")))));
}

async function getFaunaShelfAsync (scope) {    
    // let shelves = await fauna.query(
    //     q.Map(
    //         q.Paginate(q.Match(q.Index("shelfTypesByScope"), scope)),
    //         q.Lambda(
    //             "shelfTypeRef", 
    //             q.Map(
    //                 q.Paginate(q.Match(q.Index("shelvesByType"), q.Var("shelfTypeRef"))),
    //                 q.Lambda("shelf", q.Get(q.Var("shelf")))))));
    
    // return shelves.data.map(s => s.data).flat();
}



// functions
function buildAuthor (sosoAuthor) {
    // return {
    //     "averageRating": sosoAuthor.ratings.average,
    //     "goodreadsId": sosoAuthor.id,
    //     "goodreadsUrl": sosoAuthor.url,
    //     "name": sosoAuthor.name,
    //     "ratingsCount": sosoAuthor.ratings.count
    // };
};

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

async function getAuthorRefsAsync (sosoAuthors) {
    let authors = [];

    for (const sosoAuthor of sosoAuthors) {
        let getResponse = await getFaunaAuthorAsync(sosoAuthor.id);
        let doesExist = getResponse.data.length > 0;

        if (doesExist) {
            let author = getResponse.data[0];
            console.log(`Author ${author.data.name} exists`);
            authors.push(author.ref);
        }
        else {
            // if author doesn't exist, insert it
            let newAuthor = buildAuthor(sosoAuthor);
            let createResponse = await fauna.query(
                q.Create(
                    q.Collection('Author'),
                    { data: newAuthor },
                ));
            console.log(`Create author: ${createResponse.ref}`);
            authors.push(createResponse.ref);
        }
    };

    console.log(`Author count: ${authors.length}`);
    return authors;
}

async function getBookShelfAsync (goodreadsId) {
    let bookShelves = await getFaunaShelfAsync('BOOK');
    return bookShelves.filter(s => s.data.goodreadsId === goodreadsId)[0];
}

async function getUserBookShelfAsync (goodreadsId) {
    let userBookShelves = await getFaunaShelfAsync('USER');
    return userBookShelves.filter(s => s.data.goodreadsId === goodreadsId)[0];
}

async function getBookRefAsync (review, shelfRefs) {
    let authorRefs = await getAuthorRefsAsync(review.book.authors);
    
    // todo: (sosoreads Reviews doesn't provide series) 
        // if series exists, get seriesid. if series doesn't exist, insert it
        // if bookseries exists, get bookseriesid. if bookseries doesn't exist, insert it

    // let book = await getFaunaBookAsync(review.book.id);
    // let doesExist = book.data == undefined;

    // if (doesExist) {
    //     console.log(`author ${author.data.name} exists`);
    //     authors.push(author.data.ref);
    // }
    // else {
    //     // if author doesn't exist, insert it
    //     let newAuthor = buildAuthor(sosoAuthor);
    //     let response = await fauna.query(
    //         q.Create(
    //             q.Collection('Author'),
    //             { data: newAuthor },
    //         ));
    //     console.log(`Create author: ${response.ref}`);
    //     authors.push(response.ref);
    // }
    // let newBook = buildBook(sosoAuthor);
    // let response = await fauna.query(
    //     q.Create(
    //         q.Collection('Author'),
    //         { data: newAuthor },
    //     ));
    // console.log(`Create author: ${response.ref}`);
    // authors.push(response.ref);
}

async function getShelfRefsAsync (sosoShelves, scope) {
    let shelves = [];

    for (const sosoShelf of sosoShelves) {
        let shelf = {};
        if (scope === "USER") {
            shelf = await getUserBookShelfAsync(sosoShelf.id);
        }
        else {
            shelf = await getBookShelfAsync(sosoShelf.id);
        }
        
        if (shelf != undefined) {
            shelves.push(shelf.ref);
        }
        // AutoGenerated shelves are scoped to USER, so only create and return when we're retrieving USER shelves
        else if (scope === "USER") {
            try {
                shelf = await createFaunaShelfAsync(sosoShelf.id, sosoShelf.name);
                console.log(`Create shelf ${sosoShelf.name}: ${shelf.ref}`);
                shelves.push(shelf.ref);
            }
            catch (error) {
                // This is a USER scope and the error is probably that the shelf already exists as a BOOK shelf; this is expected and okay.
                console.log(`Create shelf error for Goodreads ID: ${sosoShelf.id}, Name: ${sosoShelf.name}. Error: ${error.description}`)
            }
        }
    };

    console.log(`Shelf count: ${shelves.length}`);
    return shelves;
}
        
async function getUserBookRefAsync (review) {
    let doesExist = false;
    if (doesExist) {
        console.log('user book exists');
        // if user book exists, return user book ref
        // let userBook = await getUserBookRefAsync(review);
    }
    else {
        // if shelves exist, get shelfids. if shelves don't exist, insert them
        let bookShelfRefs = await getShelfRefsAsync(review.book.shelves, "BOOK");
        let userBookShelfRefs = await getShelfRefsAsync(review.book.shelves, "USER");
        
        // if book exists, get bookid. if book doesn't exist, insert it
        let bookRef = await getBookRefAsync(review, bookShelfRefs);

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
                    let doesReviewExist = await getDoesReviewExistAsync(sosoreadsReview.id);
                    if (doesReviewExist) {
                        console.log('review exists in fauna');
                        // if changes, update
                        // if no change, break from loop
                    }
                    else {
                        // if userbook exists, get userbookref. if userbook doesn't exist, insert it
                        //let userBookRef = await getUserBookRefAsync(sosoreadsReview);

                        // insert review
                        console.log(`todo: insert review`);
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
