# weather_app_demo

A Weather App

A simple weather app that shows the weather of a place according to user input

funcionalities:
=> Get the device location and gets weather of that location
=> Get the weather of places the user inputs in the search box
=> Ability to choose different languages

Packages used:
=> Bloc for state management
=> Geolocator for location access
=> Geocoding for getting the place name using its location coordinates
=> Hive for storing data locally.

working of the app.

On initalising the app the user will be taken to the search page where user can search for a place or choose to search using device location. it will navigate to the next page where the weather data will be shown. The user will also get a choice to select the language they want in the search page. While in the weather ui page, the user can click on the search button to go back to search page so they can search the weather of another place. The last searched data will be stored in local database so that the next time user opens the app. It will take you straight to the users page w