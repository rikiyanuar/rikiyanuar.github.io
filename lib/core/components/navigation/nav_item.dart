import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final EdgeInsets? padding;

  const NavItem({
    Key? key,
    required this.onTap,
    required this.title,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding ?? EdgeInsets.symmetric(horizontal: 14, vertical: 24),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white.withOpacity(.8),
          ),
        ),
      ),
    );
  }
}
