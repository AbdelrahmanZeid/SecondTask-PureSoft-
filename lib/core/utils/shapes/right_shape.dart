import 'package:flutter/material.dart';
class RightShape extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width,size.height*0.0042857);
    path_0.cubicTo(size.width*0.5005833,size.height*0.0012143,size.width*0.0005833,size.height*0.1749286,size.width*0.0016667,size.height*0.5000000);
    path_0.cubicTo(size.width*-0.0007500,size.height*0.8585000,size.width*0.5437500,size.height*1.0017857,size.width,size.height*1.0014286);
    path_0.cubicTo(size.width,size.height*0.7521429,size.width,size.height*0.7521429,size.width,size.height*0.0042857);
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
