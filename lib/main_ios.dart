import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData.raw(
        Brightness.dark, 
        null, 
        null, 
        null, 
        null, 
        null, 
        null
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home Page'),
        trailing: Icon(CupertinoIcons.add),
      ),
      child: Text('Content'),
    );
  }
}