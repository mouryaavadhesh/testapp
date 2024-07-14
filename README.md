
Movie App
This Flutter project is a simple movie app that displays a list of movies fetched from an external API (you'll need to provide your own API endpoint). Users can filter the movie list by title or location.
Features
Fetch Movie Data: Retrieves movie information from an API.
Display Movie List: Presents a list of movies with details like title, release year, actors, etc.
Filtering: Allows users to search and filter movies by title or location.
UI Design: Implements a clean and user-friendly interface with cards for each movie.
Getting Started
Clone the Repository:https://github.com/mouryaavadhesh/testapp.git
Install Dependencies: flutter pub get
Update API Endpoint:
Open the movie_repo.dart file and replace 'your_api_endpoint' with the actual URL of your movie API.
Project Structure
lib/: Contains the main Flutter source code.
data/: Handles data fetching and parsing.
movie_repo.dart: Repository for interacting with the movie API.
domain/: Defines business logic and models.
models/movie_response.dart: Model class for representing movie data.
presentation/: Contains UI components and state management.
screens/: Screens of the app (e.g., movie list screen).
widgets/: Reusable UI widgets