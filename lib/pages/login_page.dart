import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatefulWidget
{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changeButton = false;
  final _formKey= GlobalKey<FormState>();

  moveToHome(BuildContext context)
  async {

    if(_formKey.currentState!.validate())
      {
        setState(() {
          changeButton=true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        setState(() {
          changeButton=false;
        });
      }

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/welcome.png",fit: BoxFit.fill,),
              SizedBox(
                height: 20.0,
               // child: Text("Space"),
              ),
              Text(
                "Welcome $name",
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
                         labelText: "Username",
                     ),
                     validator: (value) {
                       if(value!.isEmpty)
                         {
                            return "Username cannot be empty";
                         }
                       return null;
                     },
                     onChanged: (value){
                       name=value;
                       setState(() {

                       });
                     } ,
                   ),
                   TextFormField(
                     obscureText: true  ,
                     decoration: InputDecoration(
                         hintText: "Enter Password",
                         labelText: "Password"
                     ),
                     validator: (value) {
                       if(value!.isEmpty)
                       {
                         return "Password cannot be empty";
                       }
                       else if(value.length<6)
                         {
                           return "Password length should be greater then 6";
                         }
                       return null;
                     },
                   ),
                   SizedBox(
                     height: 20.0,
                     // child: Text("Space"),
                   ),

                   Material(
                     borderRadius: BorderRadius.circular(changeButton? 50:10),
                     color: Colors.deepOrange,

                     child: InkWell(
                       splashColor: Colors.green,
                       onTap: () =>moveToHome(context),
                       child: AnimatedContainer(
                         duration: Duration(seconds: 1),
                         height: 50,
                         width: changeButton ?50 : 150,
                         alignment: Alignment.center,

                         child: changeButton?
                         Icon(
                             Icons.done,
                           color: Colors.white,
                         ): Text("Login",
                         style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 18),),
                         // decoration: BoxDecoration(
                         //   color: Colors.deepOrange,
                         //   // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                         //   borderRadius: BorderRadius.circular(changeButton? 50:10),
                         // ),
                       ),
                     ),
                   )
                   // ElevatedButton(
                   //     child: Text("Login"),
                   //   style: ButtonStyle(
                   //     foregroundColor: MaterialStateProperty.all(Colors.white),
                   //     backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                   //     minimumSize: MaterialStateProperty.all(Size(200, 50)),
                   //   ),
                   //   onPressed: (){
                   //      Navigator.pushNamed(context, MyRoutes.homeRoute);
                   //   },
                   // ),
                 ],
               ),
             )

            ],
          ),
        ),
      ),
    );
  }
}