import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../config/theme.dart';

class AnimatedStars extends StatefulWidget {
  const AnimatedStars({Key? key}) : super(key: key);

  @override
  State<AnimatedStars> createState() => _AnimatedStarsState();
}

class _AnimatedStarsState extends State<AnimatedStars>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late List<Star> _stars;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
    )..repeat();

    _generateStars();
  }

  void _generateStars() {
    final random = math.Random();
    _stars = List.generate(
      50,
      (index) => Star(
        x: random.nextDouble(),
        y: random.nextDouble(),
        size: random.nextDouble() * 1.5 + 0.5,
        duration: Duration(
          milliseconds: 2000 + random.nextInt(3000),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              RoyaColors.deepSpace,
              RoyaColors.navyPrimary,
            ],
          ),
        ),
        child: CustomPaint(
          painter: StarsPainter(
            animation: _controller,
            stars: _stars,
          ),
        ),
      ),
    );
  }
}

class Star {
  final double x;
  final double y;
  final double size;
  final Duration duration;

  Star({
    required this.x,
    required this.y,
    required this.size,
    required this.duration,
  });
}

class StarsPainter extends CustomPainter {
  final Animation<double> animation;
  final List<Star> stars;

  StarsPainter({
    required this.animation,
    required this.stars,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = RoyaColors.textPrimary
      ..style = PaintingStyle.fill;

    for (final star in stars) {
      final opacity = (math.sin(animation.value * 2 * math.pi) + 1) / 2 * 0.8;
      paint.color = RoyaColors.textPrimary.withOpacity(opacity);

      canvas.drawCircle(
        Offset(
          star.x * size.width,
          star.y * size.height,
        ),
        star.size,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(StarsPainter oldDelegate) => true;
}
