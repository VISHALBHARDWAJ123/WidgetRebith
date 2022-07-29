## 1.0.0

* WidgetRebirth is a widget which helps you to restart your app from any point of your app.
* Just wrap it around it to your widget and call the restartApp() method.
* Recommendation:- Wrap it on Material App Widget for better result.
* Example:-
  class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return WidgetRebirth(child : MaterialApp(
  title: "Hi. I am WidgetRebirth",
  )
  );
  }
  }

* Then use it like this
* TextButton(
* onPressed:()=>WidgetRebirth.createRebirth(context:context),
* child: Text("Restart")
* )

