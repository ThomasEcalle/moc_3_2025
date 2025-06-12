import 'package:flutter/material.dart';
import 'package:moc_3_2025/lists/user.dart';

class ListsScreen extends StatelessWidget {
  ListsScreen({super.key});

  final List<User> _users = List.generate(1000, (index) {
    return User(
      firstName: 'First name $index',
      lastName: 'Last name $index',
    );
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     spacing: 10,
      //     children: List.generate(
      //       100,
      //       (index) => RedCircle(index: index),
      //     ),
      //   ),
      // ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          final user = _users[index];
          return ListTile(
            title: Text('${user.firstName} ${user.lastName}'),
          );
        },
      ),
    );
  }
}
