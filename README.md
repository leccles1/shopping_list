# Flutter Starter Stacked

This project is a starting point for a Flutter application that utilises the [Stacked architecture](https://pub.dev/packages/stacked).

The template is setup with the following features for convenience.

* Automatic code generation for Dependency Injection
* Automatic code generation for handling the application routes
* Automatic code generation for mocking services in unit tests
* Application logging


## Getting Started

Simply clone the repo and follow the steps below to have a great starting point for flutter apps.

1. Create your project using this repo by either:
    * On Github click "Use this template" button which will allow you to create your project using this repo as your baseline, or
    * Clone this repo to your local machine

2. Run flutter pub get to fetch dependencies

3. Now to change your app's package name / bundle identifier in both Android and iOS manifests, run ```flutter pub run change_app_package_name:main <com.new.package.name>```.

4. Next you'll need to change your app's user-readable label - the CFBundleName and/or CFBundleDisplayName within Info.plist (for iOS) and android:label field in your application node in AndroidManifest.xml (for Android).

NOTE: You'll also need to change your package name and description within pubspec.yaml

### Running your project

Once the above steps are complete, you should be in a good position to start developing your application. When developing your application, the following commands will run the code generation that automatically enables dependency injection, route management (and route parameters) as well as mocks for unit testing.

```
flutter packages pub run build_runner watch
```
The above command triggers the generation and watches your files for changes.

```
flutter packages pub run build_runner build
```
The above command triggers the generation once