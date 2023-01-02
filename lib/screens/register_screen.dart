import 'package:flutter/material.dart';

import 'package:home_work/home_work.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final registerController = TextEditingController();
  bool passwordIsVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(title: Text('Register')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          SizedBox(
            height: 10,
          ),
          registerFrontName(),
          SizedBox(
            height: 25,
          ),
          registerLastName(),
          SizedBox(
            height: 25,
          ),
          registerAddress(),
          SizedBox(
            height: 25,
          ),
          registerEmail(),
          SizedBox(
            height: 25,
          ),
          registerUsername(),
          SizedBox(
            height: 25,
          ),
          registerPassword(),
          SizedBox(
            height: 25,
          ),
          confirmPassword(),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
          )
        ]),
      ),
    );
  }
}
