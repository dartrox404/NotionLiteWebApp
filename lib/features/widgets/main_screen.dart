import 'package:flutter/material.dart';
import 'package:flutter_notes_app/core/const/app_sizes.dart';
import 'package:flutter_notes_app/core/extensions/app_extensions.dart';
import 'package:flutter_notes_app/data/provider/fetch_provider.dart';
import 'package:flutter_notes_app/features/screens/update_note_screen.dart';
import 'package:flutter_notes_app/features/widgets/main_container.dart';
import 'package:flutter_notes_app/features/widgets/main_page_header.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchnote = ref.watch(noteProvider);
    final delete = ref.read(noteProvider.notifier);
    return SizedBox(
      width: context.width * .4,
      height: context.height * .89,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const MainPageHeader(),
            const Gap(AppSizes.kspace10),
            fetchnote.when(
              data: (data) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MainContainer(
                        title: data[index].title,
                        content: data[index].content,
                        editonPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: context.color.tertiary,
                                content: UpdateNoteScreen(x: data[index]),
                              );
                            },
                          );
                        },
                        onPressed: () =>
                            delete.deleteNote(data[index].id.toString()),
                      );
                    },
                  ),
                );
              },
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => Center(child: const CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
