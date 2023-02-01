import 'package:flutter/material.dart';

class WhatsappPage extends StatelessWidget {
  const WhatsappPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Page'),
      ),
      body: Center(
        child: Text('WhatsApp Page'),
      ),
    );
  }
}