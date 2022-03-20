import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var eamil = "login";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () async{
            FacebookAuth.instance.login(
              permissions: ["public_profile", "email"]
            ).then((value){
              FacebookAuth.instance.getUserData().then((userData){
                setState(() {
                  eamil = userData["email"];
                });
              });
            });
          },
          child: Text(eamil),),
      ),
    );
  }
}
