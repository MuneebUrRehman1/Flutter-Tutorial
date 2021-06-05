import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_img.png",fit: BoxFit.fill,),
            SizedBox(
              height: 20.0,
             // child: Text("Space"),
            ),
            Text(
              "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
             child:  Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                       hintText: "Enter Username",
                       labelText: "Username"
                   ),

                 ),
                 TextFormField(
                   obscureText: true  ,
                   decoration: InputDecoration(
                       hintText: "Enter Password",
                       labelText: "Password"
                   ),
                 ),
                 SizedBox(
                   height: 20.0,
                   // child: Text("Space"),
                 ),

                 ElevatedButton(
                     child: Text("Login"),
                   style: ButtonStyle(
                     foregroundColor: MaterialStateProperty.all(Colors.white),
                     backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                     minimumSize: MaterialStateProperty.all(Size(200, 50)),
                   ),
                   onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                   },
                 ),
               ],
             ),
           )

          ],
        ),
      ),
    );
  }
  
}