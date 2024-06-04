import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rest_api_project_2/models.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<models> postmodels = [];
  Future<List<models>> getpostmodels() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        postmodels.add(models.fromJson(i));
      }
      return postmodels;
    } else {
      return postmodels;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("restapi"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: getpostmodels(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text(
              "laading",
              style: TextStyle(fontSize: 30),
            );
          } else {
            return ListView.builder(
                itemCount: postmodels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(postmodels[index].title.toString()),
                    leading: Text(postmodels[index].id.toString()),
                  );
                });
          }
        },
      ),
    );
  }
}
