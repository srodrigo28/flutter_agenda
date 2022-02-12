// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';

class UserTile extends StatelessWidget {
  //const UserTile({ Key? key }) : super(key: key);

  final User user;
  // ignore: use_key_in_widget_constructors
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
    ? CircleAvatar(child: Icon(Icons.person))
    : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            // ignore: duplicate_ignore
            IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(Icons.edit),
              color: Colors.blue,
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: (){},
            ),
          ],
        ),
      )
    );
  }
}