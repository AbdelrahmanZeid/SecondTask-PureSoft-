
import 'package:flower/core/utils/app_color.dart';
import 'package:flutter/material.dart';
class SpeedShape extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paintFill0 = Paint()
      ..color = AppColor.lightGreen
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.2487500,0);
    path_0.quadraticBezierTo(size.width*-0.0028125,size.height*0.2947600,0,size.height*0.7982800);
    path_0.cubicTo(size.width*0.0013500,size.height*1.1000400,size.width*0.3193000,size.height*0.7976000,size.width*0.5002125,size.height*0.7973400);
    path_0.cubicTo(size.width*0.6890000,size.height*0.8035400,size.width*0.9990875,size.height*1.0794600,size.width*0.9987375,size.height*0.7982400);
    path_0.quadraticBezierTo(size.width*1.0019000,size.height*0.3011200,size.width*0.7500000,0);
    path_0.lineTo(size.width*0.2487500,0);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);


    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paintStroke0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}