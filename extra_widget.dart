import 'package:flutter/material.dart';

class ExtraWidget extends StatelessWidget {
  const ExtraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.lime,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.amber,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.brown ,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.tealAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      color: Colors.red,
                  )
                ),
                Expanded(
                    child: Container(
                      color: Colors.amberAccent,
                    )
                ),
                Expanded(
                    child: Container(
                      color: Colors.greenAccent,
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
