import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_gift_me/pages/main_page.dart';
import 'package:project_gift_me/pages/sign_up.dart';
import 'package:project_gift_me/styles/app_colors.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = new RegExp(p);

class _LoginScreenState extends State<LoginScreen> {
  String _email;
  String _password;

  void validation() {
    final FormState _form = _formKey.currentState;

    if (_form.validate()) {
      print("Yes");
    } else {
      print("No");
    }
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sign In',
          style: TextStyle(
            //importing the white text color
            color: AppColors.whiteTextColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  // Widget _buildProfile() {
  //   return Container(
  //       width: 180.0, height: 140.0, child: Icon(Icons.add_a_photo, size: 80));
  // }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Form(
            key: _formKey,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                //this BoxDecoration imports the white color
                color: AppColors.boxDecorationWhite,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == '') {
                          return 'Please Fill Email';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Email Is Invalid';
                        } else {
                          return "";
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'email@example.com',
                        prefixIcon: Icon(Icons.email),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email = value.trim();
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == '') {
                          return 'Please Fill Password';
                        } else if (value.length < 6) {
                          return 'Email Is Invalid';
                        } else {
                          return "";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                            },
                            child: Icon(Icons.visibility, color: Colors.black),
                          )),
                      onChanged: (value) {
                        setState(() {
                          _password = value.trim();
                        });
                      },
                    ),
                  ),
                  ElevatedButton(
                      //color: Colors.white,
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: AppColors.blackTextColor),
                      ),
                      onPressed: () {
                        validation();
                        auth.signInWithEmailAndPassword(
                            email: _email, password: _password);
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MainPage()));
                      }),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Do Not Have An Account?"),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text('Sign Up',
                            style: TextStyle(color: AppColors.blackTextColor)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Container(
                decoration: BoxDecoration(
                    //importing the blue boxDecoration
                    color: AppColors.boxDecorationBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(40),
                      bottomRight: const Radius.circular(40),
                    ))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              SizedBox(height: 10),
              SizedBox(height: 10),
              _buildContainer(),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    ));
  }
}
