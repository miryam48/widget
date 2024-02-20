import 'package:flutter/material.dart';
// void main(){
//  runApp(MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: listview(),));
// }
class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
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
