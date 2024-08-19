import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.99, // Increase width
        height: MediaQuery.of(context).size.height * 0.84,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF3AB794), // Ensure the container has a background color
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.speaker),
              title: Text('Text To Speech'),
              subtitle: Text('Manage your text to speech settings'),
            ),
            ListTile(
              leading: Icon(Icons.contrast_outlined),
              title: Text('High Contrast'),
              subtitle: Text('High Contrast mode preferences'),
            ),
            ListTile(
              leading: Icon(Icons.contrast_outlined),
              title: Text('Colour Blind Mode'),
              subtitle: Text('Change the colours so that they are more discernable for colour blindness'),
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text('Language'),
              subtitle: Text('Language Preferences settings'),
            ),
            ListTile(
              leading: Icon(Icons.call_outlined),
              title: Text('Help & Support'),
              subtitle: Text('Get help and support from a waiter'),
            ),
          ],
        ),
      ),
    );
  }
}