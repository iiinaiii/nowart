import 'package:flutter/material.dart';
import 'package:nowart/ui/page/top/top_page.dart';

class ContentsPage extends StatelessWidget {
  static Widget create() {
    return ContentsPage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TopPage.create(),
    );
  }
}
