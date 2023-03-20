# Pizza Restaurants API

This is a mini Rails API application that allows users to track pizza restaurants.

## Pre-Requisites
In order to use this repository you will need the following:


- Operating System **(Windows `10+`, Linux `3.8+`, or MacOS X `10.7+`)**
- RAM >= 4GB
- Free Space >= 2GB

## Built With
This application has been built with the following tools:

- **Ruby `v2.7.+`**
- **SQlite3 `v1.6`**
- **ActiveRecord `v7.0.4`**
- **Rails `v7.0.4.3`**
- **Puma `v6.1`**

## Setup
You can setup this repository by following this manual

1. Clone the repository
    ```{shell}
   git clone git@github.com:Rukorio-Vanessa/restaurants-pizzas.git
   ```
   - Navigate to
       ```{shell}
     cd restaurants-pizzas
     ```

2. To install all the required gem for this project run:
    ```{shell}
   bundle install
   ```
3. Perform any pending database migrations and seed the data
   ```{shell}
   rake db:migrate db:seed
   ```
4. Run the application
    ```{shell}
    rails s
    ```
5. Open the application from your browser at local host:
    ```
   http://127.0.0.1:3000
   ```

 ## Routes

You can access the following routes on you browser:

 - /restaurants
 - /restaurants/:id
 - /pizzas
 
 Using a tool like Postman or Thunder client you can test the above API endpoints including:
  
 - DELETE /restaurants/:id
 - POST /restaurant_pizzas

 ## Author
This repository is created and maintained by:

- [Vanessa Rukorio](https://github.com/Rukorio-Vanessa)   