import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController _textEditingController = TextEditingController();
  var myText = "Flutter demo";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("My demo"),
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText = _textEditingController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/laptop.jpg"),
                SizedBox(
                  height: 20,
                ),
                Text(myText),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Type here",
                      labelText: "Required",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("android"),
              accountEmail: Text("androidsChef@gmail.com"),
              decoration: BoxDecoration(color: Colors.purple),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://t1.gstatic.com/images?q=tbn:ANd9GcShJe_TpVKYx0LvNVr-GLQpUm-qc86h5xPNacq2A8GiYgOtNBILTkINjh7jqYe6"),
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
