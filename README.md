# Tango-Baja-California

 A Ruby on Rails app that functions as a blog, activities/events calendar and store for a tango school. The app has an admin facing side that allows creation, editing and elimination of content + selling operations for the store; and a user facing side that allows browsing + buying operations for the store.

![Homepage](app/assets/images/demo/home.jpeg?raw=true "Homepage")


* Admin Privileges:

  - Create, edit and destroy Links to social media, biographical info and avatars of the school's teachers that are displayed on the Sidebar and the Home Page.

  - Create, edit and destroy Activities. These are classed according to three categories(), and includes a description, time and place, as well as an image or several images to represent it.

  - Create, edit and destroy Articles. These are classed according to three categories(), and includes a text, as well as an image or several images to represent it.

  - Create, edit and destroy Albums in which media, such as photos and videos can be stored and managed. These include a description.

  - Create, edit and destroy Media, such as photos and videos, to be included in an Album. Media consists of an attachment and include a description. 
  
 ![Galeria](app/assets/images/demo/galeria.jpeg?raw=true "Galeria")

  - Create, edit and destroy Events. These include a description, the name of the host, the start-time and the place, as well as an image to represent it.

  ![Calendar](app/assets/images/demo/calendar.jpeg?raw=true "Calendar")

  - Create, edit and destroy Products. The Product includes a description, the price, and an image to represent it. The admin can change the status of a Product from "active" to "inactive" when it is needful to withdraw it from offer.

  ![Products](app/assets/images/demo/products.jpeg?raw=true "Products")

  - Create, edit and destroy Stocks, the inventory of the specific items offered. Besides the amount in existence, Stocks specifies a "size" property for the product (since the store deals in clothing items).

  - Browse Orders that have been placed, with the customer's name, e-mail and address, separated into unfulfilled and fulfilled Orders. The admin can edit the Order to change it's status from "unfulfilled" to "fulfilled" as processing goes forward.

  ![Orders](app/assets/images/demo/orders.jpeg?raw=true "Orders")


* The User's experience:

  - In the Sidebar and the Home Page the user can view the biographical info and avatars of the school's teachers, and can access the links to the school's social media.

  - From the Sidebar the user can navigate to the many index pages showing the listing of Activities, Articles, Albums and Envents. They can then pick specific Activities or Articles to browse more in depth; Albums where they can browse media collections; specific Events listed on the calendar to obtain the information pertaining to them.

  - At the Products page the user can browse the image, description, and price of the Products offered by the school.

  - The User can select a specific Product to browse, he/she is then taken to a page where the larger and multiple images of the Product are displayed, a description, the sizes in which it is offered, and the price. If the User has decided to purchase the Product he/she add the item to the cart. 

  - After the user has picked the first item to ad to the cart, they can proceed immediately to the cart, or they can continue browsing other products, and, when satisfied, proceed to view the sum of items on their cart.

  - At the cart, the user can see the items he/she has chosen to buy, their price per unit, the quantity of each, and the total for the entirety of the order. The User is given the choice to remove individual items from the cart, to clear the cart in it's entirety, or to checkout.

  - When the user clicks "checkout" they are taken to the Stripe checkout page where they fill in all their information for payment and delivery purposes. They can then click on "Buy". If the operation is successful, they are notified that their puerchase was completed.


## Getting Started

To get a local copy up and running follow these simple steps:


### Prerequisites

* Ruby 3.1.1
* Rails 7.0.6
* Postgres
* Node.js
* Yarn
* Stripe


### Setup and Install

* Open your terminal - Windows: `Win + R`, then type `cmd` | Mac: `Command + space`, then type `Terminal`
* Navigate to a directory of your choosing using the `cd` command
* Run this command in your OS terminal: `git clone git@github.com:German-Cobian/Tango-Baja-California.git` to get a copy of the project
* Navigate to the project's directory using the `cd` command
* Install dependencies by running `bundle install`
* Run `rails yarn  install` to configure yarn for your environment
* Create the database in your environment by running `rails db:create`
* Migrate the database to your environment by running `rails db:migrate`
* Seed the app with data that is pre-packaged for its pages to display by running`rails db:seed`
* Execute `bin/dev` to fire up the server
* Visit `http://localhost:3000/` in your browser to get into the app
* If you obtain the error `ArgumentError in Categories#index` it means that the app did not get successfully seeded. Run `rails db:reset` to get it seeded
* Interact with the app using the links in the nav bar or included inside the pages.
* To close the server, enter `Ctrl + C` in your terminal


## Author

👤 **German Cobian**

* GitHub: [@German-Cobian](https://github.com/German-Cobian)
* Twitter: [@GermanCobian2](https://twitter.com/GermanCobian2)
* LinkedIn: [@german-cobian](https://www.linkedin.com/in/german-cobian/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/German-Cobian/E-Commerce-Rails/issues)


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

Conner Jensen [Fullstack E-Commerce: Ruby on Rails 7, Hotwire, Tailwind, Stripe, PostgreSQL](https://youtu.be/hURUMwdCWuI)


## 📝 License

This project is [MIT](https://github.com/German-Cobian/Tango-Baja-California/blob/main/LICENSE) licensed.
