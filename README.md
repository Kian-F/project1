----
# Simple Transfer Market

## Table of Contents
- Introduction
- Screenshots
- Technologies
- Gems
- Key Features
- Learnings
- Further Development


# Introduction
A web app that allows users(agents) to create an account and add their clients' s(football players) with their market value, current club, position, etc to the database.  The other users can see a detailed list of the players and sort the list. It utilizes thesportsdb API.
### [Live Site - hosted on Heroku](https://simple-transfer-market.herokuapp.com/).
## Screenshots

#### Home
![Home page](/app/assets/images/project1-homepage.JPG)
#### Table
![All Players](/app/assets/images/project1.png)
#### Add New Player
![Add new Player](/app/assets/images/project1-addPlayer.JPG)

## How to get started
### Feel free to clone this repository.

To run locally, run the following in the root directory in the terminal:

1. npm install
2. bundle install
3. rails db:create
4. rails db:migrate
5. rails db:seed
6. rails s

## Motivation
The aim of this project was to deliver an app that:

- Implemented at least 3 models, with associations
- Is a CRUD system in Rails
- Handles invalid data
- Uses Gems
- Has basic authentication and authorisation
- Is deployed to Heroku
##### This was my second project at General Assembly's Software Engineering Immersive course at Sydney.

## Technologies
* Ruby on Rails
* [Bootstrap](https://getbootstrap.com/)
* SCSS
* JavaScript
* jQuery
* thesportsdb API(https://www.thesportsdb.com/api.php)

## Gems
* [httparty](https://github.com/jnunemaker/httparty) - used with thesportsdb API
* Bcrypt - for user authentication

## Key Features
* **Discovery home page** - explore latest sport's news from the most famous sports websites. 
* **Custom lists** - create custom lists of players for each agents.
* **List of Players** - create a list of players based on their market value. The list is sortable

## Learnings
* Model-View-Controller in the context of Ruby on Rails
* Manipulation of hashes and arrays in Ruby
* Use of multiple models and associations
* Styling using Bootstrap
* Form creation and validation
* Using and navigating thesportsdb API

## Further Development
* **Search** - adding search function.


----

