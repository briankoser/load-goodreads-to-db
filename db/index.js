// truncate table books.userbook_userbookshelf cascade;
// truncate table books.book_bookshelf cascade;
// truncate table books.author cascade;
// truncate table books.author_book cascade;
// truncate table books.book cascade;
// truncate table books.userbook cascade;
// truncate table books.review cascade;
// select * from books.userbook_userbookshelf;
// select * from books.book_bookshelf;
// select * from books.author;
// select * from books.author_book;
// select * from books.book;
// select * from books.userbook;
// select * from books.review;

// SELECT author.name, book.name, kodexuser.namedisplay, review.body, bookshelf.name, bookshelftype.name, userbookshelf.name, userbookshelftype.name
// 	FROM books.review
// 	JOIN books.userbook ON review.userbookid = userbook.id
// 	JOIN users.kodexuser ON userbook.userid = kodexuser.id
// 	JOIN books.book ON userbook.bookid = book.id
// 	JOIN books.author_book ON book.id = author_book.bookid
// 	JOIN books.author ON author_book.authorid = author.id
// 	LEFT JOIN books.book_bookshelf ON book.id = book_bookshelf.bookid
// 	LEFT JOIN books.bookshelf ON book_bookshelf.bookshelfid = bookshelf.id
// 	LEFT JOIN books.bookshelftype ON bookshelf.bookshelftypeid = bookshelftype.id
// 	LEFT JOIN books.userbook_userbookshelf ON userbook.id = userbook_userbookshelf.userbookid
// 	LEFT JOIN books.userbookshelf ON userbook_userbookshelf.userbookshelfid = userbookshelf.id
// 	LEFT JOIN books.userbookshelftype ON userbookshelf.userbookshelftypeid = userbookshelftype.id

const { Pool } = require('pg')
const dbOptions = {
    database: 'kodex',
    host: 'SG-koser-1876-pgsql-master.servers.mongodirector.com',
    user: '',
    password: '', 
    port: 5432
}; // todo: move password to credentials file
const pool = new Pool(dbOptions)

module.exports = {
    async query(text, params) {
      const start = Date.now()
      const res = await pool.query(text, params)
      const duration = Date.now() - start
      // console.log('executed query', { text, duration, rows: res.rowCount })
      return res
    },
    async getClient() {
      const client = await pool.connect()
      const query = client.query
      const release = client.release
      // set a timeout of 5 seconds, after which we will log this client's last query
      const timeout = setTimeout(() => {
        console.error('A client has been checked out for more than 5 seconds!')
        console.error(`The last executed query on this client was: ${client.lastQuery}`)
      }, 5000)
      // monkey patch the query method to keep track of the last query executed
      client.query = (...args) => {
        client.lastQuery = args
        return query.apply(client, args)
      }
      client.release = () => {
        // clear our timeout
        clearTimeout(timeout)
        // set the methods back to their old un-monkey-patched version
        client.query = query
        client.release = release
        return release.apply(client)
      }
      return client
    }
  }