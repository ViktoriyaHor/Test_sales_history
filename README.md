# Sales history

A simple interface with a monthly sales schedule with the ability to change the display scale on the scale of Sum Trans Total extax value for more convenient use

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must install ruby 2.6.3 and gem install bundler. 

### Installing

A step by step series of examples that tell you how to get a development env running

Create gemset test_sales_history and install gem's. 
Execute commands:

```
$ rvm gemset create test_sales_history
$ rvm use 2.6.3@test_sales_history
$ bundle
```
Then execute commands for db seed:

```
$ rake db:create
$ rake db:migrate
$ rake db:seed
```
Navigate to a website

```
$ curl https://damp-anchorage-55465.herokuapp.com/
```
You should get:

The graph rendered

You can pass by the parameter the maximum value on the scale Trans Total extax value. For example params[:max] = 20000

```
$ curl https://damp-anchorage-55465.herokuapp.com/?max=20000
```
Getting plot with max Trans Total extax value 20000:

The graph with max Trans Total extax value rendered

## Running the tests

Please do to run the automated tests for this system (model's and controller's tests)

```
$ rspec spec -fd
```
## Deployment

I deployed on Heroku
https://damp-anchorage-55465.herokuapp.com

## Built With

I used Ruby 2.6.3, Rails 6, MySQL, Bootstrap4, to make plots - gem 'chartkick', for the tests - rspec

## Author

Viktoriya Khoroshun

