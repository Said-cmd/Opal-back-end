# Opal Financial Transactions API
## By Said-cmd
This financial transactions API is a simple web API where you make CRUD calls to a server to organize a financial transactions app.

## Front-end Project Task Management Interface

This repository holds the client-side of the app. This API is used in conjunction with my front-end financial transactions app [see the repo](https://github.com/Said-cmd/Opal-client)

## Technologies Used in the creation of this API.

- Ruby
- Rack
- ActiveRecord
- SQLite3
- Sinatra

## How to use this API.

Install it and run:

```sh
# to install the dependencies 
bundle install

# to create and run migrations with activerecord
rake db:migrate

# if you would like to use seed data provided by the API
rake db:seed

# to start the server
rackup config.ru
```

## Relationships Within The Database

### User

- has many transactions

### Transactions

- belongs to a user

## Example Calls You Can Make With API

### Transactions

You can make all CRUD calls for the transactions database.

- CREATE transactions
- GET all transactions
- UPDATE a transaction
- DELETE a transaction

#### Example API request: Retrieve All Transactions

Shows you all the transactions.

```js

fetch('http://localhost:9292/transactions')
   .then(res => res.json())
    .then(data => setTransactions(data))


// output
[
    {
        "id": 1,
        "date": "2022-08-01",
        "description": "Paycheck from Bob's Burgers",
        "amount": 1000.0,
        "category": "Income",
        "created_at": "2022-09-13T20:36:25.748Z",
        "updated_at": "2022-09-13T20:36:25.748Z",
        "user_id": 1
    },
    {
        "id": 2,
        "date": "2022-08-01",
        "description": "South by Southwest Quinoa Bowl at Fresh & Co",
        "amount": -10.55,
        "category": "Food",
        "created_at": "2022-09-13T20:36:25.753Z",
        "updated_at": "2022-09-13T20:36:25.753Z",
        "user_id": 1
    },
    {
        "id": 3,
        "date": "2022-08-02",
        "description": "December's Rent",
        "amount": -1020.0,
        "category": "Bills",
        "created_at": "2022-09-13T20:36:25.755Z",
        "updated_at": "2022-09-13T20:36:25.755Z",
        "user_id": 1
    },
    {
        "id": 4,
        "date": "2022-08-04",
        "description": "Sunglasses, Urban Outfitters",
        "amount": -24.99,
        "category": "Shopping",
        "created_at": "2022-09-13T20:36:25.757Z",
        "updated_at": "2022-09-13T20:36:25.757Z",
        "user_id": 1
    },
    {
        "id": 5,
        "date": "2022-08-06",
        "description": "Venmo, Alice Pays you for Burrito",
        "amount": 8.75,
        "category": "Food",
        "created_at": "2022-09-13T20:36:25.759Z",
        "updated_at": "2022-09-13T20:36:25.759Z",
        "user_id": 1
    },
    {
        "id": 6,
        "date": "2022-08-07",
        "description": "Birthday Check from Grandma",
        "amount": 50.0,
        "category": "General",
        "created_at": "2022-09-13T20:36:25.761Z",
        "updated_at": "2022-09-13T20:36:25.761Z",
        "user_id": 1
    },
    {
        "id": 7,
        "date": "2022-08-09",
        "description": "Uber",
        "amount": -13.25,
        "category": "Transport",
        "created_at": "2022-09-13T20:36:25.764Z",
        "updated_at": "2022-09-13T20:36:25.764Z",
        "user_id": 1
    },
    {
        "id": 8,
        "date": "2022-08-11",
        "description": "Paycheck from TFL",
        "amount": 1000.0,
        "category": "Income",
        "created_at": "2022-09-13T20:36:25.766Z",
        "updated_at": "2022-09-13T20:36:25.766Z",
        "user_id": 1
    },
    {
        "id": 9,
        "date": "2022-08-16",
        "description": "Tickets, Flatiron Multiplex Cinemas",
        "amount": -24.0,
        "category": "Entertainment/Leisure",
        "created_at": "2022-09-13T20:36:25.768Z",
        "updated_at": "2022-09-13T20:36:25.768Z",
        "user_id": 1
    },
    {
        "id": 12,
        "date": "2022-09-13",
        "description": "August savings",
        "amount": 5000.0,
        "category": "Savings",
        "created_at": "2022-09-13T22:25:28.547Z",
        "updated_at": "2022-09-13T22:25:28.547Z",
        "user_id": 1
    }
]
```
## License

## MIT License

Copyright (c) [2022] [Said-cmd]

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

## Author

GitHub: https://github.com/Said-cmd
