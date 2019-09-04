import 'package:flutter/material.dart';
import 'package:playground/src/pages/counter_page.dart';
import 'package:provider/provider.dart';
import 'package:playground/src/stores/counter_store.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        builder: (_)=>CounterStore(),
      )
    ],
    child:MyApp()
  ),
  
  
  );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: CounterPage(),
    );
  }
}

