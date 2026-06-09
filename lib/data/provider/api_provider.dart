import 'package:flutter_notes_app/data/services/api_services.dart';
import 'package:riverpod/riverpod.dart';

final apiProvider = Provider<ApiServices>((ref) => ApiServices());
