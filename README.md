# MovieZDTV
# MovieZDTV (tvOS POC)

## Overview

MovieZDTV is a simple Apple TV (tvOS) proof of concept that displays movie data from The Movie Database (TMDB) and plays a demo video.

The goal of this project is to demonstrate a clean, minimal implementation of:

* Remote data fetching
* tvOS navigation
* Video playback
* Basic analytics

---

## Tech Stack

* SwiftUI (tvOS)
* TMDB API (The Movie Database)
* AVKit (video playback)
* Firebase

  * Analytics
  * Crashlytics

---

## Features

* Browse trending movies
* Navigate to a movie detail screen
* Play a demo video (not related to the movie)
* Track basic user interactions
* Crash reporting enabled

---

## App Flow

Home → Detail → Video Player

---

## Setup

1. Clone the repository

2. Add your TMDB API key
   Replace `YOUR_API_KEY` in the networking layer.

3. Add Firebase config
   Include your `GoogleService-Info.plist` file in the project.

4. Run the app on an Apple TV simulator or device

---

## Notes

* This is a POC, not a production-ready app
* No user authentication is implemented
* Data is read-only from TMDB
* Video content is static/demo only

---

## Future Improvements (Optional)

* Remote Config for feature toggling
* Better UI polish for tvOS focus
* Caching for images and API responses
* Search functionality

---
