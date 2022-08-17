import 'package:flutter/material.dart';

class UnderlineTextButton extends StatelessWidget {
  const UnderlineTextButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.textColor,
    Key? key,
  }) : super(key: key);
  final String title;
  final bool isSelected;
  final Color? textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const SizedBox(height: 2),
            Text(
              title,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w800 : FontWeight.w200,
              ),
            ),
            Container(
              height: 2,
              width: 20,
              color:
                  isSelected ? textColor ?? Colors.white : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
