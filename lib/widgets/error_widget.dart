import 'package:flutter/material.dart';
import 'package:usa_population_data_api/constant/colors.dart';

class ErrorWidgetView extends StatelessWidget {
  const ErrorWidgetView({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error,
        style: const TextStyle(color: kSecondaryColor),
      ),
    );
  }
}
