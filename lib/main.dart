import 'package:flutter/material.dart';
import 'package:nowart/ui/page/map/map_page.dart';
import 'package:nowart/ui/page/map_contents_container.dart';

void main() => runApp(NowArtApp());

class NowArtApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'nowart...'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: MapPage.create(
          MapContentsContainer.create(),
        ),
      ),
    );
  }
}
