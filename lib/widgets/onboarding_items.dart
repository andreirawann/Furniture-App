import 'package:flutter/material.dart';

import '../theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const OnboardingItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Image.asset(
          imageUrl,
          width: double.infinity,
        ),
        SizedBox(
          height: 127,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
