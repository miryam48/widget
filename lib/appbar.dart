import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: myapp(),));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        leading: IconButton(
          onPressed:(){},
            icon: Icon(Icons.menu)),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.home)),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
