import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A3636),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Login',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          const Padding(padding: EdgeInsets.all(50)),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              counter += 1;
              setState(() {
                print(counter);
              });
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "Hello $counter",
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
