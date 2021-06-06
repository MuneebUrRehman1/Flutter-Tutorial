import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepOrange
                ),
                accountName: Text("Muneeb Ur Rehman"),
                accountEmail: Text("muneebkhichi2000@gmail.com"),
                currentAccountPicture:CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              ),

          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.deepOrange,),
            title: Text("Home",
            textScaleFactor: 1.2,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.deepOrange,),
            title: Text("Profile",
              textScaleFactor: 1.2,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail_solid
              , color: Colors.deepOrange,),
            title: Text("Email",
              textScaleFactor: 1.2,),
          ),
        ],
      ) ,
    );
  }
  
}