import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:validd/show.dart';
import 'package:validd/welcome.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final formkey = GlobalKey<FormState>();
  final Username = TextEditingController();
  final Password = TextEditingController();
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'username',
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field cannot be blank';
                    } else {
                      return null;
                    }
                  },
                  controller: Username,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'field cannot be blank ';
                    } else {
                      return null;
                    }
                  },
                  controller: Password,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: (() {
                    Show();
                    if (formkey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Welcome(),
                          ));
                    }
                    Show.showtxt.add(
                        {'username': Username.text, 'password': Password.text});
                  }),
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
