import 'package:flutter/material.dart';

class CircularAvatarRow extends StatelessWidget {
  const CircularAvatarRow({Key? key}) : super(key: key);

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
    return const Padding(
      padding: EdgeInsets.only(right: 16, bottom: 16),
      child: CircleAvatar(
        radius: 4,
        backgroundColor: Colors.white24,
      ),
    );
  }
}
