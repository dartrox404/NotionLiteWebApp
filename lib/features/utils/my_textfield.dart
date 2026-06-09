import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * .3,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.color.secondary.withValues(alpha: .8),
        ),
        borderRadius: .circular(AppSizes.kspace32),
      ),
      child: Padding(
        padding: const .symmetric(vertical: AppSizes.kspace5),
        child: Center(
          child: Row(
            mainAxisSize: .min,
            children: [
              Icon(
                Iconsax.search_normal,
                color: context.color.secondary.withValues(alpha: .3),
              ),
              const Gap(AppSizes.kspace5),
              Text(
                'Search',
                style: context.text.bodyMedium?.copyWith(
                  fontFamily: 'mons',
                  color: context.color.secondary.withValues(alpha: .3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
