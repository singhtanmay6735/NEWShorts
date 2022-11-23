import 'package:flutter/material.dart';
import 'package:newsapp_test/components/searchbar.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 6, child: Column(
          children: [
            SearchBar(),
          ],
        )),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
