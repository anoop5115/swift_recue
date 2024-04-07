import 'package:flutter/material.dart';
import 'package:flutter_application_1/video_call/video_call_page.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a Video Call "),
      ),
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
          backgroundColor: Colors.blue.withOpacity(.4),
          title: const Text('MAKE A CALL !'),
          content: TextField(
            onChanged: (value) {
              text = value;
            },
            decoration: InputDecoration(
                fillColor: Colors.blue.withOpacity(.5),
                hintText: "ENTER HOSPITAL UID"),
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
