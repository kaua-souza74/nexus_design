import 'package:flutter/material.dart';

class MiniTrendChart extends StatelessWidget {
  const MiniTrendChart(
      {super.key,
      required this.color,
      this.values = const [
        0.3,
        0.42,
        0.38,
        0.62,
        0.55,
        0.72,
        0.68,
        0.84,
        0.75,
        0.9
      ]});
  final Color color;
  final List<double> values;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: 140,
      width: double.infinity,
      child: CustomPaint(painter: _TrendPainter(color, values)));
}

class _TrendPainter extends CustomPainter {
  _TrendPainter(this.color, this.values);
  final Color color;
  final List<double> values;

  @override
  void paint(Canvas canvas, Size size) {
    final grid = Paint()
      ..color = const Color(0xFFEDEFF0)
      ..strokeWidth = 1;
    for (var i = 0; i < 4; i++) {
      final y = size.height * i / 3;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), grid);
    }
    if (values.length < 2) return;
    final points = List.generate(
        values.length,
        (i) => Offset(size.width * i / (values.length - 1),
            size.height * (1 - values[i])));
    final line = Path()..moveTo(points.first.dx, points.first.dy);
    for (var i = 1; i < points.length; i++) {
      final mid = (points[i - 1].dx + points[i].dx) / 2;
      line.cubicTo(
          mid, points[i - 1].dy, mid, points[i].dy, points[i].dx, points[i].dy);
    }
    final area = Path.from(line)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(
        area,
        Paint()
          ..shader = LinearGradient(colors: [
            color.withValues(alpha: 0.2),
            color.withValues(alpha: 0)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
              .createShader(Offset.zero & size));
    canvas.drawPath(
        line,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..strokeCap = StrokeCap.round);
    canvas.drawCircle(points.last, 4, Paint()..color = color);
  }

  @override
  bool shouldRepaint(covariant _TrendPainter oldDelegate) =>
      oldDelegate.color != color || oldDelegate.values != values;
}
