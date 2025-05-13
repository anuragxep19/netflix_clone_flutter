# Netflix_UI

![Flutter](https://img.shields.io/badge/flutter-3.19.2-blue.svg)
[![LICENSE](https://img.shields.io/badge/LICENSE-MIT-blue.svg)](LICENSE)

Netflix_UI is a Flutter-based recreation of Netflix’s core interface experience.
This project was built to explore UI layout, screen transitions, and app structure using clean architecture principles.

---

## Table of Contents

1. [Getting Started](#getting-started)
2. [Tech Stack](#tech-stack)
3. [Project Structure](#project-structure-simplified-overview)
4. [Screen Flow](#screen-flow)
5. [Screenshots](#screenshots)
6. [My Contributions](#my-contributions)
7. [Credits](#credits)
8. [License](#license)
9. [Author](#author)

---

## Getting Started

1. **Clone the repository**:

   ```bash
   git clone https://github.com/anuragxep19/netflix_ui-flutter.git
   cd netflix_ui-flutter
   ```

1. **Install dependencies**:

   ```bash
   flutter pub get
    ```

1. **Create a `.env` file in the root directory**:

   ```bash
    # .env
    TMDB_API_KEY=your_api_key_here
    TMDB_BASE_URL=https://api.themoviedb.org/3
    TMDB_IMAGE_BASE_URL=https://image.tmdb.org/t/p/w500

    ```

1. **Run**:

    ```bash
    flutter run
    ```

---

## Tech Stack

- **Core Framework**: Flutter, Dart
- **State Management**: BLoC, Freezed
- **Dependency Injection**: GetIt, Injectable
- **Networking**: Dio, Dartz
- **Environment Configuration**: flutter_dotenv
- **Media Playback**: video_player
- **Architectural Pattern**: Layered architecture (Clean Architecture inspired)

---

## Project Structure (Simplified Overview)

```tree

Netflix_UI/
├── lib/
│   ├── core/                       # Common helpers, constants, themes
│   ├── data/                       # API services and repositories
│   │   ├── dataSources/            # Remote sources (TMDB APIs)
│   │   └── repository/             # Data abstraction layer
│   ├── domain/
│   │   ├── core/di/                # Dependency injection setup
│   │   ├── models/                 # Domain models
│   │   │   ├── downloads/
│   │   │   ├── new_and_hot/
│   │   │   ├── search/
│   │   ├── repository/             # Repository contracts
│   │   └── usecases/               # Business logic layer
│   ├── presentation/               # UI layer (screens + widgets)
│   │   ├── bloc/                   # All BLoC implementations
│   │   ├── pages/
│   │   │   ├── downloads/
│   │   │   ├── fastLaugh/
│   │   │   ├── home/
│   │   │   ├── mainPage/
│   │   │   ├── new&Hot/
│   │   │   └── search/
│   └── main.dart                   # App entry point
│
├── assets/
│   ├── icons/                      # Custom icons
│   ├── licenses/                   # OSS license data
│   └── readme/                     # Screenshots and assets for documentation
│
├── .env.example                    # Sample environment variables (no secrets)
├── .editorconfig                   # Code style preferences
├── .gitignore                      # Files excluded from version control
├── LICENSE                         # Project license
├── pubspec.yaml                    # Dependencies and asset configuration
└── README.md                      

             

```

---

## Screen Flow

The app features five main screens, accessible via bottom navigation or swipe gestures:

1. **Home**
   - Large banner for featured movie with play/info buttons
   - Multiple horizontally scrolling lists (e.g., Trending, TV Shows)
   - Auto-hiding AppBar + pull-to-refresh support

2. **New & Hot**
   - Two-tab layout: Coming Soon and Everyone’s Watching
   - Scrollable cards with poster, description, and dummy action icons

3. **Fast Laugh**
   - Reel-style vertical video feed
   - Auto-play videos with tap-to-toggle play/pause

4. **Search**
   - Idle mode: Popular content in vertical list
   - Search results: Displayed in grid view on input

5. **Downloads**
   - Poster layout in arc style with title + description

---

## Screenshots

<details>
  <summary>Click to expand screenshots</summary>

  <br/>

  | Home | FastLaugh | Downloads |
  |:-----:|:----:|:----:|
  | <img src="assets/readme/home.png" alt="Home" width="200"/> |  <img src="assets/readme/fastLaugh.png" alt="FastLaugh" width="200"/> |<img src="assets/readme/downloads.png" alt="Downloads" width="200"/> |

  | New&Hot coming soon | New&Hot everyone's watching |
  |:-----:|:----:|
  | <img src="assets/readme/new&hot_coming_soon.png" alt="New&Hot coming soon" width="200"/> |  <img src="assets/readme/new&hot_everyones_watching.png" alt="New&Hot everyone's watching" width="200"/> |

  | Search idle | Search result |
  |:-----:|:----:|
  | <img src="assets/readme/search_idle.png" alt="Search idle" width="200"/> |  <img src="assets/readme/search_result.png" alt="Search result" width="200"/> |

</details>

---

## My Contributions

This project is based on a tutorial series that is no longer fully available. I took this opportunity to update and improve upon the original code:

- **UI Refactor**: Cleaned up the design and navigation for a more polished look.
- **Package Updates**: Replaced deprecated packages and ensured compatibility with the latest Flutter versions.
- **Architecture Enhancements**: Refined event handling and improved the structure for better decoupling of logic and UI.
- **API Key Security**: Moved API keys to environment variables for improved security.
- **Bug Fixes & Optimizations**: Fixed issues, refactored components, and improved app performance.

---

## Credits

- [Brototype Malayalam](https://www.youtube.com/playlist?list=PLY-ecO2csVHcUlBVvIMAa3dbja12TFJiN) – Base UI and app flow tutorial
- [TMDb API](https://www.themoviedb.org/) – Movie and TV show data provider  
- [Shields.io](https://shields.io/) – Used for project badges  
- [IconKitchen](https://icon.kitchen) – Helped generate the app’s logo assets  
- [Flutter](https://flutter.dev/) – Core framework for building the UI  

- [The open-source community](https://pub.dev/) – For architectural inspiration and reusable packages

---

## License

- **MIT License** – see [LICENSE](LICENSE)  
- **Third-Party Licenses** – see `assets/licenses/oss_licenses.json`

---

## Author

**Anurag E P**  
[GitHub: @anuragxep19](https://github.com/anuragxep19)

---
