import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class AddProfile extends StatefulWidget {
  const AddProfile({Key? key}) : super(key: key);

  @override
  State<AddProfile> createState() => _AddProfileState();

}

class _AddProfileState extends State<AddProfile> {
  final controllername = TextEditingController();
  final controllerage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),

      ),
      body: Column(
        children: [
          TextField(
            controller: controllername,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a username',
            ),
          ),
          TextField(
            controller: controllerage,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Age',
            ),
          ),
          IconButton(
              onPressed: () {
                final name = controllername.text;
                final age = controllerage.text;
                createUser(name: name,age: age);
              },
              icon: Icon(Icons.add))
        ],
      ),
    );

  }

  Future createUser({required String name,required String age}) async {

    final docUser = FirebaseFirestore.instance.collection('usersid').doc();



    final user = User(
      id: docUser.id,
      name: name,
      age: 21,
      birthday: DateTime(2001,7,28),
    );
    final json = user.toJson();


    await docUser.set(json);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Home()));

  }
}
class User {
  String id;
  final String name;
  final int age;
  final DateTime birthday;

  User({
    this.id = '',
    required this.name,
    required this.age,
    required this.birthday,
});

  Map<String ,dynamic> toJson() => {
    'id' : id,
    'name': name,
    'age': age,
    'birthday': birthday,
  };
}
