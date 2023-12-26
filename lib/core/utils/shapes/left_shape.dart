import 'package:flutter/material.dart';
class LeftShape extends CustomPainter{
  
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
    path_0.moveTo(0,size.height*0.0042857);
    path_0.cubicTo(size.width*0.5006667,size.height*-0.0033571,size.width*0.9993333,size.height*0.1955000,size.width,size.height*0.5000000);
    path_0.cubicTo(size.width*0.9993333,size.height*0.8150714,size.width*0.4940000,size.height*0.9995000,0,size.height*1.0014286);
    path_0.cubicTo(0,size.height*0.7521429,0,size.height*0.7521429,0,size.height*0.0042857);
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
