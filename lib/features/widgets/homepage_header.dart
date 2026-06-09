import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:flutter_notes_app/features/utils/my_textfield.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomepageHeader extends StatelessWidget {
  const HomepageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .center,
      mainAxisAlignment: .spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/svg/pencil-svgrepo-com.svg',
          height: 50,
          // ignore: deprecated_member_use
          color: context.color.primary,
        ),
        Text(
          'NotionLite',
          style: context.text.headlineSmall?.copyWith(
            fontFamily: 'poppins',
            color: context.color.secondary,
          ),
        ),
        Spacer(),
        MyTextfield(),
        Spacer(),
        Icon(Iconsax.favorite_chart, color: context.color.secondary),
        const Gap(AppSizes.kspace8),
        Icon(Iconsax.document_download, color: context.color.secondary),
        Spacer(),
        Text(
          'Update',
          style: context.text.bodyMedium?.copyWith(
            fontFamily: 'mons',
            color: context.color.secondary,
          ),
        ),
        const Gap(AppSizes.kspace8),
        Text(
          'Share',
          style: context.text.bodyMedium?.copyWith(
            fontFamily: 'mons',
            color: context.color.secondary,
          ),
        ),
        const Gap(AppSizes.kspace8),
        Padding(
          padding: const .only(right: AppSizes.kspace8),
          child: SvgPicture.asset(
            'assets/svg/avatar-girl-svgrepo-com.svg',
            height: 50,
          ),
        ),
      ],
    );
  }
}
