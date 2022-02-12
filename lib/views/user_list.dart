import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/data/dummy.users.dart';

class UserList extends StatelessWidget{
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = {...usersData};
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      )
    );
  }
}