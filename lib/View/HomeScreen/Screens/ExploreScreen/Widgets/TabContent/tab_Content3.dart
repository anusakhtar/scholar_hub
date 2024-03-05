import 'package:flutter/material.dart';

import '../ScholarshipCard/scholarship_card.dart';



class TabContent3 extends StatefulWidget {
  const TabContent3({super.key});

  @override
  State<TabContent3> createState() => _TabContent3State();
}

class _TabContent3State extends State<TabContent3> {
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
