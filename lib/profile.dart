import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Это страница профиля', style: TextStyle(fontSize: 24)),
    );
  }
}

class User {
  String name;
  String surname;
  int age;
  String phone;

  User(this.name, this.surname, this.age, this.phone);
}