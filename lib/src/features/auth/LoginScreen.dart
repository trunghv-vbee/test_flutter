import 'package:flutter/material.dart';
import 'package:test_flutter/src/components/TabBase.dart';
import 'package:test_flutter/src/features/Home/Home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController username;
  late TextEditingController password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),
              TextButton(
                  onPressed: () {
                    print(username.value.text);
                    print(password.text);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => TabBase()));
                  },
                  child: Text('Login'))
            ],
          ),
        ));
  }
}
