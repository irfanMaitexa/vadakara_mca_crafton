import 'package:crafton/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class StudentEditUserProfile extends StatelessWidget {
  StudentEditUserProfile({super.key});
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _addressController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        // leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.shopping_cart)),
        title: Text('Edit Profile',
            style: TextStyle(color: Colors.white, fontFamily: 'Ubuntu-Bold')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                isDark ? Icons.notifications : Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // -- IMAGE with ICON
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage('assets/images/slider1.png'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                      child: const Icon(Icons.camera, color: Colors.black, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // -- Form Fields
              Form(
                child: Column(
                  children: [
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
                      obscureText: true,
                      controller: _passwordController,
                      labelText: 'Password',
                      hintText: 'Enter secure password',
                    ),
                  ),
                    const SizedBox(height: 50),

                    // -- Form Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade700,
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text('Update Profile', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const SizedBox(height: 50),

                    // -- Created Date and Delete Button
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                     
                    //     ElevatedButton(
                    //       onPressed: () {},
                    //       style: ElevatedButton.styleFrom(
                    //           backgroundColor: Colors.redAccent.withOpacity(0.1),
                    //           elevation: 0,
                    //           foregroundColor: Colors.red,
                    //           shape: const StadiumBorder(),
                    //           side: BorderSide.none),
                    //       child: const Text('Delete'),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}