# Flutter Notes App - Full Stack

A full-stack notes application built with Flutter, Node.js, Express, and MongoDB. This project demonstrates complete CRUD operations with clean architecture principles and state management using Riverpod.

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=Dart&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933.svg?style=for-the-badge&logo=Node.js&logoColor=white)
![Express](https://img.shields.io/badge/Express-000000.svg?style=for-the-badge&logo=Express&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-%2347A248.svg?style=for-the-badge&logo=MongoDB&logoColor=white)
![Riverpod](https://img.shields.io/badge/Riverpod-%23E56B6F.svg?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0id2hpdGUiIGQ9Ik0xMiAyQzYuNDggMiAyIDYuNDggMiAxMnM0LjQ4IDEwIDEwIDEwIDEwLTQuNDggMTAtMTBTMTcuNTIgMiAxMiAyem0wIDE4Yy00LjQxIDAtOC0zLjU5LTgtOHMzLjU5LTggOC04IDggMy41OSA4IDgtMy41OSA4LTggOHptMy41LTljLjgzIDAgMS41LS42NyAxLjUtMS41cy0uNjctMS41LTEuNS0xLjUtMS41LjY3LTEuNSAxLjUuNjcgMS41IDEuNSAxLjV6Ii8+PC9zdmc+Jmxv&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)

---

## Features

- ✅ Create, read, update, and delete notes
- ✅ Real-time UI updates
- ✅ REST API integration
- ✅ State management with Riverpod
- ✅ Clean and responsive Flutter UI
- ✅ Secure backend with Express.js
- ✅ MongoDB data persistence

---

## Tech Stack

### Frontend
- **Framework:** Flutter
- **Language:** Dart
- **State Management:** Riverpod
- **HTTP Client:** Dio / HTTP

### Backend
- **Runtime:** Node.js
- **Framework:** Express.js
- **Database:** MongoDB
- **ODM:** Mongoose
- **Middleware:** CORS

---

## Project Structure

```
project-root/
├── lib/
│   ├── data/
│   │   ├── models/
│   │   ├── services/
│   │   └── providers/
│   ├── features/
│   │   ├── screens/
│   │   └── widgets/
│   └── main.dart
├── server/
│   ├── models/
│   ├── routes/
│   ├── controllers/
│   ├── .env
│   └── server.js
└── README.md
```

---

## Getting Started

### Backend Setup

#### 1. Install Dependencies

```bash
cd server
npm install
```

#### 2. Configure Environment Variables

Create a `.env` file in the server directory:

```env
PORT=5050
MONGODBURL=mongodb://localhost:27017/notesdb
NODE_ENV=development
```

#### 3. Start the Backend Server

```bash
npm run dev
```

The server will run on `http://localhost:5050`

### Frontend Setup

#### 1. Install Dependencies

```bash
flutter pub get
```

#### 2. Run the Application

```bash
flutter run
```

---

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/note` | Retrieve all notes |
| GET | `/api/note/:id` | Retrieve a single note by ID |
| POST | `/api/note` | Create a new note |
| PUT | `/api/note/:id` | Update an existing note |
| DELETE | `/api/note/:id` | Delete a note |

---

## Usage Examples

### Creating a Note (Flutter)

```dart
import 'package:dio/dio.dart';

final dio = Dio();

Future<void> createNote(String title, String content) async {
  try {
    final response = await dio.post(
      'http://localhost:5050/api/note',
      data: {
        'title': title,
        'content': content,
      },
    );
    print('Note created: ${response.data}');
  } catch (e) {
    print('Error creating note: $e');
  }
}
```

### Fetching All Notes (Flutter)

```dart
import 'package:dio/dio.dart';

final dio = Dio();

Future<List<dynamic>> getAllNotes() async {
  try {
    final response = await dio.get('http://localhost:5050/api/note');
    return response.data;
  } catch (e) {
    print('Error fetching notes: $e');
    return [];
  }
}
```

### Using Riverpod Provider

```dart
import 'package:riverpod/riverpod.dart';
import 'package:dio/dio.dart';

final dioProvider = Provider((ref) => Dio());

final notesProvider = FutureProvider((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get('http://localhost:5050/api/note');
  return response.data;
});

// Usage in widget
class NotesScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notes = ref.watch(notesProvider);
    
    return notes.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(data[index]['title']),
          subtitle: Text(data[index]['content']),
        ),
      ),
      loading: () => CircularProgressIndicator(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
```

---

## Learning Outcomes

Through building this project, you'll gain knowledge in:

- Building REST APIs with Express.js
- Integrating Flutter applications with backend services
- State management using Riverpod
- Handling asynchronous data flows in Flutter
- MongoDB schema design and Mongoose ODM
- Full-stack application architecture
- CORS configuration and security best practices

---

## Future Enhancements

- 🔐 User authentication (JWT)
- ☁️ Deploy backend (Render, Railway, or Heroku)
- 🔍 Search and filter functionality
- 🏷️ Notes categorization and tagging
- 🌙 Dark mode support
- 📱 Offline-first synchronization
- 🔔 Push notifications
- 📊 Notes analytics

---

## License

This project is open source and available under the MIT License.

---

## Author

**Your Name**

- GitHub: [Your GitHub Profile](https://github.com/yourusername)
- LinkedIn: [Your LinkedIn Profile](https://linkedin.com/in/yourprofile)

---

## Support

If you found this project helpful, please consider giving it a ⭐ on GitHub!

For questions or issues, feel free to open an issue on the GitHub repository.

---

**Last Updated:** June 2026