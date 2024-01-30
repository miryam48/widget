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
      appBar:AppBar(
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 500,
              height: 500,
              color: Colors.green,
            ),
            Container(
              width: 500,
              height: 400,
              color: Colors.red,
            ),
            Container(
              width: 500,
              height: 300,
              color: Colors.blue,
            ),
            Container(
              width: 500,
              height: 200,
              color: Colors.brown,
            ),
            Container(
              width: 500,
              height: 100,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
