# Flutter boilerplate

A boilerplate project created in flutter, 

* State Management, Navigation and Routing with Getx.
* Handle Rest API with Retrofit and Dio
* Handle API error with ApiInterceptor
* Json serializable
* Token manager
* Resource manager
* Middleware
* ...


## Getting Started

**Step 1:**

Download or clone this repo by using the link below:
Or simpler, you can click to <b>Use this template</b>
```
https://github.com/ag1le0/flutter_getx_boilerplate.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 

flutter pub run build_runner build --delete-conflicting-outputs
```

**NOTE**: Don't forget to change the 'app name' and 'package name' in android, ios, pubspec and strings files.

### Libraries & Tools Used

* [get](https://pub.dev/packages/get)
* [shared_preferences](https://pub.dev/packages/shared_preferences)
* [intl](https://pub.dev/packages/intl)
* [dio](https://pub.dev/packages/dio)
* [retrofit](https://pub.dev/packages/retrofit)
* [json_serializable](https://pub.dev/packages/json_serializable)
* [json_annotation](https://pub.dev/packages/json_annotation)

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

Here is the folder structure we have been using in this project

```
lib/
|- app/
|- main.dart
```

```
app/
|- data/
   |- converter/
   |- entities/
   |- models/
   |- provider/
      |- network/
         |- utils/
              |- api_interceptors.dart
              |- api_utils.dart
              |- common_error.dart
              |- deprecated_dio_error.dart
         |- api_client.dart
   |- repository
|- di/
   |- dependency_creator.dart
|- resource/
   |- app_dimens.dart
   |- app_images.dart
   |- app_strings.dart
   |- app_themes.dart
   |- resource.dart
|- services/
   |- helper
      |- auth_helper.dart
   |- app_translations.dart
   |- auth_service.dart
|- ui/
   |- bindings
   |- controller
   |- middleware
   |- pages
   |- routes
      |- app_pages.dart
      |- app_routes.dart
|- utils/
   |- extensions
   |- util.dart
|- app.dart
```

### Folder Structure
If this is template is useful for you, give me a star!. This will give me motivation to keep doing more content like this.
