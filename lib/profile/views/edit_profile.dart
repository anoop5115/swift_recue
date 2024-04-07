import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/profile/views/Profile_page.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Changes Saved"),
          content: const Text("Your changes have been saved successfully."),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Phone',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Address/City',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Vehicle Model',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Vehicle Type',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Vehicle No.',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()),
                    );
                    _showAlert(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.withOpacity(.5),
                    disabledBackgroundColor: Colors.blue.withOpacity(.5),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: const Text('Save Changes',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
