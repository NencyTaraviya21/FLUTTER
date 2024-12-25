import 'package:flutter/material.dart';

class extra3 extends StatelessWidget {
  const extra3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
              children: [
                Expanded(flex: 3,child: Container(color: Colors.black)),
                Expanded(child: Container(color: Colors.teal))
              ])), //teal
          Expanded(child: Row(
              children: [
                Expanded(child: Container(color: Colors.purpleAccent)),
                Expanded(child: Column(children: [
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.orangeAccent,)),
                        Expanded(child: Container(color: Colors.pink,))
                      ])),
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.yellow,)),
                        Expanded(child: Container(color: Colors.orange,))
                      ]
                  ))
                ])),
                Expanded(child: Container(color: Colors.blueGrey))
          ])), //white
          Expanded(child: Row(
                children:[
                Expanded(child: Container(color: Colors.black,)),
                Expanded(child: Container(color: Colors.white30,)),
                Expanded(child: Container(color: Colors.black,)),
                Expanded(child: Container(color: Colors.white30,)),
              ])), //pink
          Expanded(child: Row(
              children:[
                Expanded(child: Column(children: [
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.purpleAccent,)),
                        Expanded(child: Column(children: [
                          Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.orangeAccent,)),
                                Expanded(child: Container(color: Colors.pink,))
                              ])),
                          Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.yellow,)),
                                Expanded(child: Container(color: Colors.orange,))
                              ]
                          ))
                        ]))
                      ])),
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.yellow,)),
                        Expanded(child: Container(color: Colors.red,))
                      ]
                  ))
                ])), //1st
                Expanded(child: Container(color: Colors.lightBlue)),//2nd
                Expanded(child: Column(children: [
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.orangeAccent,)),
                        Expanded(child: Column(children: [
                          Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.blue,)),
                                Expanded(child: Container(color: Colors.pink,))
                              ])),
                          Expanded(child: Row(
                              children: [
                                Expanded(child: Container(color: Colors.yellow,)),
                                Expanded(child: Container(color: Colors.brown,))
                              ]
                          ))
                        ]))
                      ])),
                  Expanded(child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.yellow,)),
                        Expanded(child: Container(color: Colors.orange,))
                      ]
                  ))
                ]))//3rd
              ])), //blue
        ],
      ),
    );
  }
}
