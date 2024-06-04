import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset(
          'assets/logo.png',
          height: 100,
          width: 100,
        ),
        Form(
                key: _formKey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email Address",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: TextFormField(
                            controller: txtEmail,
                            decoration: const InputDecoration(
                              fillColor: Color(0xffF5F5F5),
                              hintText: "example@example.com",
                              prefixIcon: Icon(Icons.email),
                              // border: InputBorder.none,
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            controller: txtPassword,
                            decoration: const InputDecoration(
                              fillColor: Color(0xffF5F5F5),
                              // border: InputBorder.none,
                              hintText: "Enter your password",
                              prefixIcon: Icon(Icons.lock),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 35,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/forgotpassword');
                          },
                          child: Text("Forgot Password?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Theme.of(context).primaryColor,
                              ))
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.065,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff7058BA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.73),
                            ),
                          ),
                          child: const Text(
                            "Sign in",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/home', (route) => false);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}