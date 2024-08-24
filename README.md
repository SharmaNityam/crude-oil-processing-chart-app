# Crude Oil Processing Chart App

## Project Overview
This Flutter application displays a bar chart visualizing the crude oil processing data fetched from an API. The app uses the Riverpod state management framework and fl_chart package for charting. The UI is currently basic but functional, with plans for updates in the future to enhance the user experience.

## Table of Contents
- [Features](#features)
- [Architecture](#architecture)
- [File Structure](#filestructure)  
- [Screenshots](#screenshots)

## Features:
Data Visualization: Displays crude oil processing data in a bar chart.
API Integration: Fetches data from a remote API.
Responsive UI: Designed to look great on both mobile and tablet devices.
Error Handling: Provides user-friendly error messages when data cannot be fetched.

## Architecture
The app follows a clean architecture pattern with the following key components:

Provider and Riverpod: Used for state management and dependency injection.
API Service: Handles data fetching from a REST API.
Models: Represents the data structure for the chart.
Screens: UI components that display the chart and handle user interaction.

## File Structure
```sh
lib/
│
├── main.dart              # Entry point of the application 
├── app.dart               # Sets up the MaterialApp with theme and router
├── router.dart            # Manages app routing using GoRouter
├── screens/
│   ├── home_screen.dart   # Home screen with a button to view the chart
│   └── chart_screen.dart  # Screen that displays the bar chart
├── services/
│   └── api_service.dart   # Handles API calls
├── models/
│   └── chart_data.dart    # Model for parsing API response data
├── providers/
│   └── chart_provider.dart # Manages state for chart data
```
## Screenshots
<!-- Home Screen Screenshot -->
<img src="https://github.com/user-attachments/assets/6fc1b0ed-e2cd-4e3e-9f2c-063f4547e5cb" alt="Home Screen" width="600" height="180"/>

<!-- Chart Screen Screenshot -->
<img src="https://github.com/user-attachments/assets/2be1fd18-36d7-4f23-a59e-15d637fd7257" alt="Chart Screen" width="600" height="180"/>

