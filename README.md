# Flutter Currency App

A Flutter application that displays a list of currencies and allows
users to navigate to a detail screen for each currency. The app follows
the Clean Architecture principles and utilizes various libraries ,
dependency injection, state management, networking, and UI components.


## Responsive UI

This Application is built with a responsive UI design that adapts to different screen sizes,
including mobile devices, web browsers, and tablets.
The app layout and user interface elements are optimized to provide a consistent and
user-friendly experience across various devices.
To show images in web browsers , this command should be used "flutter run -d chrome --web-renderer html"



## Features

- View a list of currencies with basic information
- Search functionality to filter currencies
- Navigate to a detail screen for each currency
- Display currency details including additional information and an image
- Error handling for network requests and exceptions




## Libraries Used

The following libraries are used in this project:

- `get_it`: For dependency injection, providing a centralized way to manage dependencies.
- `flutter_bloc`: For state management, implementing the BLoC (Business Logic Component) architecture pattern.
- `dio`: For network requests, providing a powerful and flexible HTTP client.
- `shimmer`: For shimmer effect, displaying loading placeholders for smoother UI transitions.
- `cached_network_image`: For caching and displaying network images efficiently.
- `page_transition`: For custom page transitions, enhancing the user experience during navigation.
- `intl`: For internationalization and localization support, enabling multi-language support in the app.



## Project Structure

The project follows a modular structure based on Clean Architecture principles.
Here's an overview of the main directories and their purposes:

- `lib`: Contains the main Dart code for the application.
- `core`: Including DIO class and client config.
- `cryptocurrency_feature`: Contains Clean Architecture principles .
- `data`: Contains the data layer of the application, including repositories and data sources.
- `domain`: Contains the domain layer, including entities and use cases.
- `presentation`: Contains the presentation layer, including UI components, BLoCs, and views.
- `di`: Preparing Dependency Injection.
- `main.dart`: The entry point of the application.



## Getting Started

To run the app locally, follow these steps:

1. Ensure that you have Flutter SDK installed on your machine. If not, refer to the Flutter documentation for installation instructions: https://flutter.dev/docs/get-started/install

2. Open a terminal and navigate to the project directory.

3. Run the following command to install the project dependencies: flutter pub get

4. Connect a physical device or start an emulator.

5. Run the following command to start the app: flutter run


## Contributing

Contributions are welcome! If you find any issues or improvements, feel free to create a pull request or open an issue.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
