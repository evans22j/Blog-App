![](https://img.shields.io/badge/Microverse-blueviolet)

# Blog-app


## Description

> The Blog app will be a classic example of a blog website. You will create a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.

## Learning objectives

- Diagram a data model clearly and explain what it's doing.
- Understand how to use medium-fidelity wireframes to create a UI.
- Use controllers to handle requests and render empty views.
- Install Ruby on Rails framework.
- Use Ruby Gems as a software packages system.
- Understand Rails naming conventions.
- Use params from browser requests in a safe way.
- Write tests for controllers.
- Understand what ORM is.
- Use database migration fails to maintain database schema.

## Getting Started

To get a local copy for this project and running follow these simple example steps.

### Prerequisites

- You need to have git installed in your machine.
- Install a recent version of Postgres.
- Already install Rails


## Setup

## Setting Up PostgreSQL

- The postgres installation doesn't setup a user for you, so you'll need to follow these steps to create a user with permission to create databases

```bash
$  sudo -u postgres createuser blog-app -s
```


### Clone this repository

```bash
$ git clone https://github.com/evans22j/Blog-App.git
$ cd Blog-app
```

### Creating the hello-rails Application

- use PostgreSQL database 

```bash
$   rails new hello-rails --database=postgresql  #or
$   rails new hello-rails -d postgresql

$   cd hello-rails # Move into the application directory
```

### Install linter

```bash
$  bundle init
$  bundle install
```

- Run linter

```bash
$  rubocop .
```

- In auto-correct mode, RuboCop will try to automatically fix offenses:

```bash
$ rubocop -A
# or
$ rubocop --auto-correct-all
```


### Create the database

```bash
$   rails db:create   # or
$   rake db:create
```

### Starting up the Web Server

```bash
$   rails s # or
$   rails server 
```


#### Generate Controller

- We need a Controller. Since everything goes through that, let's go ahead and generate one:

```bash
$  rails generate rspec:install
```
- This should give us a Controller and a View


#### Listing Existing Routes

- You can now visit `http://localhost:3000` to view your new website!

 You can also execute the `rails routes` command in your terminal to produce the same output.



#### Generate rspec

- At the first you need to include those lines in your Gemfile

```bash
  gem 'rails-controller-testing'
  gem 'rspec-rails'
```
- Then run:

```bash
$  rails generate rspec:install
```
- This should generate some files that you will need to run your tests

#### Generate migration files

```bash
  $  rails generate migration CreateUsers
  $  rails generate migration CreatePosts
  $  rails generate migration CreateLikes
  $  rails generate migration CreateComments
  $  rails generate migration AddUserRefToComments
  $  rails generate migration AddPostRefToComments
  $  rails generate migration AddUserRefToLikes
  $  rails generate migration AddPostRefToLikes
  $  rails generate migration AddUserRefToPosts
```
### Generate Model

```bash
  $  rails generate model User name  photo bio:text posts_counter:integer  
  $  rails generate model Post  title  text:text comments_counter:integer likes_counter:integer author:references
  $  rails generate model Like author:references post:references 
  $  rails generate model Comments text:text author:references post:references
```

#### Generate Schema

To push the Migration into the database
```bash
  $   rails db:migrate
```
## Built With

This project is build with:

-  ![Ruby](https://img.shields.io/badge/-Ruby-000000?style=flat&logo=ruby&logoColor=red)
-  ![Ruby on Rails](https://img.shields.io/badge/-Ruby_on_Rails-000000?style=flat&logo=ruby-on-rails&logoColor=blue)

## Authors

👤 **Evans Sitibekiso**

- GitHub: [@evans22j](https://github.com/evans22j)
- Twitter: [@Evans_22J](https://twitter.com/Evans_22J)
- LinkedIn: [@Evans Sitibekiso](https://www.linkedin.com/in/evans-sitibekiso/)

## 🤝 Contributor


Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/evans22j/Blog-App/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Thanks to microverse for this project
- Inspiration
- etc

## 📝 License

This project is [MIT](https://github.com/microverseinc/readme-template/blob/master/MIT.md) licensed.
