import 'package:flutter/material.dart';
import 'package:newsapp_test/components/categorySelector.dart';
import 'package:newsapp_test/components/newsCarousel.dart';
import 'package:newsapp_test/components/tiledNewsView.dart';
import 'package:newsapp_test/components/topbar.dart';
import 'package:newsapp_test/components/welcomeWidget.dart';
import 'package:provider/provider.dart';
import '/options/Article Summarise.dart';
import '/options/VideoSummarise.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              DrawerHeader(child: Text('Other Options', style: TextStyle(fontSize: 30),)),
              ListTile(
                minLeadingWidth : 10,
                leading: Icon(Icons.play_arrow),
                title: Text('Summarise Video', style:TextStyle(fontSize: 20), ), onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoSummariser(),
                ),
              );},),
              ListTile(
                minLeadingWidth : 10,
                leading: Icon(Icons.newspaper),
                title: Text('Summarise Article',style:TextStyle(fontSize: 20),), onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ArticleSummariser(),
                ),
              );},),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopBar(),
                        SizedBox(height: 10),
                        WelcomeWidget(),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  NewsCarousel(),
                  SizedBox(
                    height: 15,
                  ),
                  CategorySelector(),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [TiledNewsView()],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
