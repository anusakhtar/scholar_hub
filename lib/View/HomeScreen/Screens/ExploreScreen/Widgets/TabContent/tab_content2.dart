
import 'package:flutter/material.dart';
import 'package:scholarship_hub/View/HomeScreen/Screens/AppliedScreen/Widgets/AppliedCard/applied_card.dart';


class TabContent2 extends StatefulWidget {
  const TabContent2({super.key});

  @override
  State<TabContent2> createState() => _TabContent2State();
}

class _TabContent2State extends State<TabContent2> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return const AppliedCard();
      },
    );
  }
}
