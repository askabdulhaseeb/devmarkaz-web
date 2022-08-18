import 'package:flutter/material.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            letterSpacing: 0.7,
          ),
          children: <TextSpan>[
            const TextSpan(text: 'Copyright'),
            const TextSpan(
              text: ' DevMarkaz ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: DateTime.now().year.toString()),
          ],
        ),
      ),
    );
  }
}
