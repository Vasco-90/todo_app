import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        elevation: 6,
        child: Container(),
      ),
    );
  }
}
