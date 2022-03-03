// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';

import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  fetchData() async {
    // print(res);
    var res = await http.get(url);
    data = jsonDecode(res.body);

    setState(() {});
    print(data);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: data != null
          ? ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]));
            })
          : Center(child: CircularProgressIndicator()),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
