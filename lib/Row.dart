import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,home: row(),));
// }
class row extends StatefulWidget {
  const row({super.key});

  @override
  State<row> createState() => _rowState();
}

class _rowState extends State<row> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flat Button'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Number'),
            Text('Number'),
            Text('Number'),
            Text('Number'),
            Text('Number'),
            Text('Number'),
          ],
        ),
      )
    );
  }
}
