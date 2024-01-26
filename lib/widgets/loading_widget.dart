import 'package:flutter/material.dart';
import 'package:usa_population_data_api/constant/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(color: kSecondaryColor),
    );
  }
}
