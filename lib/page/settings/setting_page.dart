import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("settings"),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          // color: Colors.greenAccent,
          width: deviceWidth,
          height: deviceHeight,
          child: Column(
            children: [
              Text("this is settings page"),
            ],
          ),
        ),
      ),
    );
  }
}
