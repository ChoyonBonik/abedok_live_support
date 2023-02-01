import 'package:flutter/material.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger Page'),
      ),
      body: Center(
        child: Text('Messenger Page'),
      ),
    );
  }
}
