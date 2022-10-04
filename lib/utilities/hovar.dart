import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const HoverButton({super.key, required this.builder});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;
  bool temp = true;
  final hoveredtransform = Matrix4.identity()..scale(1.1);
  final notHoveredtransform = Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onExit(false),
        child: AnimatedContainer(
            duration: Duration(milliseconds: 20),
            transform: notHoveredtransform,
            child: widget.builder(isHovered)));
  }

  onEntered(bool bool) {
    setState(() {
      this.isHovered = bool;
    });
  }

  onExit(bool bool) {
    setState(() {
      this.isHovered = bool;
    });
  }
}
