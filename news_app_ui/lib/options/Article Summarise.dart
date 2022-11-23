import 'package:flutter/material.dart';
class ArticleSummariser extends StatefulWidget {
  const ArticleSummariser({Key? key}) : super(key: key);

  @override
  State<ArticleSummariser> createState() => _ArticleSummariserState();
}

class _ArticleSummariserState extends State<ArticleSummariser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.cyan,
    );
  }
}
