import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class LoginScreen extends StatefulWidget{

  _loginscreen createState() => _loginscreen();
}

class _loginscreen extends State<LoginScreen>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext buildContext){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height*0.3,
                width: height*0.3,
                padding: const EdgeInsets.symmetric(
                    vertical: 10
                ),
                child:Image.asset('assets/images/login1.jpg') ,
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: const Text("Login into Your Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),

              const SizedBox(height: 15),

              Container(
                width: width *0.8,
                child : TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "ENTER YOUR EMAIL",
                    labelText: "EMAIL",
                    labelStyle: TextStyle(color: Color(0xFFFFD600)),
                    contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:  BorderSide(
                        color:  Color(0xFFFFD600),
                      ),

                    ),
                    border:  OutlineInputBorder(
                        borderSide:  BorderSide(color:  Color(0xFFFFD600))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFFD600))),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                width: width *0.8,
                child : TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    hintText: "ENTER YOUR PASSWORD",
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: Color(0xFFFFD600)),
                    contentPadding:  EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                    enabledBorder:  OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: Color(0xFFFFD600) ,
                      ),

                    ),
                    border:  OutlineInputBorder(
                        borderSide:  BorderSide(color:  Color(0xFFFFD600))
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFFFD600))),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                width: width*0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const Text("Forgot Password ?",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    ),
                  ],
                ),
              ),

              Container(

                width: width*0.8,
                child: ElevatedButton(
                  onPressed: () {  },
                  child: const Text("Login",style: TextStyle(decorationColor: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFD600)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Color(0xFFFFD600))
                      ),),
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              Container(
                child: const Text("or Login With",style: const TextStyle(fontWeight: FontWeight.bold),),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width : width*0.1,
                      height : height*0.1,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(
                          'assets/images/google.jpg',
                        ),
                      ),

                    ),
                    const SizedBox(width: 25,),
                    Container(
                      width : width*0.1,
                      height : height*0.1,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(
                          'assets/images/apple.jpg',
                        ),
                      ),

                    ),
                  ],
                ) ,
              ),

              Container(),

              Container(),

            ],
          ),
        ),
      ),
    );
  }
}