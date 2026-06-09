import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:flutter_notes_app/features/screens/add_note_screen.dart';
import 'package:flutter_notes_app/features/widgets/homepage_header.dart';
import 'package:flutter_notes_app/features/widgets/homepage_navigation.dart';
import 'package:flutter_notes_app/features/widgets/last_section.dart';
import 'package:flutter_notes_app/features/widgets/main_screen.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: const AddNoteScreen(),
                backgroundColor: context.color.tertiary,
              );
            },
          );
        },
        child: Icon(Iconsax.add),
      ),
      backgroundColor: context.color.tertiary,
      body: SafeArea(
        child: Padding(
          padding: const .symmetric(vertical: AppSizes.kspace10),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const HomepageHeader(),
              const Gap(AppSizes.kspace16),
              Row(
                children: [
                  const HomepageNavigation(),
                  const MainScreen(),
                  const LastSection(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
