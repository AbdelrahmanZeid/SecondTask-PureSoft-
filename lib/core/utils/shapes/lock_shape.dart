// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LockShape extends CustomPainter {
  final Color color;
  LockShape({
    required this.color,
  });
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(0,size.height*1.0014286);
    path_0.cubicTo(size.width*0.1670000,size.height*0.2124286,size.width*0.2776667,size.height*0.0135714,size.width*0.5000000,size.height*0.0042857);
    path_0.cubicTo(size.width*0.7223333,size.height*0.0128571,size.width*0.8336667,size.height*0.2082857,size.width,size.height*0.9985714);
    path_0.cubicTo(size.width*0.7500000,size.height*0.9992857,size.width*0.7500000,size.height*0.9992857,0,size.height*1.0014286);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
