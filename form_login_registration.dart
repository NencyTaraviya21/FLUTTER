import 'package:flutter/material.dart';
import 'package:flutter_project/LAB-5/Utils/string_const.dart';

class FormLoginRegistration extends StatefulWidget {
  FormLoginRegistration({super.key});

  @override
  State<FormLoginRegistration> createState() => _FormLoginRegistrationState();
}

class _FormLoginRegistrationState extends State<FormLoginRegistration> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //make this so that we don't need to check state in every validator just declare globally
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  bool isRegister = false;
  bool isLogin = false;
  var login = LOGIN;
  var register = REGISTER;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLogin?Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.fill,
            opacity: 0.7,
          ),
        ),
      ):Form (
        key: _formKey,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/blue.jpg',),
                    fit: BoxFit.fill,
                    opacity: 0.7,
               ),
              ),
            ), //image
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 520.0),
              child: Text(
                isRegister?
                'HELLO USER!\nWELCOME TO YOUR $register PAGE':'HELLO USER!\nWELCOME TO YOUR $login PAGE',
                style: TextStyle(
                    color: Colors.indigo,
                    backgroundColor: Colors.white70,
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ), //header
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 120.0),
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Center(
                  child: Column(
                    children: [
                      getTextFormField(
                        userName,
                        'Enter username',
                        'Enter username',
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a Name';
                          }
                          if (!RegExp(r'[A-Za-z]$').hasMatch(value)) {
                            return 'Please enter validate Name';
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      getTextFormField(
                        email,
                        'Enter email',
                        'Enter email',
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter email';
                          }
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value)) {
                            return 'Enter Valid Email address';
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        visible: isRegister,
                        child: Column(
                          children: [
                            Container(
                              child: getTextFormField(
                                  phone, 'Enter phone number', 'Enter phone number',
                                  validation: (value) {
                                if (value!.isEmpty ||
                                    !RegExp(r'^\d{10}$').hasMatch(value)) {
                                  return 'Please enter valid number';
                                }
                              }),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),

                      getTextFormField(
                          password, 'Enter passsword', 'Enter passsword',
                          validation: (value) {
                        if (value.isEmpty ||
                            !RegExp(r'[a-z0-9](?=.*?[!@#\$&*~])')
                                .hasMatch(value))
                          return 'Please enter valid password';
                      }),
                      SizedBox(height: 10),
                      Visibility(
                        visible: isRegister,
                        child: Container(
                          child: getTextFormField(
                              confirm_password,
                              'Confirm passsword',
                              'Confirm passsword',
                              validation: (value) {
                            if (value.isEmpty || password.value != confirm_password.value)
                              return 'Please enter valid password';
                          }),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        child: Text(login,
                            style: TextStyle(color: Colors.blue.shade900)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              isLogin=true;
                            });
                          }
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Are you a registered user?'),
                          SizedBox(width: 5),
                          InkWell(
                            onTap: () {
                              isRegister = !isRegister;
                              register = isRegister ? LOGIN : REGISTER;
                              login = isRegister ? REGISTER : LOGIN;
                              setState(() {});
                            },
                            child: Text(
                              register,
                              style: TextStyle(color: Colors.blue.shade800),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTextFormField(
      TextEditingController textcontroller, hinttext, labeltext,
      {validation}) {
    return TextFormField(
      validator: validation,
      controller: textcontroller,
      decoration: InputDecoration(
        hintText: hinttext,
        labelText: labeltext,
        labelStyle: TextStyle(
          color: Colors.indigo.shade400,
        ),
        hintStyle: TextStyle(color: Colors.indigo.shade400),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
              color: Colors.indigo.shade600,
              width: 2.0), // Dark border when not focused
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: BorderSide(
              color: Colors.indigo.shade500,
              width: 1.0), // Dark border when focused
        ),
      ),
    );
  }
}
