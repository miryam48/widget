import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(debugShowCheckedModeBanner: false,home: myapp(),));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  TextEditingController _controller = TextEditingController();

  void initState(){
    super.initState();
    _controller=TextEditingController();
  }

  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          TextField(
          )
        ],
      ),
    );
  }
}
