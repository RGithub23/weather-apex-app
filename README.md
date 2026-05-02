# Weather-apex-app
Oracle APEX app which can generate weather data
# WeatherUI

### A modern Oracle APEX weather dashboard powered by real-time API data

---

## Product Preview

![WeatherUI Demo](images/demo.png)

---

## What is WeatherUI?

**WeatherUI** is a lightweight, interactive weather dashboard built using **Oracle APEX**.

It allows users to search any city and instantly retrieve:
- Live temperature   
- Latitude & longitude  
- City information 
- Real-time API response  

Designed as a **portfolio-ready low-code application**, demonstrating API integration inside Oracle APEX.

---

## Live Demo

https://rgithub23.github.io/weather-apex-app/

---

## Key Features

-  Search weather by city name  
-  Real-time API integration  
-  Clean dashboard-style UI  
-  Latitude & longitude display  
-  Lightweight PL/SQL backend  
-  Secure API handling (no exposed keys)

---

##  Tech Stack

- Oracle APEX  
- PL/SQL  
- SQL  
- REST API integration  
- External Weather API (Cohere-based service layer)

---

##  Project Structure

weather-apex-app/
- app
- f104.sql
- db
- weather_api_pkg.sql
- images
- demo.png
- README.md

---

##  Setup Instructions

### 1. Import database package
- Run the PL/SQL script in Oracle APEX:
- App Builder → Import -> app/f104.sql
- SQL workshop -> SQL Scripts -> Upload weather_api_pkg.plb
- SQL workshop -> SQL Scripts -> weather_api_pkg.sql
- Open the PL/SQL package body and replace YOUR_API_KEY_HERE with free API key from https://home.openweathermap.org/api_keys
- App will the full install.

##   Architecture Overview

This project demonstrates:

- Server-side API handling using PL/SQL
- Oracle APEX page-based UI development
- Separation of frontend and backend logic
- Secure handling of external credentials
- Lightweight REST-driven architecture

##   Author

- Built as a portfolio project demonstrating Oracle APEX development.

##   License

- This project is licensed under the MIT License for educational and portfolio use.

