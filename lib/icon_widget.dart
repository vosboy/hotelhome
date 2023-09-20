import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final Color purposecolor;
  final IconData purposeicon;
  final String purpose;

  const IconWidget({
    super.key,
    required this.purposecolor,
    required this.purposeicon,
    required this.purpose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        color: purposecolor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            IconButton(
              //uiでも作動はしてないのでnullにしてます。
              onPressed: null,
              icon: Icon(
                purposeicon,
                color: Colors.white,
                size: 25,
              ),
            ),
            Text(
              purpose,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  height: 0.4),
            )
          ],
        ),
      ),
    );
  }
}
