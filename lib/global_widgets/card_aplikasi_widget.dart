import 'package:flutter/material.dart';

// import '../styles/button_styles.dart';
import '../styles/text_styles.dart';

class CardProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icon;

  final VoidCallback navigasi;
  final Color color;

  const CardProfile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.navigasi,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigasi,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 40.0,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              icon,
              width: 60,
              height: 60,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyles.headline4,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    subtitle,
                    style: TextStyles.body2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
