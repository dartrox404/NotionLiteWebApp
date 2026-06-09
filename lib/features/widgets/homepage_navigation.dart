import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:flutter_notes_app/features/utils/navigation_item.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomepageNavigation extends StatelessWidget {
  const HomepageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * .15,
      height: context.height * .89,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .center,
          children: [
            Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [
                NavigationItem(text: 'Templates', icon: Iconsax.note),
                const Gap(AppSizes.kspace5),
                NavigationItem(text: 'Import', icon: Iconsax.import),
                const Gap(AppSizes.kspace5),
                NavigationItem(text: 'Trash', icon: Iconsax.trash),
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              children: [
                Text(
                  'WorkFlow',
                  style: context.text.titleLarge?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
                const Gap(AppSizes.kspace5),
                NavigationItem(text: 'Notes', icon: Iconsax.note),
                const Gap(AppSizes.kspace5),
                NavigationItem(text: "Task", icon: Iconsax.repeat),
              ],
            ),
            Column(
              crossAxisAlignment: .start,
              children: [
                NavigationItem(text: 'Support', icon: Iconsax.support),
                const Gap(AppSizes.kspace5),
                NavigationItem(text: 'Help', icon: Iconsax.microphone),
                const Gap(AppSizes.kspace5),
                NavigationItem(text: 'Privacy Policy', icon: Iconsax.security),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
