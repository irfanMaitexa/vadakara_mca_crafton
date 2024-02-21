import 'package:crafton/modules/auth/user_signup_screen.dart';
import 'package:crafton/splash.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 100,
          child: Text(
            'Login',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number, email or username',
                hintText: 'Enter valid email id as abc@gmail.com'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          //padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
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
                onPressed: () {},
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 62),
                child: Text('Dont have an account? '),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                    },
                    child: Text(
                      'Click here to register.',
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    )),
              )
            ],
          ),
        ))
      ],
              ),
            ),
    );
  }
}
