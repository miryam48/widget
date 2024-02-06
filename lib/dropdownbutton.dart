import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: dropdown(),));
}
class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {

  final District = [
    '',
    'Kottayam',
    'Eranakulam',
    'Palakkadu',
    'Edukki',
    'Pathanamthitta',
    'Kannur',
    'Kozhikkodu',
    'Kasargod',
    'Thiruvanadhapuram',
    'Vayanadu',
    'Malappuram',
    'Aalappuzha',
  ];
   late String selecteddisc;

   Widget padd = SizedBox(height: 10,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Dropdownbutton'),
            padd,
            DropdownButtonFormField(
                items: District.map((e) => DropdownMenuItem(
                    child: Text(e),
                        value : e,
                ))
                .toList(),
                onChanged: (val){
                  selecteddisc = val!;
                }
            )
          ],
        ),
      ),
    );
  }
}
