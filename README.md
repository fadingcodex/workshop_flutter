# A workshop in Flutter

Let's create an app with Flutter!

[![Flutter CI](https://github.com/Beelzenef/workshop_flutter/actions/workflows/dart.yaml/badge.svg)](https://github.com/Beelzenef/workshop_flutter/actions/workflows/dart.yaml)

CoffeeShop app preview:

![Four screenshots for different screens in the app: product catalog, cart, user profile and order history](./imgs/workshop_preview.png)

## What you'll learn

By completing this workshop you will be able to:

- Create a multi-screen Flutter app using `BottomNavigationBar`
- Build common UI layouts with widgets such as `Column`, `ListView`, `ListTile`, `Card`, and `CircleAvatar`
- Navigate between pages (both tab-based and stack-based with `Navigator.push`)
- Define simple Dart data models (classes with named constructors)
- Manage shared app state without an external library
- Use hot-reload to see live changes during development

## Project structure

```
app/
└── lib/
    ├── main.dart              # App entry point and bottom-navigation host
    ├── coffee_manager.dart    # Lightweight in-memory state container
    ├── models/
    │   ├── product.dart       # Product data model
    │   ├── user.dart          # User data model
    │   └── order.dart         # Order data model
    └── pages/
        ├── catalog.dart       # Product listing screen
        ├── cart.dart          # Shopping cart screen
        ├── profile.dart       # User profile screen
        └── orders.dart        # Order history screen
```

## Requirements

### Required

- Bring Your Own Device (BYOD)
- Basic/medium programming knowledge
- Flutter SDK installed and set up

To choose:

- Android Studio
- Visual Studio Code

> ⚠️ NOTE - Visual Studio is different than Visual Studio Code

### Optional

To choose:

- Android emulator device
- Physical device (developer mode and USB debugging enabled)

## Running the app

```bash
# Navigate to the app directory
cd app

# Fetch dependencies
flutter pub get

# Run on a connected device or emulator
flutter run
```

To add support for additional platforms:

```bash
# Web
flutter create --platforms=web .

# Linux
flutter create --platforms=linux .
```

## About the code

No state management libraries/tools/engines are used.

No best practices with Flutter are used.

This is a beginner level project.

This workshop focuses on the development of UI, to learn the basics of Flutter, widgets, navigation between views, Dart first steps...

---

## Hands on lab

Clone this repo and checkout to [`workshop`](https://github.com/Beelzenef/workshop_flutter/tree/workshop) branch.

> 💡 Don't want to use Git? Download the starter project directly from
> [download-directory.github.io](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fzelonware%2Fworkshop_flutter%2Ftree%2Fworkshop%2Fapp).

For a detailed step-by-step guide see [`docs/guide.md`](./docs/guide.md).

## More info

General:

- [Build apps for any screen with Flutter](https://flutter.dev/)
- [Learn Flutter any way you want](https://flutter.dev/learn)
- [Windows install](https://docs.flutter.dev/get-started/install/windows)
- [A curated list of Flutter samples and apps](https://flutter.github.io/samples/#)

Android:

- [Create an android emulator and run your app](https://medium.com/@Narimane_hn/create-an-android-emulator-and-run-your-first-flutter-app-bdb914b63973)
- [Run apps on a hardware device](https://developer.android.com/studio/run/device)

Dart:

- [Introduction to Dart](https://dart.dev/language)
- [DartPad](https://dartpad.dev/?)