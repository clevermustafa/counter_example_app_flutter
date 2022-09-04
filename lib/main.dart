import 'dart:async';

import 'package:flutter/material.dart';
import 'package:statefull_widget_example/count_down_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NewClass());
  }
}

class NewClass extends StatefulWidget {
  const NewClass({Key? key}) : super(key: key);

  @override
  State<NewClass> createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  int counter = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App Flutter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CountDownPage()));
          }, child: const Text("Count-Down"))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              if (counter == 0) {
              } else {
                setState(() {
                  counter = counter - 1;
                });
              }
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
