# README

rails s -p 3001

React Project!
You've made it! You're ready to build a React application! Before you start ideating, think about some of the project requirements.

Requirements
You've been through quite a few Project Modes by now and should have some idea how to think about scoping a project, what you can accomplish in a the designated time, and what is expected of you in terms of meeting complexity requirements.

The guidelines here are minimal but be sure that you:

Use a Rails API backend with a separate React frontend that are created in two different Github repositories.
Have at least three resources on the backend and your application must have full CRUD actions for at least one resource.
Must have atleast two different client-side routes (i.e. use react-router). Ex: even if your whole app is mostly a single page app, have the form to signup be found at /signup
Optional: Your application can have authentication/authorization. You are welcome to use an auth template as discussed in class.
It is highly suggested that any calls to 3rd party APIs are made through your backend.

Example: A user clicks a button that says 'Get Gifs'

React makes a request to Rails
Rails makes a request to the Giphy Api
Rails receives the response from Giphy and sends to React
React receives the response from Rails and you do something with it on the client
This is so you can avoid any CORS issues. If you are unable to hit an API from your React app due to a CORS restriction, it is very likely that it is impossible to do so. Brief Refresher on CORS: the idea is that from one domain (the port your webpack development server is running on) you are not allowed to access another domain. You must make the request from a server (i.e. Rails), so the request is exempt from the Same-Origin Policy restriction.

Backend Setup
rails new <my-project> --api -T --database=postgresql
Let's go through this in detail:

--api
Make a Rails 5 API, basically you're telling Rails you don't want any of the stuff you wouldn't need for an application where Rails is not rendering views. Think the ActionView library (form_for, link_to, etc..), ERB, Security protections that ensure forms were rendered by the Rails app, things like that.
-T
don't generate tests for this app
--database=postgresql
Set this up to use a Postgres (as opposed to SQLite) database. If you ever want to push this to Heroku, Heroku requires a Postgres database. There won't be too much difference in how you have to write your code. You'll have to be sure to run rails db:create and make sure you have postgres running (i.e you can see the elephant)
Be sure to do the necessary setup for the rack-cors-gem
You may want to use active-model-serializers
Frontend Setup
To create your React project, you may use a tool called create-react-app, an awesome project generator developed by Facebook. To use this

npm install -g create-react-app - this installs the generator as a global package
In the directory where you'd like to create your project, create-react-app my-project-client. It's that simple!
We'd reccommend to begin by removing any of the default stuff given to you by Create React App that you do not understand. The following are some really great resources on how to think about setting up a React project (Spoiler: They both say the same thing, "There's no right answer!")

React Docs This was written by Dan Abramov himself <3 <3 <3....
The 100% Correct Way to Structure a React App (or why there’s no such thing)
Notes
By default both your client app and your rails app will run on port 3000. You'll have to specify one or the other to run on a separate port.

Rails: rails s -p <some_number_thats_not_3000>
React: Check out this issue
A great article on how DHH thinks about setting up controllers in Rails

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
