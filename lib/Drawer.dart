import 'package:flutter/material.dart';
void main(){
 runApp(MaterialApp(debugShowCheckedModeBanner: false,
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
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountEmail: Text('Aadhil'),
                  accountName: Text('Aadhil1234@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('lib/ asset/babygirl.jpg'),
                  ),
                )

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('hello flutter'),
      ),
    );
  }
}
