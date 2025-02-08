# Metro Vancouver Restaurant Finder (MVRF)

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Market Analysis](#market-analysis)
- [Tech Stack](#tech-stack)
- [Setup & Installation](#setup--installation)
- [Difficulties & Challenges](#difficulties--challenges)
- [What We Achieved](#what-we-achieved)
- [Testing](#testing)
- [Limitations & Future Improvements](#limitations--future-improvements)
- [Team](#team)
- [Screenshots](#screenshots)

## Introduction
Metro Vancouver Restaurant Finder (MVRF) is a web application designed to help users find restaurants in Metro Vancouver while focusing on dietary restrictions and preferences. Users can create an account to store their preferences and access information about their saved restaurants.

## Features
- **User Authentication**: Sign up and log in securely.
- **Restaurant Search**: Filtered search results based on dietary restrictions.
- **Restaurant Management**: Site administrators can add, modify, and remove restaurants.
- **User Preferences**: Save favorite restaurants and filter search results accordingly.
- **Interactive Maps**: Uses Mapbox API for location services.

## Market Analysis
Existing restaurant-finding platforms like Yelp, Google Maps, and TripAdvisor do not consistently offer filtering options for dietary restrictions and allergies. Our application fills this gap by prioritizing these filters in searches.

## Tech Stack
### **Front-End**
- HTML
- CSS
- JavaScript
- Embedded Ruby (ERB)

### **Back-End**
- Ruby on Rails 7.1.1
- PostgreSQL database
- Hosted on Render.com
- Mapbox API (Geocoder and Mapkick gems for location services)
- Google Fonts API

## Setup & Installation
### Prerequisites
- Ruby 3.2.2
- Rails 7.1.1
- PostgreSQL
- Bundler

### Installation Steps
1. Clone the repository:
   ```sh
   git clone <repository-url>
   cd MVRF
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Set up the database:
   ```sh
   rails db:create db:migrate db:seed
   ```
4. Start the development server:
   ```sh
   rails server
   ```
5. Access the application at `http://localhost:3000`

## Difficulties & Challenges
- **Learning Ruby on Rails**: The team had no prior experience with Rails.
- **Setting up PostgreSQL**: Database configuration challenges.
- **API Integration**: Choosing and implementing an API.
- **Project Scope Management**: Adjusting expectations due to time constraints.

## What We Achieved
- A functional, user-friendly web application.
- A well-designed front-end with consistent elements and themes.
- Authentication system with user role management (User & Site Administrator).
- Search functionality filtering restaurants based on dietary needs.
- Effective use of GitLab for collaboration and version control.

## Testing
- **Unit and Functional Testing**:
  - User login and signup.
  - Viewing restaurant information.
  - Searching for restaurants.
  - Updating user information.
- Due to time constraints, we could not implement CI/CD workflows but ensured core functionality was covered.

## Limitations & Future Improvements
- **Advanced Recommendation Algorithm**: Currently not implemented.
- **Additional User Roles**: Planned roles like Restaurant Owners were not implemented.
- **User Reviews**: Currently, users cannot submit or view reviews.
- **Google Maps Integration**: We opted for Mapbox due to high costs and complexity.
- **Real-Time Data Fetching**: Currently relies on manually inputted data instead of online sources.
- **Sorting & Filtering**: More advanced search filtering is planned for future updates.

## Team
- **Trent Carlson** - Team Leader & Developer
- **The Vi Phung** - Developer
- **Milan Lort** - Developer
- **Alexandra Chamchorine** - Developer
- **Thu Hoai An Nguyen** - Developer

## Contributions
We used GitLab for version control, issue tracking, and pull requests to collaborate efficiently. Weekly meetings and daily discussions via Discord helped us stay on track. This project has been added to GitHub for visibility.

## Screenshots

### Landing
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/landing.png)

### Search Restaurants
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/search-restaurants.png)

### Login
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/login.png)

### Sign Up
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/signup.png)

### My Account
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/my-account.png)

### About Us
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/about-us.png)

### FAQ
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/faq.png)

### Contact Us
![](https://github.com/t-trent/MVRF-Ruby/blob/main/public/contact-us.png)
