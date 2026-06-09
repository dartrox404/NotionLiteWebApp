import 'package:flutter_notes_app/features/screens/add_note_screen.dart';
import 'package:flutter_notes_app/features/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static final GoRouter approute = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(path: '/add', builder: (context, state) => const AddNoteScreen()),
      GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    ],
  );
}
