# CSC4402 Database Project

## Introduction

uses this template: https://github.com/sadief630/Example4402Project

## Prerequisites

Before running the project, ensure you have the following prerequisites installed on your system:

- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-downloads.html) - version 11 or higher.
- [Node.js](https://nodejs.org/) - version 14 or higher. 
- [npm](https://www.npmjs.com/) - This is included with Node.js.
- [IntelliJ IDEA](https://www.jetbrains.com/idea/download/) - Recommended for running and building the backend4402 Spring Boot application.
- [Visual Studio Code](https://code.visualstudio.com/download) - Used to develop the frontend4402 UI.

## Getting Started

Follow these steps to get the project up and running:

### Backend (Spring Boot)

1. Open the backend4402 folder (aka the Spring Boot project) as a JAVA PROJECT in your preferred Java IDE. I used IntelliJ and heavily recommend it.

2. Build the project using Maven and run the Spring Boot application by running the main class. This will run the backend server on port 8080.

### Frontend (React)

1. Open a terminal and navigate to the `frontend` directory in our project, or open the frontend4402 folder in Visual Studio Code and open a new terminal. I used Visual Studio Code for all frontend development.

2. Install project dependencies by running:
    
    npm install

3. Start the React development server by running:

    npm start

This will start the frontend application on port 3000. Make modifications to the react project by using an editor like VSCode.

### Database Configuration

By default, this project uses an in-memory H2 SQL database for development. We configured the default database settings in `application.properties` file in the backend project.
Two files load and populate the database, located under the resources folder in the backend. There is `schema.sql` and `data.sql`, which creates the schema and adds dummy data to the
database. To create the schema and sample data for your database, you will need to change these files.

### Accessing the Application User Interface

- Once you have the frontend and backend running, open your web browser and go to [http://localhost:3000](http://localhost:3000) to access the frontend.

### Accessing the Database console

- Once you have the frontend and backend running, open your web browser and go to [http://localhost:8080/h2-console](http://localhost:8080/h2-console) to access the database console (not required).
- The h2 console is used for testing the example queries.
- The credentials to login to the h2 console should be as follows: url: `jdbc:h2:mem:highschool` username: `user` (and no password, so leave blank)

### Additional Notes
- In order for the project to work, you must have both the frontend running on port 3000 and the backend running on port 8080.
  
## Usage

- Use the web interface to add, view, update, or delete records in the database.

## Authors

- Example project for class created by Sadie Forbes
- Cathleen Foret, Grant Candies, Robert Breaux, Cole Collins, Halle Vu 
