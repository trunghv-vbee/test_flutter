import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/src/components/TabBase.dart';
import 'package:test_flutter/src/features/auth/LoginScreen.dart';

final TextStyle textStyle = TextStyle(color: Colors.purple);
const List<String> list = <String>['Việt Nam', 'Hàn Quốc'];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              image: AssetImage('assets/images/splash_background.png'),
              fit: BoxFit.cover,
              height: 50,
            )),
        Text('Nghe thử các giọng AI tại đây'),
        Center(
          child: DropdownMenu<String>(
            initialSelection: list.first,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            dropdownMenuEntries:
                list.map<DropdownMenuEntry<String>>((String value) {
              return DropdownMenuEntry<String>(value: value, label: value);
            }).toList(),
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.grey,
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: const Image(
                            image: AssetImage(
                                'assets/images/splash_background.png'),
                            alignment: Alignment.center,
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "This text can be so long so logn so",
                          ),
                          Text('data'),
                          Text('data'),
                        ],
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow_outlined,
                          size: 30,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
