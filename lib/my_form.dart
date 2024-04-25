import 'package:flutter/material.dart';
import 'body.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formstate,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "username cannot be empty";
              }
              return null;
            },
            decoration: const InputDecoration(
              label: Text(
                "Username",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
          TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "password cannot be empty";
                }
                return null;
              },
              obscureText: true,
              decoration: const InputDecoration(
                label: Text(
                  "password",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              )),
        ],
      ),
    );
  }
}
