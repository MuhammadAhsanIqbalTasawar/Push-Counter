import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter With buttons"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter $counter"),
              SizedBox(
                width: double.maxFinite,
                child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Text("Outlined Increment")),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const Text("TextB Decrement")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });
                  },
                  child: const Text("Elevated Rest"))
            ],
          ),
        ),
      ),
    );
  }
}
