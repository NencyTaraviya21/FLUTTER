import 'package:flutter/material.dart';
import 'package:flutter_project/LAB-9/navigation.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image(image: AssetImage('assets/images/login.png')),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Login successfully',
            style:
            TextStyle(fontFamily: 'Kanit',color: Colors.blueAccent, fontSize: 20),),
            SizedBox(width: 5,),
            Icon(Icons.verified, color: Colors.blueAccent)
          ],),

          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
            Navigator.pop(context);
          },
            child: Text('Back to login page'),
          ),
          ]
      ),
    );
  }
}
