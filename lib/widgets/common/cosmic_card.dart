import 'package:flutter/material.dart';
import '../../config/theme.dart';

class CosmicCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsets padding;

  const CosmicCard({
    Key? key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(RoyaSpacing.lg),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: RoyaColors.cardSurface,
          borderRadius: BorderRadius.circular(RoyaBorderRadius.lg),
          border: Border.all(
            color: RoyaColors.border,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: RoyaColors.tealPrimary.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
