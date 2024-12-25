import 'package:flutter/material.dart';

class extra2 extends StatelessWidget {
  const extra2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blueGrey,)),
                  Expanded(child: Column(children: [
                  Expanded(child: Row(
                  children: [
                  Expanded(child: Container(color: Colors.white54,)),
                  Expanded(child: Container(color: Colors.pink,))
                  ])),
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.yellow,)),
                        Expanded(child: Container(color: Colors.orange,))
                      ]
                    ))
                  ]))
                ],
              ),
            ),//bluegray
            Expanded(
              child: Row(
                children: [
                  Expanded( flex: 2, child: Container(color: Colors.black87)),
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
                          flex:3,
                          child: Container(
                            color: Colors.purple,
                          ),
                        ),
                        Expanded(
                          flex: 2,
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
                          flex: 3,
                          child: Container(
                            color: Colors.blueGrey,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 2, child: Container(color: Colors.greenAccent,))
                ],

              ),
            ),//black
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.teal)),
                  Expanded(child: Container(color: Colors.lightGreen))
                ],

              ),
            )//blue
          ],
        )
    );
  }
}
