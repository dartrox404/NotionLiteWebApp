import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .89,
      width: context.width * .45,
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          SvgPicture.asset('assets/svg/Notes-bro.svg'),
          Text(
            'Your notes are here!',
            style: context.text.bodyLarge?.copyWith(
              fontFamily: 'poppins',
              color: context.color.secondary,
            ),
          ),
          Text(
            'Get your things organized here',
            style: context.text.bodyLarge?.copyWith(
              fontFamily: 'poppins',
              color: context.color.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
