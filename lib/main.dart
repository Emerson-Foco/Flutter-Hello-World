import 'package:flutter/material.dart';
main(){
 runApp(
  AppWidget(title: 'Hello World 3')
 );
}

class AppWidget extends StatelessWidget{
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;

  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Counter: $counter'),
          onTap: (){
            setState((){
              counter++;
            });
          }
        )
      ),
    );
  }
}