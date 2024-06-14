
import 'package:flutter/material.dart';

class BottomBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width*0.0002167,size.height*0.2128571);
    path.lineTo(size.width*0.0008333,size.height*0.1442857);
    path.quadraticBezierTo(size.width*0.0003167,size.height*0.0938429,size.width*0.0008083,size.height*0.0746571);
    path.cubicTo(size.width*0.0039750,size.height*0.0586286,size.width*0.0054167,size.height*0.0458857,size.width*0.0145083,size.height*0.0280571);
    path.cubicTo(size.width*0.0188583,size.height*0.0184857,size.width*0.0284083,size.height*0.0107000,size.width*0.0332167,size.height*0.0051429);
    path.quadraticBezierTo(size.width*0.0420333,size.height*-0.0032143,size.width*0.0841667,0);
    path.lineTo(size.width*1.0006083,size.height*0.2153000);
    path.lineTo(size.width*1.0016667,size.height*1.0014286);
    path.lineTo(size.width*0.0009333,size.height*0.9996143);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}