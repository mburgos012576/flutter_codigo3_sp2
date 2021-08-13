import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget  {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
 String nameValue ="";
 String addressValue ="";
 bool darkModeValue = false;
 int gender = 1;
 TextEditingController _nameController = TextEditingController();  //para asignar valor por controller al TexField
 TextEditingController _addressController = TextEditingController();

   @override
   void initState(){
     super.initState();
     getSharedPreferences();
   }

  getSharedPreferences()async{
    SharedPreferences  prefs = await SharedPreferences.getInstance();
    nameValue = prefs.getString("name") ?? "No name";  //para que no empiece en  vacio
    addressValue = prefs.getString("address") ?? "No address"; //para que no empiece en  vacio
    darkModeValue = prefs.getBool("darkMode") ?? false;
    gender = prefs.getInt("radioGender") ?? 1;

    _nameController.text =  prefs.getString("name") ?? "No name";  //asignar el valaro del textfield
    _addressController.text = prefs.getString("address") ?? "No address";
    setState(() {

    });
  }

  saveSharedPreferences()async{
    SharedPreferences  prefs = await SharedPreferences.getInstance();
    prefs.setString("name", nameValue);
    prefs.setString("address", addressValue);
    prefs.setBool("darkMode", darkModeValue);
    prefs.setInt("radioGender", gender);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
        backgroundColor: darkModeValue ? Color(0xff1C1C1C) : Colors.deepPurpleAccent,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Text(
              "My Settings",
              style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff424242)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: "Name",
              ),
              onChanged: (String value){
                nameValue = value;
                saveSharedPreferences();
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: "Address",
              ),
              onChanged: (String value){
                addressValue = value;
                saveSharedPreferences();
              },
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Switch(value: true, onChanged: (bool value){}),
          SwitchListTile(
            value: darkModeValue,
            onChanged: (bool value) {
              darkModeValue = value;
              saveSharedPreferences();
              setState(() {
              });
            },
            title: Text("Dark Mode"),
            subtitle: Text("Active dark Mode!!"),
          ),
          Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                "Gender",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff424242)),
              ),),
          RadioListTile(
            value: 1,   //asignar un valor a cada radio
            groupValue: gender,
            title: Text("Masculino"),
            onChanged: (int? value) {
              gender=value!;
              setState(() {
                saveSharedPreferences();
                //print(gender);
              });
            },
          ),
          RadioListTile(
            value: 2,
            groupValue: gender,
            title: Text("Femenino"),
            onChanged: (int? value) {
              gender=value!;
              setState(() {
                saveSharedPreferences();
                //print(gender);
              });
            },
          ),
          // RadioListTile(
          //   value: 3,
          //   groupValue: gender,
          //   title: Text("No definido"),
          //   onChanged: (int? value) {
          //     gender=value!;
          //     setState(() {
          //       print(gender);
          //     });
          //   },
          // ),
        ],
      ),
    );
  }
}
