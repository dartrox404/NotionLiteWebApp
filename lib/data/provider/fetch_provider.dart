import 'package:flutter_notes_app/data/model/note_model.dart';
import 'package:flutter_notes_app/data/provider/api_provider.dart';
import 'package:flutter_notes_app/data/services/api_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final noteProvider =
    StateNotifierProvider<FetchProvider, AsyncValue<List<NoteModel>>>((ref) {
      return FetchProvider(ref.read(apiProvider));
    });

class FetchProvider extends StateNotifier<AsyncValue<List<NoteModel>>> {
  final ApiServices api;

  FetchProvider(this.api) : super(const AsyncLoading()) {
    getNote();
  }

  Future<void> getNote() async {
    try {
      final response = await api.getAllNotes();

      state = AsyncData(response);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> createNote(NoteModel note) async {
    try {
      await api.createNote(note);
      await getNote();
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> deleteNote(String id) async {
    try {
      await api.deleteNote(id);
      await getNote();
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> updateNote(String id, NoteModel note) async {
    try {
      await api.updateNote(id, note);
      await getNote();
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}
