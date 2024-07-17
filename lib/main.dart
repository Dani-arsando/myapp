import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var cetakText1=Container(
  height: 500,
  width: 400,
  decoration: BoxDecoration(
    color: Color.fromARGB(193, 109, 190, 228),
    borderRadius: BorderRadius.circular(8.0),
    border: Border.all(
      color: Colors.white,
      width: 2.0,
    )
  ),
  child: Column(
    children: [
      ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/574219500314173440/xnJ_G1uJ_400x400.jpeg'),
        ),
        title: const Text('DANI ARSANDO'),
      ),
      
      SizedBox(
        height: 30,
      ),
      const Center(
        child: Text(
          'Hello Word\nHai Semuanya...\nPerkenalkan nama saya dani',
          style: TextStyle(color: Colors.white),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.left,
        ),
      ),
      Container(
        margin: const EdgeInsets.all(30),
        child: const Image(
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: NetworkImage('https://web.rupa.ai/wp-content/uploads/2023/06/gvs1917_A_profile_picture_of_Sakata_Gintoki_the_main_character__7fda583b-14bb-4ef9-8f63-b1e952156c31.png'),
        ),

      )
    ],
  )
);

var titleAppbar=const Text('Dataku');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:titleAppbar ,
        ),
        body: Programnya(),
      ),
      debugShowCheckedModeBanner: false,
    );
 }
}

class Programnya extends StatelessWidget {
  const Programnya({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: cetakText1,);
  }
}