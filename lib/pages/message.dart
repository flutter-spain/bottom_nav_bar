import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
   
  const MessagePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Message',
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}