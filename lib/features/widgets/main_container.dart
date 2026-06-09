import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
    required this.title,
    required this.content,
    this.onPressed,
    this.editonPressed,
  });
  final String title, content;
  final void Function()? onPressed;
  final void Function()? editonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const .only(bottom: AppSizes.kspace8),
      decoration: BoxDecoration(
        color: context.color.onTertiary.withValues(alpha: .3),
        borderRadius: .circular(AppSizes.kiconLg),
      ),
      child: Padding(
        padding: const .symmetric(
          vertical: AppSizes.kspace10,
          horizontal: AppSizes.kspace16,
        ),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  title,
                  style: context.text.titleMedium?.copyWith(
                    fontFamily: 'poppins',
                    color: context.color.secondary,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: editonPressed,
                  icon: Icon(Iconsax.edit, color: Colors.red),
                ),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(Iconsax.trash, color: Colors.red),
                ),
              ],
            ),
            const Gap(AppSizes.kspace5),
            Text(
              content,
              style: context.text.bodySmall?.copyWith(
                fontFamily: 'poppins',
                color: context.color.onTertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
