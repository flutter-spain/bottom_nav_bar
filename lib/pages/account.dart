import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
   
  const AccountPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Account',
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}