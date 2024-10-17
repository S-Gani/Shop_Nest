# Shop Nest - E-Commerce Full Stack Web Application

## Overview

**Project**: Shop Nest E-Commerce Full Stack Web Application

**Technologies Used**:
- Java SE
- Visual Studio
- Java EE (Servlets & JSPs)
- Oracle Database

**Description**:
Shop Nest is a full-fledged e-commerce platform that allows users to browse products, manage their shopping carts, make payments, manage orders, create and manage user accounts, and access customer support. The application serves as an online marketplace where customers can purchase items seamlessly and manage their shopping experience efficiently.

---

## Features

### 1. **Product Catalog**
   - Display a wide range of products categorized for easy navigation.
   - Features product filtering and sorting options.

### 2. **Shopping Cart**
   - Add products to the cart for easy purchasing.
   - View and manage the contents of the shopping cart.

### 3. **Payment Gateway Integration**
   - Users can securely make payments via integrated payment gateways (e.g., PayPal, Stripe).

### 4. **Order Management**
   - Manage order statuses, including pending, shipped, and delivered.
   - View past orders and track current ones.

### 5. **User Accounts**
   - Create and manage user profiles.
   - Login/logout, password recovery, and user settings.

### 6. **Customer Support**
   - Provide users with a ticketing system for customer queries and support.

---

## Architecture

### **Frontend**:
- **Java EE**: Servlets and JSPs are used for rendering views and handling HTTP requests.
- **HTML/CSS/JavaScript**: For the user interface and interactivity.

### **Backend**:
- **Java SE & Java EE**: The core logic of the application is written in Java. Java Servlets handle the backend operations like form submissions, order processing, and interacting with the database.
- **Oracle Database**: Used for storing user data, product information, orders, and payment details.

---


## Setup Instructions

### Server Requirements:
1. **Java Development Kit (JDK)**: Make sure you have JDK installed (version 8 or higher).
   - [Download JDK here](https://www.oracle.com/java/technologies/javase-downloads.html)
   
2. **Oracle Database**:
   - Set up Oracle Database to store the product and user data.
   - Configure the necessary tables and relationships for the application.
   
3. **Java EE Server (e.g., Apache Tomcat or GlassFish)**:
   - Install a Java EE server such as Apache Tomcat for hosting the servlets and JSPs.
   - Configure the server to run your web application.

### Running the Application:
1. Clone or download the repository to your local machine.
2. Open the project in your IDE (e.g., Visual Studio or Eclipse).
3. Build and run the project using the IDE.
4. Deploy the application to your Java EE server.

### Database Configuration:
1. Import the provided Oracle SQL scripts to set up the database.
2. Configure the database connection in your Java EE server's `web.xml` or through a `DataSource` class.
3. Ensure that the database connection details (username, password, JDBC URL) are correctly set in the project.

---

## Tools and Technologies

- **Java SE**: The core language for both backend and frontend logic.
- **Java EE**: Servlets & JSPs used for creating dynamic web pages.
- **Visual Studio**: IDE used for code development.
- **Oracle Database**: For storing and querying data like products, user accounts, and orders.

---

## Contributing

If you'd like to contribute to this project:
1. Fork the repository.
2. Create a new branch for your feature.
3. Make changes and commit them to your branch.
4. Push the changes to your fork.
5. Create a pull request to the main repository.

---

## Contact

For more information, questions, or support regarding the Shop Nest application, feel free to contact.
