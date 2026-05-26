# User Registration Web Application

A lightweight Java-based web application built using the MVC (Model-View-Controller) architecture pattern. The application enables users to fill out a registration form, saves their personal details and addresses to a MySQL database using Hibernate/JPA, and displays the registered profiles in both summarized and detailed view formats.

---

## 🚀 Features

* **User Registration:** A structured web form utilizing HTML5 pattern input validation and the `flatpickr` library for an intuitive date-of-birth picker calendar.
* **Database Integration:** Separates and persists user core profiles (`User`) and contact addresses (`Addresses`) using JPA/Hibernate ORM mappings.
* **Dynamic Data Presentation:** Server-side generation of tabular data lists with clean, responsive multi-page navigation.
* **Detailed View Inspection:** Clean navigation to drill down into a specific user profile to view relational data dynamically linked by active session parsing.

---

## 🛠️ Technical Specifications

### Architecture & Layers
* **Presentation Layer:** JavaServer Pages (JSP 2.3), CSS3, Vanilla JavaScript (integrated with Flatpickr CDN)
* **Controller Layer:** Java Servlets (`HttpServlet` API 4.0)
* **Data Access Layer:** Service-Repository Pattern leveraging JPA / Hibernate Object-Relational Mapping (ORM)
* **Build & Dependency Management:** Apache Maven

### Technology Stack
* **Language:** Java
* **Backend Server:** Apache Tomcat
* **Database Management System:** MySQL
* **Persistence Framework:** Hibernate (JPA 2.1)

---

## 📂 Project Structure

```text
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── dkak
│       │           ├── Addresses.java                  # Address Entity
│       │           ├── DisplayDetailedUserServlet.java   # Controller for single user lookup
│       │           ├── DisplayUsersServlet.java        # Controller for listing all users
│       │           ├── InsertServlet.java              # Controller for user registration
│       │           ├── User.java                       # User Profile Entity
│       │           ├── UserRepository.java             # JPA Database interactions
│       │           └── UserService.java                # Layer decoupling logic from repo
│       ├── resources
│       │   └── META-INF
│       │       └── persistence.xml                 # JPA Configuration & DB connection
│       └── webapp
│           ├── WEB-INF
│           │   └── web.xml                         # Servlet mapping configuration
│           ├── displayDetailedUser.jsp             # User single view page
│           ├── displayUsers.jsp                    # Tabular list view of all users
│           ├── homePage.jsp                        # Welcome page / Application entrance
│           ├── registerUser.jsp                    # Form for user sign-ups
│           ├── script.js                           # Third party JS configuration (Flatpickr)
│           └── style.css                           # Frontend stylesheet
└── pom.xml                                         # Maven Project Object Model file
```
---

## ⚙️ Setup & Installation

### 1. Database Configuration
1. Open your MySQL client and create a database named `edprojectdb`:
   ```sql
   CREATE DATABASE edprojectdb;
   ```
2. Update the credentials if your root MySQL instance uses a different user or password than default. Modify the target properties inside `src/main/resources/META-INF/persistence.xml`:
   ```xml
   <property name="javax.persistence.jdbc.user" value="YOUR_DB_USER"/>
   <property name="javax.persistence.jdbc.password" value="YOUR_DB_PASSWORD"/>
   ```

### 2. Build the Project
Compile and package the application using Maven to generate your deployable `.war` binary artifact:
```bash
mvn clean package
```
This generates a file named `project1.war` inside the `target/` directory.

### 3. Deployment
1. Move/copy the generated `project1.war` artifact into your local Apache Tomcat server configuration directory (`/webapps`).
2. Boot up your Tomcat server engine instance.
3. Access the running instance directly through your default designated web browser using your active host endpoint route:
   ```text
   http://localhost:8080/project1/
   ```
