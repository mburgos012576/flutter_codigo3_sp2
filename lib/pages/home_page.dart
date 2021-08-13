import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_sp_2/widgets/my_drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: MyDrawerWidget(),
      body: Container(
        padding: EdgeInsets.all(12.0),
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(22.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0,5),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Patricia Vargas"),
              subtitle: Text("Name"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Av. Ciurliza 531"),
              subtitle: Text("Adress"),
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Active"),
              subtitle: Text("Dark mode"),
            ),
            ListTile(
              leading: Icon(Icons.person_outline_outlined),
              title: Text("Female"),
              subtitle: Text("Gender"),
            ),
          ],
        ),
      ),
    );
  }
}
