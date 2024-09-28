import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(  
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 40,
        ),
        child: Column(children: [
          const SizedBox(
            height: 30
          ),
          const Text("BIENVENIDO", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),  
          const SizedBox(
            height: 20
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text(
              "Login", 
              style: TextStyle(
                color: Colors.white
              ),
            )
          )
        ],),
        ) 
    );
  }
}