import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:gap/gap.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        Icon(icon, color: context.color.secondary),
        const Gap(AppSizes.kspace5),
        Text(
          text,
          style: context.text.bodyMedium?.copyWith(
            fontFamily: 'poppins',
            color: context.color.secondary,
          ),
        ),
      ],
    );
  }
}
