import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:flutter_notes_app/data/model/note_model.dart';
import 'package:flutter_notes_app/data/provider/fetch_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class UpdateNoteScreen extends ConsumerStatefulWidget {
  const UpdateNoteScreen({super.key, required this.x});
  final NoteModel x;

  @override
  ConsumerState<UpdateNoteScreen> createState() => _UpdateNoteScreenState();
}

class _UpdateNoteScreenState extends ConsumerState<UpdateNoteScreen> {
  late TextEditingController titlecontroller;
  late TextEditingController contentcontroller;

  @override
  void initState() {
    contentcontroller = TextEditingController(text: widget.x.content);
    titlecontroller = TextEditingController(text: widget.x.title);
    super.initState();
  }

  @override
  void dispose() {
    titlecontroller.dispose();
    contentcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final updatenote = ref.read(noteProvider.notifier);
    return Container(
      width: context.width * .3,
      height: context.height * .36,
      decoration: BoxDecoration(color: context.color.tertiary),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Update Note',
              style: context.text.titleLarge?.copyWith(
                fontFamily: 'poppins',
                color: context.color.secondary,
              ),
            ),
            const Gap(AppSizes.kspace8),
            TextField(
              controller: titlecontroller,
              style: context.text.bodyMedium?.copyWith(
                fontFamily: 'poppins',
                color: context.color.secondary,
              ),
              cursorColor: context.color.secondary,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: context.text.bodyMedium?.copyWith(
                  fontFamily: 'poppins',
                  color: context.color.secondary,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  borderSide: BorderSide(
                    color: context.color.secondary.withValues(alpha: .5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  borderSide: BorderSide(color: context.color.primary),
                ),
              ),
            ),
            const Gap(AppSizes.kspace8),
            TextField(
              controller: contentcontroller,
              style: context.text.bodyMedium?.copyWith(
                fontFamily: 'poppins',
                color: context.color.secondary,
              ),
              cursorColor: context.color.secondary,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Content",
                labelStyle: context.text.bodyMedium?.copyWith(
                  fontFamily: 'poppins',
                  color: context.color.secondary,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  borderSide: BorderSide(
                    color: context.color.secondary.withValues(alpha: .5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
                  borderSide: BorderSide(color: context.color.primary),
                ),
              ),
            ),
            const Gap(AppSizes.kspace12),
            Row(
              mainAxisAlignment: .end,
              children: [
                ClipRRect(
                  borderRadius: .circular(AppSizes.kradiusSm),
                  child: MaterialButton(
                    onPressed: () => context.pop(),
                    color: context.color.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Cancel',
                        style: context.text.bodySmall?.copyWith(
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(AppSizes.kspace8),
                ClipRRect(
                  borderRadius: .circular(AppSizes.kradiusSm),
                  child: MaterialButton(
                    onPressed: () {
                      updatenote.updateNote(
                        widget.x.id.toString(),
                        NoteModel(
                          title: titlecontroller.text.trim(),
                          content: contentcontroller.text.trim(),
                        ),
                      );
                      titlecontroller.clear();
                      contentcontroller.clear();
                      context.pop();
                    },
                    color: context.color.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Update',
                        style: context.text.bodySmall?.copyWith(
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
