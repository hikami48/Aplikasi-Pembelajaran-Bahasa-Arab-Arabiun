import 'package:flutter/material.dart';
import 'package:project/styles/color.dart';

// import '../styles/button_styles.dart';
import '../styles/text_styles.dart';

class CardRingkasan extends StatelessWidget {
  final String title;
  final String subtitle;

  const CardRingkasan({
    super.key,
    required this.title,
    required this.subtitle,


  });
  
   @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColor.primaryBase,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyles.headline4),
              const SizedBox(height: 8.0),
              Text(subtitle, style: TextStyles.body1,textAlign: TextAlign.justify,),
            ],
          ),
               
    );
  }
}

  