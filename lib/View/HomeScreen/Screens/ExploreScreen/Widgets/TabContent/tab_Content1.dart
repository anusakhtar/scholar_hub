import 'package:flutter/material.dart';

import '../ScholarshipCard/scholarship_card.dart';

class TabContent1 extends StatelessWidget {
  const TabContent1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return ScholarshipCard();
      },
    );
  }
}
