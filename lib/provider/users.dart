import 'package:flutter/material.dart';
import 'package:flutter_crud/data/dummy.users.dart';
import 'package:flutter_crud/models/user.dart';

class UsersProvider with ChangeNotifier{
  final Map<String, User> _items = {...usersData };

  List<User> get all {
    return [... _items.values];
  }

  int get count {
    return _items.length;
  }
}