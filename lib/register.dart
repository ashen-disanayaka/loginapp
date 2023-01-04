import 'package:flutter/material.dart';
import 'package:signin/signin.dart';

import 'pages/page1.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Scaffold(
            backgroundColor: Colors.white,
          ),
          Image.asset(
            'assets/image/Group 4.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding:  EdgeInsets.only(top: 195),
            child: Center(
              child: Container(
                height: 170,
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
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          icon: Icon(Icons.account_circle,color: Colors.blue,),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          icon: Icon(Icons.lock,color: Colors.blue,),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          hintText: "Conform password",
                          icon: Icon(Icons.lock,color: Colors.blue,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480),
            child: Center(
              child: Positioned.fill(
                child: Container(
                  height: 50,
                  width: 318,
                  decoration: BoxDecoration(
                    color: Color(0xff0E2474),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: InkResponse(
                      onTap: () {
                        _showDialog(context);
                      },
                      child: Text('Sign Up',
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
        ],
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Congrt!!"),
        content: new Text("Your Registation Succsusful!\n Back to Login"),
        
        actions: <Widget>[
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signin()),
              );
            },
              child: new Text("OK")),
        ],
      );
    },
  );
}
