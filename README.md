# Swift Weather App

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
Location Manager Folder
  - LocationManager.swift: This file is responsible for handling everything related to obtaining the user’s location.
  - The class is defined to conform to NSObject, ObservableObject, and CLLocationManagerDelegate. This allows the manager to use Apple's Core Location framework while notifying SwiftUI views of any changes.
  - Two @Published properties are set up—one for storing the user's current location and another Boolean (isLoading) to track if the location request is in progress.
  - An initializer configures the internal CLLocationManager by setting its delegate. A requestLocation() function is added to trigger a location request. The delegate methods are implemented to handle location updates and some errors.

Views Folder
  - WelcomeView:  A SwiftUI view was created where the user is prompted to share their current location. This view uses the Core Location UI elements (like LocationButton) to ask for permissions. When the button is tapped, it calls the requestLocation() method from the Location Manager.
  - ContentView:  In the main ContentView, the Location Manager is instantiated using @StateObject, allowing the view to update automatically when the location is obtained. The view uses conditional logic, if a location is available, it proceeds with fetching weather data. If not, it shows the welcome prompt or a loading indicator.
  - LoadingView:  A separate SwiftUI view is created to display a ProgressView with a circular shape, providing user feedback while waiting for the location or weather data

Weather manager & API integration
  - WeatherManager: This class is created to handle calls to the OpenWeather API.
  - Inside this class, a function like getCurrentWeather(lat, long) is defined. Using Swift’s async mechanism.
  - Once a valid location is detected in ContentView, the view uses a .task { } modifier to invoke the weather API call asynchronously. When the weather data is returned, the state variable is updated, triggering a SwiftUI re-render.

UI formatting
  - WeatherView uses a ZStack and VStacks to build a layered layout including the top half (city name, date, temperature, and weather icon) and bottom half (detailed rows for minimum/maximum temperature, wind speed, and humidity)
  - An additional file (named Extensions.swift) is added to create useful functions, such as an extension on the Double type for rounding temperature values and formatting them for display.

FUNCTIONALITY
  -
  - The image to the left is the welcome view that the user first sees. Once they click "Share Current Location", the app uses their coordinates and the API to retrieve the current weather in their exact location as shown on the right image.

<img width="340" height="543" alt="image" src="https://github.com/user-attachments/assets/abd54a73-16c1-4bd0-8926-ba08df2b806b" />
<img width="340" height="540" alt="image" src="https://github.com/user-attachments/assets/f175e63e-58bc-4b51-bdb9-3f0f40428d04" />

