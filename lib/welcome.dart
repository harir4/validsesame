import 'package:flutter/material.dart';
import 'package:validd/show.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Container(
          alignment: Alignment.center,
          child: ListView.builder(
              itemCount: Show.showtxt.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      Text(
                        Show.showtxt[index]['username'] as String,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        Show.showtxt[index]['password'] as String,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
        ),
      ),
    );
  }
}
