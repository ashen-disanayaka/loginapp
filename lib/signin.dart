import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:signin/pages/page1.dart';
import 'package:signin/register.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  // Create controllers for the email and password TextFields
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Scaffold(
            backgroundColor: Colors.white,
          ),
          Image.asset(
            'assets/image/Group 4.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 259),
            child: Center(
              child: Container(
                height: 120,
                width: 318,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.grey.shade100,
                    offset: const Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.grey.shade100,
                    offset: const Offset(5, 0),
                  )
                ]),
                child: Padding(
                  padding:
                       EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children:  [
                        TextField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                          ),
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480),
            child: Center(
              child: Positioned.fill(
                child: InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, perform the login
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page1()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 318,
                    decoration: BoxDecoration(
                      color: Color(0xff0E2474),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text('Sign In',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 600),
            child: Center(

              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                child: Text(
                  'Register here',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
final validator = ValidationBuilder();