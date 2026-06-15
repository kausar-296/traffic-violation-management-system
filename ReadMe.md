\# Traffic Violation Management System



\## Overview



The Traffic Violation Management System is a Database Management System (DBMS) project developed using MySQL. The system stores vehicle owner information, vehicle details, traffic violation rules, and records of traffic violations.



The project aims to digitize traffic violation management, reduce manual record keeping, and help identify repeat offenders.



\---



\## Objectives



\* Maintain records of vehicle owners and vehicles.

\* Store traffic violation rules and fines.

\* Record traffic violations committed by vehicles.

\* View violation history.

\* Track repeat offenders.



\---



\## Sustainable Development Goals (SDGs)



This project supports the following United Nations Sustainable Development Goals (SDGs):



\* \*\*SDG 3: Good Health and Well-Being\*\*



&#x20; \* Promotes road safety and reduces accidents.



\* \*\*SDG 11: Sustainable Cities and Communities\*\*



&#x20; \* Contributes to safer and better-managed urban transportation.



\* \*\*SDG 16: Peace, Justice and Strong Institutions\*\*



&#x20; \* Encourages transparent and efficient law enforcement.



\* \*\*SDG 9: Industry, Innovation and Infrastructure\*\*



&#x20; \* Supports digital infrastructure and smart city initiatives.



\---



\## Technologies Used



\* MySQL 8.0

\* MySQL Command Line Client

\* Git \& GitHub

\* Visual Studio Code



\---



\# Traffic Violation Management System



\## ER Diagram



!\[ER Diagram](screenshots/ER\_diagram.png)



\## Database Tables



!\[Vehicle Owner Table](screenshots/vehicle\_owner\_table.png)



!\[Vehicle Table](screenshots/vehicle\_table.png)



!\[Traffic Violation Table](screenshots/traffic\_violation\_table.png)



!\[Violation Entry Table](screenshots/violation\_entry\_table.png)



\## Violation History Output



!\[Violation History Table](screenshots/violation\_history\_table.png)



\---



\## Database Schema



\### Tables



\#### VehicleOwner



Stores information about vehicle owners.



Attributes:



\* owner\_id (Primary Key)

\* owner\_name

\* address

\* mobile\_number

\* email

\* driving\_license\_number



\---



\#### Vehicle



Stores information about vehicles.



Attributes:



\* vehicle\_id (Primary Key)

\* number\_plate

\* vehicle\_name

\* vehicle\_model

\* registration\_date

\* owner\_id (Foreign Key)



\---



\#### TrafficViolation



Stores traffic rules and fine amounts.



Attributes:



\* violation\_id (Primary Key)

\* violation\_rule

\* fine\_amount

\* violation\_details



\---



\#### ViolationEntry



Stores records of traffic violations.



Attributes:



\* entry\_id (Primary Key)

\* violation\_datetime

\* vehicle\_id (Foreign Key)

\* violation\_id (Foreign Key)



\---



\## Features



\* Vehicle owner management

\* Vehicle registration management

\* Traffic violation tracking

\* Fine management

\* Violation history view

\* Repeat offender identification



\---



\## SQL Concepts Used



\* DDL (CREATE DATABASE, CREATE TABLE)

\* DML (INSERT)

\* Constraints



&#x20; \* PRIMARY KEY

&#x20; \* FOREIGN KEY

&#x20; \* UNIQUE

&#x20; \* NOT NULL

&#x20; \* CHECK

\* Views

\* SELECT Queries



\---



\## View Created



\### ViolationHistory



Displays:



\* Vehicle number plate

\* Violation rule

\* Date and time of violation



\---



\## Future Scope



\* Online fine payment system

\* SMS and email notifications

\* Police dashboard

\* Mobile application integration

\* Automatic detection using CCTV cameras



\---



\## Team Members



\* Kausar Jehan

\* Umama Nooreen



\---



\## Conclusion



The Traffic Violation Management System demonstrates the application of database management concepts in solving real-world traffic monitoring problems. The project improves record management, enhances transparency, and supports road safety initiatives.

