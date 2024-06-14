import 'package:flutter/material.dart';

class TopBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path(); 
    path.moveTo(size.width*-0.0012000,size.height*0.7144714);
    path.lineTo(0,size.height*-0.0028571);
    path.lineTo(size.width*1.0016667,size.height*-0.0028571);
    path.lineTo(size.width*1.0015417,size.height*0.7894143);
    path.quadraticBezierTo(size.width*1.0055417,size.height*0.9595143,size.width*0.9855500,size.height*0.9784000);
    path.quadraticBezierTo(size.width*0.9749167,size.height*1.0127286,size.width*0.8759667,size.height*0.9873429);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}