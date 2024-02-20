import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,home: image(),));
// }
class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _imageState();
}
class _imageState extends State<image> {
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
