import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: OnBoardingPage(),
    ));
  }
}

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 50, right: 50),
      color: const Color(0xff343076),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/icon-chat.png",
            width: MediaQuery.of(context).size.width / 4,
          ),
          Text(
            "Connect",
            style: GoogleFonts.oswald(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "With Everyone",
            style: GoogleFonts.oswald(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "Make your day Connected with Chat App",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              height: 100,
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width / 1.5,
              child: CustomPaint(
                painter: ButtonPainter(),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Get Started",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = const Color(0xff3CE261);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width * 0.25, size.height*1.1);
    path.quadraticBezierTo(-size.width *0.01, size.height * 1.2,
        size.width * 0.25, 0);

    path.quadraticBezierTo(
        size.width * 0.3, -size.height*0.25, size.width * 0.8, size.height * 0.25);
    path.quadraticBezierTo(
        size.width, size.height * 0.45, size.width*0.95, size.height * 0.75);

    path.quadraticBezierTo(
       size.width*0.95, size.height * 0.95,size.width * 0.25, size.height*1.1);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
