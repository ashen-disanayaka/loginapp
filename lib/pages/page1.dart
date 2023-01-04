import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Scaffold(
            backgroundColor: Colors.white,
          ),
          Image.asset(
            'assets/image/Group 5.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 400,
            width: 550,
            child: Image.asset(
              'assets/image/Group 7.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 263,left: 18),
            child: Container(
              height: 441,
              width: 292,
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/image/8-Low-Light-Photography-Tips-Image-4.webp',
                        height: 258,
                        width: 255,
                      ),
                    ),
                  ),
                  const Expanded(

                      child: SizedBox(
                          height: 142,
                          width: 255,
                          child: Text(' Anyone who has been involved in the industry for a long time has a horror story about a messy design handoff. With a long list of stakeholders, deadlines.',style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontFamily: 'IBMPlexSerif',
                            fontWeight: FontWeight.w500,

                          ),))),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
