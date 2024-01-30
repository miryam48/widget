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
        title: Text('Snak Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(seconds: 3),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                    content: Text('Error message')
                )
            );
          },
          child: Text('Elevated Button'),
        ),
      ),
    );
  }
}


