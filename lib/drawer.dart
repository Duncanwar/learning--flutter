import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    ));
  }
}
