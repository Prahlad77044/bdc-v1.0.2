import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit),
          tooltip: "Edit Info",),

        ],
      ),
    );
  }
}
