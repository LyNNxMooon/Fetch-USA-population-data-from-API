import 'package:flutter/material.dart';
import 'package:usa_population_data_api/constant/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Recent USA Population',
          style: TextStyle(fontWeight: FontWeight.bold, color: kSecondaryColor),
        ),
      ),
    ));
  }
}
