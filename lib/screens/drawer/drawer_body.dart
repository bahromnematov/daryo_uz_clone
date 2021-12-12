import 'package:flutter/material.dart';

class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({Key? key}) : super(key: key);

  @override
  _MyDrawerBodyState createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        buildCategory("So'ngi yangiliklar"),
        buildCategory("Mahalliy"),
        buildCategory("Dunyo"),
        buildCategory("Texnologiyalar"),
        const Divider(thickness: 1.0),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: buildCategory('Tanlangan xabarlar', Colors.green),
        ),
        const Divider(thickness: 1.0),
        SizedBox(height: 8.0),
        buildCategory("Madaniyat"),
        buildCategory("Avto"),
        buildCategory("Sport"),
        buildCategory("Foto"),
        buildCategory("Lifestyle"),
        buildCategory("Kolumnistlar"),
      ],
    ));
  }

  Widget buildCategory(String title, [Color givenColor = Colors.black]) {
    return Container(
      margin: const EdgeInsets.only(left: 18.0),
      height: 40,
      child: Text(
        title,
        style: TextStyle(color: givenColor, fontWeight: FontWeight.w500),
      ),
    );
  }
}
