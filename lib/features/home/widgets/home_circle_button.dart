import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeCircleButton extends StatelessWidget {
  final Icon icon;
  final Function()? onPressed;
  const HomeCircleButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        onPressed: onPressed,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        child: icon,
      ),
    );
  }
}
