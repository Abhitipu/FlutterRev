import 'package:flutter/material.dart';
// this is imported so that we maty use the material edsign toolkit
// Widget : Element :: class : class_instance

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // the build method always has to be overriden
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        // swatch cant just take a single color : it takes a range from 50 to 900
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // created a separate class for home to clean things up
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This holds the immutable objects and calls the createState method!
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);
  // Key is for uniquely identifying the widget (useful for situations like reordering)

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // necessary to claa setState to re run the build method to reflect changes
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // this is the event listener
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
