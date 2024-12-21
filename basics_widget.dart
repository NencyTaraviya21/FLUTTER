import 'package:flutter/material.dart';

class Basics extends StatelessWidget {
  const Basics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.indigo,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white12,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}