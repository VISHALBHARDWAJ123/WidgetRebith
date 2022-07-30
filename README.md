<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->


## Features

A Flutter Package for give a rebirth of your app

## Installation

### Dependency
Add the package as a dependency in your pubspec.yaml file.
```yaml
dependencies:
  rebirth: "^lastest_version"
```

### Import
Import the package in your code file.
```dart
import 'package:rebirth/rebirth.dart';
```
## Getting started

Just wrap the WidgetRebirth widget to your MaterialApp or CupertinoApp and use the method WidgetRebirth.createRebirth for magic



## Usage

To use this plugin, add rebirth: ^<latest version> as a dependency in your [pubspec.yaml] (https://dart.dev/tools/pub/pubspec)file


```dart
void main() {
  runApp(const WidgetRebirth(materialApp: MyApp()));
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => restartApp(context: context),
          child: const Text("Restart your app"),
        ),
      ),
    );
  }

  void restartApp({required BuildContext context}) {
    WidgetRebirth.createRebirth(context: context);
  }
}

```
# Flutter 2.0 and null-safety

From 1.0.0 and onwards, Flutter Rebirth is null-safe and requires Dart SDK 2.12.0 minimum.

## License

Flutter Rebirth is released under the [MIT License](LICENSE)

