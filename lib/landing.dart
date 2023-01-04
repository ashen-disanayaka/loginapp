
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signin/signin.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(backgroundColor: Color(0xff0E2474),
      foregroundColor: Colors.black87, minimumSize: Size(318, 50),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          const Scaffold(
            backgroundColor: Colors.white,
          ),
          Image.asset(
            'assets/image/Group 1.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 518),
            child: Center(
              child: TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()),
                  );
                },
                child:  Text('Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    )),
              ),
            ),
          ),


        ],
      ),
    );
  }


}
