import 'package:flutter/material.dart';
import 'package:flutter_mobx_helpers/flutter_mobx_helpers.dart';

import 'mystore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  MyStore store = MyStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: Center(
        child: ObserverListener(
          listener: (_) {
            var snack = SnackBar(content: Text('Click ${store.value}'));
            ScaffoldMessenger.of(context).showSnackBar(snack);
          },
          child: ElevatedButton(
            child: Text('Call Snackbar'),
            onPressed: store.setValue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.setValue,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
