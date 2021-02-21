import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My demo"),
        backgroundColor: Colors.purple,
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("android"),
              accountEmail: Text("androidsChef@gmail.com"),
              decoration: BoxDecoration(color: Colors.purple),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("http://t1.gstatic.com/images?q=tbn:ANd9GcShJe_TpVKYx0LvNVr-GLQpUm-qc86h5xPNacq2A8GiYgOtNBILTkINjh7jqYe6"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Sub title"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Sub title"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
