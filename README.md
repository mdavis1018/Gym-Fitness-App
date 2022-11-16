# <Gym-Fitness-App>

Describe your app here. (What is your 1 minute “elevator pitch” of your capstone project? What problem does it solve? What inspired you to build it?)

Describe the technologies you used to build your app (Ruby on Rails backend, React.js frontend, any libraries, APIs, etc.)

One technology that I used in this project was the jb" gem. I recommend all developers to install this gem when making a backend using Rails because it greatly simplifies the calls you make on your frontend. For example, in one of my React.Js files I was trying to get the workouts/index, workouts_details/index days/index and users/index information. If I had made seperate calls to my backend using a different function each time using numerous different requests it would slow down my application and make my code look very messy. Instead, by using the jb files that are created when you run 
 ```
 rails generate jb #{Model-Name} 
``` 


Optional: Add screenshots or gifs of your application

This app is a fitness-app. It allows users to create workouts and choose from a list of exercises to add to their workout. Each workout can be scheduled for a particular date and the user can create a workout rotation/schedule. (Future: The app allows the user to set goals and track their progress. For example, if the user wants to lose/gain weight they can create a roadmap and then input data weekly and compare their stats with their created plan's trajectory and see if they are on track.)

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Roadmap

- allow the user to set goals and track their progress. For example, if the user wants to lose/gain weight they can create a roadmap and then input data weekly and compare their stats with their created plan's trajectory and see if they are on track.
- allow user to edit their workout details
- allow user to see other user's workouts depending on if the user has set their workout to public or private
- allow the user to link to his spotify using the spotify API so they can show other users what music they listened to for a workout



# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
