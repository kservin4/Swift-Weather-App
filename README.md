# Swift-Weather-App

SUMMARY OF THE WEATHER APP PROJECT
  -
  - Developed a fully functional weather app that dynamically fetches weather data based on the user's location.
  - The project leverages Apple's Core Location framework to retrieve the user's coordinates. These coordinates are then used to request current weather information  from the OpenWeather API.

WHAT I DID IN THIS PROJECT
 - 
 - Implemented a location manager to retrieve the user's GPS coordinates.
 - Created a weather manager to handle API calls for weather data.
 - The API connection in this weather project is established using Swift's async functionality to make network requests to OpenWeather API. 

FILES
  -   
  - LocationManager.swift: This file is responsible for handling everything related to obtaining the user’s location.
  - The class is defined to conform to NSObject, ObservableObject, and CLLocationManagerDelegate. This allows the manager to use Apple's Core Location framework while notifying SwiftUI views of any changes.
  - Two @Published properties are set up—one for storing the user's current location and another Boolean (isLoading) to track if the location request is in progress.
  - An initializer configures the internal CLLocationManager by setting its delegate. A requestLocation() function is added to trigger a location request. The delegate methods are implemented to handle location updates and some errors.
