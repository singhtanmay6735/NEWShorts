import 'package:flutter/material.dart';
import '/pages/ArticleSummarised.dart';

class ArticleSummariser extends StatefulWidget {
  const ArticleSummariser({Key? key}) : super(key: key);

  @override
  State<ArticleSummariser> createState() => _ArticleSummariserState();
}

class _ArticleSummariserState extends State<ArticleSummariser> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Article title: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Summarise your Article here.', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900,  ),),
            SizedBox(height: 30.0,),
            Text('Paste the URL in the search bar below to summarise your read!', style: TextStyle(fontSize: 15.0, color: Colors.grey),),
            SizedBox(height: 30.0,),
            TextField(controller: myController,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
              decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,//this has no effect
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'Enter your URL',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: 30.0,),
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SummarisedArticle()));}, child: Text('GO',style: TextStyle(fontSize: 30.0, color: Colors.black,),  ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.fromLTRB(50, 10, 50, 10),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.amber),
                shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
             ),
             ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
