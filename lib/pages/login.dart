import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_gift_me/pages/main_page.dart';
import 'package:project_gift_me/routes/routes.dart';
import 'package:project_gift_me/styles/app_colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  bool isRememberMe = false;
  bool isHiddenPassword = true;
  late String email, password;
  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to Gift Me',
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

  Widget _buildContainer() {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ('Please Enter Your Email');
        }

        if (!RegExp('^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.]+.[a-z]')
            .hasMatch(value)) {
          return ("Please Enter A Valid Email");
        }

        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          //border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14),
          prefixIcon: Icon(Icons.email, color: Color(0xFF1F68AC)),
          hintText: "Email",
          //Importing the black hintStyle color
          hintStyle: TextStyle(color: AppColors.hintStyleColour)),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');

        if (value!.isEmpty) {
          return ('Password Is required, enter password');
        }
        if (!regex.hasMatch(value)) {
          return ('Please enter valid password with minimum of 6 characters');
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        //border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14),
        prefixIcon: Icon(Icons.lock, color: Color(0xFF1F68AC)),
        suffixIcon: InkWell(
            onTap: _togglePasswordView,
            child: Icon(Icons.visibility, color: Color(0xFF1F68AC))),
        hintText: "Password",
        hintStyle: TextStyle(color: AppColors.hintStyleColour),
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              //this BoxDecoration imports the white color
              color: AppColors.boxDecorationWhite,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign In",
                        style: TextStyle(
                          fontSize: 35,
                        ))
                  ],
                ),
                SizedBox(height: 30),
                emailField,
                SizedBox(height: 20),
                passwordField,
                SizedBox(height: 20),
                _buildForgetPasswordButton(),
                SizedBox(height: 20),
                _buildLoginButton(),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: _buildSignInButton2(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildNamer() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(),
    );
  }

  Widget _buildPassworder() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        autofocus: false,
        controller: passwordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');

          if (value!.isEmpty) {
            return ('Password Is required, enter password');
          }
          if (!regex.hasMatch(value)) {
            return ('Please enter valid password with minimum of 6 characters');
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          //border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 14),
          prefixIcon: Icon(Icons.lock, color: Color(0xFF1F68AC)),
          suffixIcon: InkWell(
              onTap: _togglePasswordView,
              child: Icon(Icons.visibility, color: Color(0xFF1F68AC))),
          hintText: "Password",
          hintStyle: TextStyle(color: AppColors.hintStyleColour),
        ),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Forgot Password?'),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 45,
            width: 160,
            margin: EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
                onPressed: () {
                  
                  signIn(emailController.text, passwordController.text);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    //imports the white text color
                    color: AppColors.whiteTextColor,
                    letterSpacing: 1.5,
                  ),
                )))
      ],
    );
  }

  Widget _buildSignInButton() {
    return GestureDetector(
        onTap: () => print("Sign In Pressed"),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Already have an Account?',
                style: TextStyle(
                  //importing the black text colour
                  color: AppColors.blackTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                  text: ' Sign Up',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ));
  }

  Widget _buildSignInButton2() {
    return Row(
      children: [
        Text('Do Not Have An Account?',
            style: TextStyle(
                //importing the black text color
                color: AppColors.blackTextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.signUp);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                //importing the blue text color
                color: AppColors.blueTextColor,
                fontSize: 18,
              ),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Building Login');
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
                        //importing the blue BoxDecoration
                        color: AppColors.boxDecorationBlue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(40),
                          bottomRight: const Radius.circular(40),
                        )),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildLogo(),
                    SizedBox(height: 10),
                    _buildContainer(),
                    SizedBox(height: 10),
                  ],
                )
              ],
            )));
  }

  void _togglePasswordView() {
    isHiddenPassword = !isHiddenPassword;

    setState(() {});
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                //Navigator.of(context).pushNamed(RouteManager.splashScreen2),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainPage()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
