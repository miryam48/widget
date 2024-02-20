import 'package:flutter/material.dart';
import 'package:untitled90/Row.dart';
import 'package:untitled90/image.dart';
import 'package:untitled90/listview.dart';
void main(){
 runApp(MaterialApp(debugShowCheckedModeBanner: false,home:myapp()));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int _currentindex=0;
  List pages=[image(),listview(),row()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar',
        style: TextStyle(color: Colors.green),),
      ),
      body: pages[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,onTap: (index){
          setState(() {
            _currentindex=index;
          });
      },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts),label: ('Contacts')),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: ('Camera')),
        ],
      ),
    );
  }
}
