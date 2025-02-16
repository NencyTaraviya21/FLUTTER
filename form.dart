import 'package:flutter/material.dart';

class FormValidation extends StatelessWidget {
 FormValidation({super.key});

 GlobalKey<FormState> formKey = GlobalKey<FormState>(); //make this so that we don't need to check state in every validator just declare globally

 TextEditingController email = TextEditingController();
 TextEditingController phone = TextEditingController();
 TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Form',style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),

      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter a username';
                  }
                  if(!RegExp(r'^[A-Za-z][A-Za-z0-9_]{7,29}$').hasMatch(value)){
                    return 'Please enter validate username';
                  }
                },
                controller: userName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter username',
                labelText: 'Enter username'),

              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter email';
                  }
                  if (!RegExp(
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                      .hasMatch(value)) {
                    return 'Enter Valid Email address';
                  }

                },
                decoration: InputDecoration(border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: 'Enter Email',
                  labelText: 'Enter Email'
                ),
                controller: email ,
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Please enter phone number';
                  }
                  if(!RegExp(r'\d').hasMatch(value)){
                    return 'Enter valid number';
                  }
                },
                controller: phone,
                decoration: InputDecoration(border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    hintText: 'Enter Phone number',
                    labelText: 'Enter Phone number'
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                if(formKey.currentState!.validate()){
                  print(email.text);
                  print(phone.text);
                  print(userName.text);
                }
              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
