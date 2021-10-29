import 'package:flutter/material.dart';
import 'package:project_gift_me/routes/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();

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
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildContainer() {
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
            decoration: BoxDecoration(color: Colors.white),
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
                _buildNamer(),
                SizedBox(height: 20),
                _buildPassworder(),
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
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.person, color: Color(0xFF1F68AC)),
            hintText: "Name",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildPassworder() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock, color: Color(0xFF1F68AC)),
            suffixIcon: InkWell(
                onTap: _togglePasswordView,
                child: Icon(Icons.visibility, color: Color(0xFF1F68AC))),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildForgetPasswordButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [FlatButton(onPressed: () {}, child: Text('Forgot Password?'))],
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
                  Navigator.of(context).pushNamed(RouteManager.mainPage);
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, letterSpacing: 1.5),
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
                  color: Colors.black,
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
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.signUp);
            },
            child: Text(
              'Sign Up',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Building Login');
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
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
}
