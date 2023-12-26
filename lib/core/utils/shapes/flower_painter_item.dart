
import 'package:flower/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class FlowerItemPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = AppColor.lightGreen
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.0085714);
    path_0.cubicTo(
        size.width * 0.6966667,
        size.height * 0.4571429,
        size.width * 0.0406667,
        size.height * 0.1440000,
        0,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.0389167,
        size.height * 0.8532143,
        size.width * 0.6994167,
        size.height * 0.5905000,
        size.width * 0.9983333,
        size.height * 0.9985714);
    path_0.cubicTo(
        size.width * 0.9987500,
        size.height * 0.7510714,
        size.width * 0.9987500,
        size.height * 0.7510714,
        size.width,
        size.height * 0.0085714);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = AppColor.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
