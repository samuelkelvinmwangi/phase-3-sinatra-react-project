  # MARATHON

## INTRODUCTION

- This is a back end server application that us used to get, display and delete
  data as one inputs or files details in a file format registering for a marathon

## SOFTWARE USED

The main sofware used is ruby. Active records and sinatra are used as dependancies
in the software as they aid in creating the database and the methods used to intaract
with the front end so as to manipulate the dat awithin the application

## Requirements

For this database:

- Uses active-records to interact with the methods and simplify the code
- uses sinatra for easy sceleton creation and display fo data
- does the CRUD operations mainly get, post and delete
- updates data and stores data in the data base
- uses ruby as the main language

## Getting Started
For one to use this database one has to run the program in the local server. Clone 
the content in a local repository and run the local server (bundle exec rake server)
the use (// http://localhost:9292/) to access the json file created. This will create
a list of data or content that is to be displayed or used in the frond end application

### Backend Setup

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

you can run the front end server with this command

$ npm start

This runs a front end server that is mainly coded using react app
as the main programing language. 


## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/
