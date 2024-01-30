import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home: myapp(),));
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
        title: Text('ListViewer'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 20,
          itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text('item $index'),
          );
          }
      ),
    );
  }
}
