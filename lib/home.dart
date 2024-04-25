import 'package:flutter/material.dart';
import 'package:flutter_application_3/body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color pcolor = Colors.white;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pcolor,
      appBar: AppBar(
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          title: Container(
            padding: const EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            child: const Text("Sign IN"),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          leading: Switch(
              activeColor: Colors.black,
              value: flag,
              onChanged: (val) {
                setState(() {
                  flag = val;
                  (flag
                      ? pcolor = Colors.grey.shade900
                      : pcolor = Colors.white);
                });
              })),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        foregroundColor: pcolor,
        onPressed: () {
          formstate.currentState?.validate();
        },
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: const Icon(
          Icons.lock_open,
          size: 35,
        ),
      ),
    );
  }
}
