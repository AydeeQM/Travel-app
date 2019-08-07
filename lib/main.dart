import 'package:flutter/material.dart';
import 'widgets/description_place.dart';
import 'widgets/review_list.dart';
import 'widgets/header_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur, adipiscing elit dictum arcu himenaeos risus, potenti suspendisse justo convallis. Ullamcorper purus enim viverra et hac nibh sem, nisi libero tempus habitasse ligula feugiat interdum tristique, auctor odio vel ut ultricies tempor. Malesuada pretium torquent pellentesque tortor sapien laoreet, quisque nisl penatibus fermentum netus, bibendum quis neque himenaeos justo.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        /* appBar: AppBar(
          title: Text('Home'),
        ), */
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace('Bahamas', 4, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppbar()
          ],
        ),
        // DescriptionPlace('Bahamas', 4, descriptionDummy),Container(
      ) 
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
