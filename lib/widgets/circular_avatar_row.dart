import 'package:flutter/material.dart';

class CircularAvatarRow extends StatelessWidget {
  const CircularAvatarRow({this.color, Key? key}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _smallCircle(),
        _smallCircle(),
        _smallCircle(),
        _smallCircle(),
        _smallCircle(),
        _smallCircle(),
      ],
    );
  }

  Widget _smallCircle() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 16),
      child: CircleAvatar(
        radius: 4,
        backgroundColor: color ?? Colors.white24,
      ),
    );
  }
}
