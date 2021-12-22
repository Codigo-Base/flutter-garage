import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.minWidth,
    this.radius,
  }) : super(key: key);

  final double? minWidth;
  final BorderRadius? radius;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(12),
        width: minWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: radius ?? BorderRadius.circular(20),
        ),
        child: Align(child: child, widthFactor: 1,),
      ),
    );
  }
}
