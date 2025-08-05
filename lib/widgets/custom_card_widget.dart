import 'package:cuprofiles/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const CustomCardWidget({
    super.key,
    this.color,
    this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: color ?? cardBackgroundColor,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
