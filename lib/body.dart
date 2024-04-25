import 'package:flutter/material.dart';
import 'package:flutter_application_3/my_form.dart';

GlobalKey<FormState> formstate = GlobalKey();

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: const EdgeInsets.only(top: 120),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/week 3_ image.png"),
            const MyForm(),
          ],
        ),
      ),
    ]);
  }
}
