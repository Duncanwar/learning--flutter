import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: HomePage(), theme: ThemeData(primarySwatch: Colors.purple)));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(0),
              child: SingleChildScrollView(
                child: Card(
                    child: Column(
                  children: <Widget>[
                    Image.asset("assets/81eRAX3sB6L._AC_UY218_.jpg"),
                    SizedBox(height: 20),
                    Text(myText,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20),
                    Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter Some Text",
                                labelText: "Name")))
                  ],
                )),
              ))),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Duncan"),
              accountEmail: Text("nda@gmao.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1588731247530-4076fc99173e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGd1eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"))),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Pawan Kumar"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("mate@fsll.com"),
            trailing: Icon(Icons.edit),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
