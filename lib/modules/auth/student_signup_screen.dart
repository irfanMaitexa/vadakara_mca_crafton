import 'package:crafton/modules/auth/login_screen.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_text_field.dart';

class StudentSignUp extends StatefulWidget {
  const StudentSignUp({super.key});

  @override
  State<StudentSignUp> createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _addressController = TextEditingController();
  final _passwordController = TextEditingController();
  final _academicYearController = TextEditingController();
  final _courseController = TextEditingController();
  final _streamController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), blurRadius: 5.0)
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 70,
                      child: Text(
                        'Student Sign Up',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _nameController,
                        hintText: 'Enter name',
                        labelText: 'Name',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _emailController,
                        hintText: 'Enter email',
                        labelText: 'Email',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _mobileController,
                        hintText: 'Enter mobile number',
                        labelText: 'Mobile number',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _addressController,
                        hintText: 'Enter your address',
                        labelText: 'Address',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _academicYearController,
                        hintText: 'Academic year',
                        labelText: 'Academic year',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _courseController,
                        hintText: 'Course name',
                        labelText: 'Course name',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        controller: _streamController,
                        hintText: 'Stream',
                        labelText: 'Stream',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: CustomTextField(
                        obscureText: true,
                        controller: _passwordController,
                        labelText: 'Password',
                        hintText: 'Enter secure password',
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
                              'Signup',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account? '),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login_page(),
                                      ));
                                },
                                child: Text(
                                  'Click here to login.',
                                  style:
                                      TextStyle(fontSize: 14, color: Colors.blue),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
