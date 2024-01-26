import 'package:flutter/material.dart';
import 'package:usa_population_data_api/constant/colors.dart';
import 'package:usa_population_data_api/constant/dimensions.dart';
import 'package:usa_population_data_api/data/vos/data_vo.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required this.populationData});

  final DataVO populationData;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isDropDown = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kSP15x, left: kSP20x, right: kSP20x),
      child: Card(
        elevation: 5,
        color: kCardColor,
        child: ExpansionTile(
          trailing: _isDropDown
              ? const Icon(
                  Icons.arrow_drop_up,
                  color: kSecondaryColor,
                )
              : const Icon(
                  Icons.arrow_drop_down,
                  color: kSecondaryColor,
                ),
          title: Text(
            widget.populationData.year,
            style: const TextStyle(
                color: kSecondaryColor, fontWeight: FontWeight.bold),
          ),
          children: [
            ListTile(
              title: Text(
                "Population : ${widget.populationData.population}",
                style: const TextStyle(color: kPrimaryColor),
              ),
              tileColor: kSecondaryColor,
            ),
            ListTile(
              title: Text(
                "Nation : ${widget.populationData.nation}",
                style: const TextStyle(color: kPrimaryColor),
              ),
              tileColor: kSecondaryColor,
            )
          ],
          onExpansionChanged: (value) => setState(() {
            _isDropDown = value;
          }),
        ),
      ),
    );
  }
}
