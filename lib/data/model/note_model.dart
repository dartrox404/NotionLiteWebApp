// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NoteModel {
  String? id;
  final String title;
  final String content;

  NoteModel({this.id, required this.title, required this.content});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'_id': id, 'title': title, 'content': content};
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['_id'] != null ? map['_id'] as String : null,
      title: map['title'] as String,
      content: map['content'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory NoteModel.fromJson(String source) =>
      NoteModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
