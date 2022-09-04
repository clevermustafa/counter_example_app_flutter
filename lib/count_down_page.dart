import 'dart:async';

import 'package:flutter/material.dart';

class CountDownPage extends StatefulWidget {
  const CountDownPage({Key? key}) : super(key: key);

  @override
  State<CountDownPage> createState() => _CountDownPageState();
}

class _CountDownPageState extends State<CountDownPage> {
  int countDown = 10;
  late Timer timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Down Page"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count Remaining $countDown"),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: () {
                    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
                      if (countDown > 0) {
                        countDown -= 1;
                        setState(() {});
                      }
                    });
                  },
                  child: const Text("Start Timer"),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    timer.cancel();
                    
                  },
                  child: const Text("Cancel Timer"),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    timer.cancel();
                    countDown = 10;
                    setState(() {
                      
                    });

                  },
                  child: const Text("Stop Timer"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
