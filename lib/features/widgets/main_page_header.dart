import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          'Notes',
          style: context.text.headlineSmall?.copyWith(
            fontFamily: 'poppins',
            color: context.color.secondary,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.color.primary,
            borderRadius: .circular(AppSizes.kradiusLg),
          ),
          child: Padding(
            padding: const .symmetric(
              vertical: AppSizes.kspace5,
              horizontal: AppSizes.kspace12,
            ),
            child: Row(
              mainAxisSize: .min,
              children: [
                Icon(Iconsax.add, color: context.color.secondary),
                const Gap(AppSizes.kspace5),
                Text(
                  'Create',
                  style: context.text.bodyMedium?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
