# load-goodreads-to-db
Load Goodreads user data to database

Ideally would run in an AWS Lambda function and insert/update kodex on a schedule. However, Goodreads may be shutting down it's API, so for now just load data. Don't worry about updates or AWS for now.

All new Goodreads shelves are saved as UserBookShelfs; creating a BookShelf is a manual process.