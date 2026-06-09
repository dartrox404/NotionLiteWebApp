import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_notes_app/data/model/note_model.dart';

class ApiServices {
  final Dio dio = Dio();
  String get url {
    final url = dotenv.env["URL"];
    if (url == null || url.isEmpty) {
      throw Exception("Url error : no url found in .env");
    }
    return url;
  }

  Future<List<NoteModel>> getAllNotes() async {
    try {
      final response = await dio.get(url);
      final List<dynamic> data = response.data;
      return data.map((e) => NoteModel.fromMap(e)).toList();
    } catch (e) {
      throw Exception("Failed to fetch data: $e");
    }
  }

  Future<NoteModel> getNotes(String id) async {
    try {
      final response = await dio.get("$url/$id");
      return NoteModel.fromMap(response.data);
    } catch (e) {
      throw Exception("Failed to fetch data : $e");
    }
  }

  Future<NoteModel> createNote(NoteModel x) async {
    try {
      final data = await dio.post(url, data: x.toMap());
      return NoteModel.fromMap(data.data);
    } catch (e) {
      throw Exception("Failed to create note : $e");
    }
  }

  Future<NoteModel> updateNote(String id, NoteModel x) async {
    try {
      final response = await dio.put("$url/$id", data: x.toMap());
      return NoteModel.fromMap(response.data);
    } catch (e) {
      throw Exception("Failed to update note : $e");
    }
  }

  Future<void> deleteNote(String id) async {
    try {
      await dio.delete("$url/$id");
    } catch (e) {
      throw Exception("Failed to update note : $e");
    }
  }
}
