import 'package:flutter/material.dart';

class SummarisedArticle extends StatefulWidget {
  const SummarisedArticle({Key? key}) : super(key: key);

  @override
  State<SummarisedArticle> createState() => _SummarisedArticleState();
}

class _SummarisedArticleState extends State<SummarisedArticle> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700),),
            SizedBox(height: 30.0,),
            Text('Morbi et rutrum elit, vel volutpat nisi. Donec elementum dui sit amet orci luctus malesuada. Fusce libero leo, sodales id mi ac, efficitur ultrices massa. Sed hendrerit at nulla nec vestibulum. Quisque eleifend est vehicula velit laoreet elementum. Cras volutpat, metus consectetur laoreet lobortis, neque diam rutrum nunc, ac pellentesque mi massa vel sapien. Fusce quis posuere ligula, molestie rutrum sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi porta neque mauris, ut suscipit nulla ullamcorper quis. Ut viverra justo eget nisl consectetur, vel auctor tortor sagittis. Praesent malesuada ut leo sit amet maximus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer pulvinar mauris odio, eget pharetra nibh rutrum eget. Curabitur ut malesuada lacus. Nulla facilisi. Duis euismod tincidunt augue, vulputate egestas ligula egestas a.',
              style: TextStyle(fontSize: 15.0),)



          ],
        ),
      ),
    );
  }
}
