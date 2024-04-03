import 'package:flutter/material.dart';
import 'package:flutter_application_1/video_call_page.dart';
// import 'package:zegocloud_test/video_call_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Make a Video Call :)")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.video_chat),
        onPressed: () {
          _showTextEntryDialog(context);
        },
      ),
    );
  }

  void _showTextEntryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String text = '';

        return AlertDialog(
          title: const Text('Enter Your Call Id'),
          content: TextField(
            onChanged: (value) {
              text = value;
            },
            decoration: const InputDecoration(hintText: "Enter your text here"),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoCallPage(
                      callID: text,
                    ),
                  ),
                );
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
