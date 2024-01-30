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
  Widget padd=SizedBox(height: 10,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTxWWhkBKrHxaOtavL_2Q-ZayGRYAdxSq-z58OCx1ISg&s",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            padd,
            SizedBox(
              width: 200,
              height: 200,
              child: CircleAvatar(
                backgroundImage: AssetImage("lib/ asset/birds.jpg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
