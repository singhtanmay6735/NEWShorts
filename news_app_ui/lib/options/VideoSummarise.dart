import 'package:flutter/material.dart';
import '/pages/SummarisedVideo.dart';
class VideoSummariser extends StatefulWidget {
  const VideoSummariser({Key? key}) : super(key: key);

  @override
  State<VideoSummariser> createState() => _VideoSummariserState();
}

class _VideoSummariserState extends State<VideoSummariser> {
  final myvideoController = TextEditingController();
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myvideoController.addListener(_printLatestValue);
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myvideoController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Article title: ${myvideoController.text}');
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
            Text('Summarise your video here.', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900,  ),),
            SizedBox(height: 30.0,),
            Text('Paste the URL in the search bar below to summarise your watch!', style: TextStyle(fontSize: 15.0, color: Colors.grey),),
            SizedBox(height: 30.0,),
            TextField(controller: myvideoController,
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
            TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SummarisedVideo()));}, child: Text('GO',style: TextStyle(fontSize: 30.0, color: Colors.black,),  ),
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
