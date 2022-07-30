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
## Getting started

Just wrap the WidgetRebirth widget to your MaterialApp or CupertinoApp and use the method WidgetRebirth.createRebirth for magic

## Usage

To use this plugin, add rebirth: ^[<latest version>] as a dependency in your [pubspec.yaml] file


```dart
void main() => runApp(
  const WidgetRebirth(child:MaterialApp(
    home: Material(
      child: Center(
        child: ElevatedButton(
          onPressed:()=> restart(),
          child: Text('WidgetRebirth'),),
      ),
    ),
  ),
  ),
);
void restart(){
  if(mounted) {
    WidgetRebirth.createRebirth(context: context);
  }
}

```

