# Calculator App

A professional Flutter calculator delivering essential arithmetic operations through a custom keypad and a dark, distraction-free interface.

## Overview
- **Purpose** Provide a simple yet elegant calculator experience for quick arithmetic.
- **Tech Stack** Flutter (`sdk: flutter`) with Material Design components and a dark theme.
- **Entry Point** `lib/main.dart` initializes the `MaterialApp` and routes to `HomeScreen`.

## Features
- **Modern UI** Dark-themed layout in `lib/home_screen.dart` keeps focus on inputs and results.
- **Custom Keypad** Buttons call `_appendNumber()` to update the focused `TextField` using `FocusNode`s.
- **Instant Calculations** Arithmetic handled by `_addition()`, `_subtract()`, `_multiplication()`, and `_division()` with real-time updates to `_reasult`.
- **Quick Reset** `AC` button triggers `_clear()` to wipe both inputs and reset the displayed total.

## Getting Started

### Prerequisites
- **Flutter SDK** `>=3.4.3 <4.0.0`
- **Dart** bundled with Flutter
- **Target Device** Android, iOS, web, or desktop supported by Flutter

### Installation
```bash
git clone https://github.com/<your-username>/calculator_app.git
cd calculator_app
flutter pub get
flutter run
```

## Project Structure
- **`lib/main.dart`** Boots the app, applies the dark theme, and sets `HomeScreen` as the home widget.
- **`lib/home_screen.dart`** Contains UI layout, text controllers, keypad widgets, and calculation logic.

## Usage
- **Select Field** Tap either input to focus it.
- **Enter Numbers** Use the keypad buttons to append digits and decimals.
- **Compute** Tap `+`, `-`, `*`, or `/` to calculate; the result displays immediately with two-decimal precision.
- **Reset** Tap `AC` to clear both operands and the computed result.

## Development
- **Format Code** `flutter format .`
- **Static Analysis** `flutter analyze`
- **Run Tests**
```bash
flutter test
```

## Roadmap
- **Validation** Add safeguards for empty fields and division by zero.
- **Keyboard Support** Enable hardware keyboard input for desktop and web targets.
- **History Log** Track previous calculations for quick recall.

## Contributing
- **Fork & Branch** Create a feature branch such as `feature/<name>`.
- **Commit & Push** Use descriptive commit messages.
- **Pull Request** Describe changes, reference related issues, and request review.

## License
Specify the license (e.g., MIT, Apache 2.0) to clarify usage rights.

