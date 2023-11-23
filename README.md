
# My Portfolio Mobile App

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)


![Version](https://img.shields.io/badge/version-1.0.0-success.svg)




This project structure was made with retrospect to productivity and easy maintenance.

## Getting Started

## How to Build 

**Android(prod or test):**

```
flutter build apk --dart-define=app.env=prod
```

**ios(prod or test):**

```
flutter build ios --dart-define=app.env=prod
```

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/
```

**Step 2:**

Go to projects root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```

## App Features:

* Splash
* Login
* Home
* Routing
* Theme
* Dio(For making network calls)
* Database(Hive)
* Stacked(State Management)
* Dependency Injection(GetIt)

### Common Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio)
* [Database](https://pub.dev/packages/hive)
* [Provider](https://github.com/rrousselGit/provider) (State Management)
* [Logging](https://github.com/zubairehman/logger)
* [Notifications](https://github.com/AndreHaueisen/another-flushbar)
* [Json Serialization](https://github.com/dart-lang/json_serializable)
* [Dependency Injection](https://pub.dev/packages/get_it) (GetIt)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we are using in this project

```
lib/
|- app/
|- core/
|- styles/
|- ui/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- app - Contains configuration for dependency injection and routing setup.
2- core - Contains the essential logics of the app.
3- data-source - Contains remote or local data either from api or local storage
4- models — Contains custom classes in our classes such as exceptions, state logic etc
5- styles — Contains the utilities/common functions of your application like theme, colors etc.
7- utils— Contains helpers files and tools.
8- ui— Contains all visual design files.
9- main_common.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```


### Dependency Injection(DI)

Contains all our Dependency Injection logic which is built up at run-time, it is sub-module into different packages by functionality.

```
app/
    |- locator.dart

```

### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
views/
|- widgets
   |- button.dart
   |- camera.dart
   |- card_view.dart
   |- custom_edit_text.dart

|- views/
    |- auth/
        |- login/
            |- login_view.dart
            |- login_viewmodel.dart

```

### Styles

Contains common files like colors, theme and dimensions used all around the projects 

```
styles/
|- colors_dart
|- dimens.dart
|- text_style.dart
|- theme.dart
```

### Models

Contains Model classes like custom exceptions, server error models and a custom state class

```
models/
|- custom_exceptions.dart
|- server_error_model.dart
|- state.dart
|- user_model.dart
```

### Routes

This file contains all the routes for our application.

```dart
abstract class Routes {
  static const main = '/main';
}

class Routers {

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.main:
        return CupertinoPageRoute<dynamic>(
          builder: (context) => Container(),
          settings: settings
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
```

### Main_Common
This is the starting point of the application after setting the flavor. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart
import 'package:boilerplate/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants/app_theme.dart';
import 'constants/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(App());
  });
}
```

### Coding Guidelines
Read up and follow the flutter team guidelines more would be added as we develop
