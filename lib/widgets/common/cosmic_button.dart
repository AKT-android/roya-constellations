import 'package:flutter/material.dart';
import '../../config/theme.dart';

class CosmicButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final String variant;
  final bool isLoading;
  final bool isDisabled;

  const CosmicButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.variant = 'primary',
    this.isLoading = false,
    this.isDisabled = false,
  }) : super(key: key);

  @override
  State<CosmicButton> createState() => _CosmicButtonState();
}

class _CosmicButtonState extends State<CosmicButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isPrimary = widget.variant == 'primary';

    return GestureDetector(
      onTapDown: widget.isDisabled || widget.isLoading
          ? null
          : (_) => setState(() => _isPressed = true),
      onTapUp: widget.isDisabled || widget.isLoading
          ? null
          : (_) {
            setState(() => _isPressed = false);
            widget.onPressed();
          },
      onTapCancel: widget.isDisabled || widget.isLoading
          ? null
          : () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: RoyaSpacing.lg,
          vertical: RoyaSpacing.md,
        ),
        decoration: BoxDecoration(
          gradient: isPrimary
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    RoyaColors.tealPrimary,
                    RoyaColors.tealBright,
                  ],
                )
              : LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    RoyaColors.blueAccent.withOpacity(0.2),
                    RoyaColors.tealPrimary.withOpacity(0.2),
                  ],
                ),
          borderRadius: BorderRadius.circular(RoyaBorderRadius.lg),
          border: Border.all(
            color: isPrimary
                ? RoyaColors.tealBright
                : RoyaColors.border.withOpacity(0.5),
          ),
          boxShadow: _isPressed && !widget.isDisabled
              ? [
                  BoxShadow(
                    color: RoyaColors.tealBright.withOpacity(0.5),
                    blurRadius: 12,
                    spreadRadius: 2,
                  ),
                ]
              : [],
        ),
        transform: Matrix4.identity()
          ..translate(
            0,
            _isPressed && !widget.isDisabled ? 2 : 0,
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.isLoading)
              SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation(
                    isPrimary ? RoyaColors.navyPrimary : RoyaColors.tealBright,
                  ),
                ),
              )
            else
              Text(
                widget.label,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: isPrimary
                          ? RoyaColors.navyPrimary
                          : RoyaColors.textPrimary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
