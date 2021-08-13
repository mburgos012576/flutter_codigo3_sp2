
import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_sp_2/pages/settings_page.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff1C1C1C),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                //cabecera del Drawer
                color: Colors.deepPurpleAccent,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://lh3.googleusercontent.com/_0OiZeWgElIETUMZW8B9wEZR-V0BLMyDBHfK6hdYQVGzsryLQAZ0GEL9_PDi5NlzmpK8bETuJcZ0CtUQKnErvs36Xw=w640-h400-e365-rj-sc0x00ffffff"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://depor.com/resizer/dFX3j034-CJgT9Mpb4d5sVopRp4=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/5UUV6NB7PJHALDU7WOFJBGKKH4.jpg"),
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Michael Burgos",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    "Administrador",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled, color: Colors.white,),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white,),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
              },
              leading: Icon(Icons.settings, color: Colors.white,),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white54,),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.white54,),
            ListTile(
              //leading: Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text(
                "Privace",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text(
                "About",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.exit_to_app, color: Colors.white,),
              title: Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
