**Note: Meet Pup is still a work in progress. Keep an eye on this page for updates!**
# Meet Pup

Meet Pup is a web application that provides a social network for dog owners. After signing up and setting up their own user and dog profiles, users  view profiles of other dogs who live near by, and message other Meet Pup members to arrange a play date for their dogs!

## Current features

* User sign up
* User log in
* User profile editing:
    * Username
    * Email
    * Password
    * Add/Edit dog profiles
* Dashboard (view other dogs in the database)

## To-do list

*  Restrict actions based on logged in users
*  Add image upload for dog profiles
*  Add button to remove dog profiles
*  Messaging
*  Add location for user profiles

## Running the Meet Pup server
### Setup
To run Meet Pup on your machine, please clone this repository and move into the `meet-pup` folder.

Run
```
bundle install
```
to install the Ruby Gems inside the `Gemfile`.

Next, run
```
rails db:migrate
```
to create the database required for Meet Pup.

### Run the server
Congratulations! You're now ready to go!

Simply run
```
rails server
```
inside the `meet-pup` folder to start your Meet Pup server.
