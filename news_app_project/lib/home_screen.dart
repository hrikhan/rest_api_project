import 'package:flutter/material.dart';
import 'package:news_app_project/models.dart';
import 'package:news_app_project/news_viewreposity.dart/view_repository.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  model_news modelnews = model_news();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "NEWS for YOU",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          leading: Icon(
            Icons.home,
          )),
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.5,
            width: width,
            child:FutureBuilder<model_news>(future: view_model.fetchnewsrepository(),
             builder:(BuildContext context, snapshot){
              if(snapshot.connectionState==ConnectionState.waiting)
              {

              }
              else{

              }

             } )

         ),  ],
      ),
    );
  }
}
