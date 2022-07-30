import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebirth/rebirth.dart';

const String kassetPath = 'assets/splash_screen_gif.gif';

void main() {
  runApp(const WidgetRebirth(materialApp: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Rebirth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Switch to Screen 1',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(CupertinoPageRoute(builder: (context) => const Screen1())),
        tooltip: 'Let\'s Switch',
        child: const Icon(
          Icons.arrow_forward,
        ),
      ),
    );
  }
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

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      const Duration(seconds: 3),
          () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => const MyHomePage(
            title: 'Widget Rebirth',
          ),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: _size.width * 0.5,
          backgroundImage: const AssetImage(
            kassetPath,
          ),
        ),
      ),
    );
  }
}
