import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.gradientColors,
    this.gradientBegin = AlignmentGeometry.topCenter,
    this.gradientEnd = AlignmentGeometry.bottomCenter,
    this.gradientStops = const [0.0, 1.0],
    this.child,
  });

  final List<Color> gradientColors;
  final Widget? child;
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradientEnd;
  final List<double> gradientStops;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: gradientBegin,
          end: gradientEnd,
          stops: gradientStops,
        ),
      ),
      child: child,
    );
  }
}
