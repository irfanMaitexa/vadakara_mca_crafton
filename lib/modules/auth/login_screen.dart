import 'package:crafton/modules/user/home/home_screen.dart';
import 'package:crafton/modules/auth/signup_screen.dart';
import 'package:crafton/modules/auth/user_signup_screen.dart';
import 'package:crafton/modules/user/home/user_root_screen.dart';
import 'package:crafton/splash.dart';
import 'package:flutter/material.dart';

import '../../utils/vslidator.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String? emailError;
  String? passwordError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 170, bottom: 170, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5.0)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 50,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      errorText: emailError,
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: passwordError,
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter secure password'),
                  ),
                ),
                SizedBox(
                  height: 65,
                  width: 360,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade700),
                        child: Text(
                          'Log in ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                        _loginHandler();
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account? '),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ));
                            },
                            child: Text(
                              'Click here to register.',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _loginHandler() {
    setState(() {
      emailError = validateEmail(_emailController.text);
      passwordError = validatePassword(_passwordController.text);
      // if (emailError == null && passwordError == null) {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => UserRootScreen(),), (route) => false);
      // } else {
      //   setState(() {});
      // }
    });
  }

}

