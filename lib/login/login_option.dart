import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:sih_smart_education_system/login/sign_up.dart';

import '../home_page.dart';
import 'login.dart';

class Loginoptions extends StatefulWidget {

  @override
  _loginoption createState() => _loginoption();
}


class _loginoption extends State<Loginoptions>{
  Widget build(BuildContext buildContext){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10
                  ),
                  height: height*0.4,
                  width:  width*0.4,
                  child: Image.asset('assets/images/login1.jpg'),
                ),
                const SizedBox(height: 15,),

                Container(
                  child: const Text("How Would You Like To Register?",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),


                const SizedBox(height: 35,),

                GoogleAuthButton(
                  onPressed: () async {},
                  text: "Continue With Google",
                ),

                const SizedBox(height: 15,),
                AppleAuthButton(
                  onPressed: (){},
                  text: "Continue With Apple",
                ),
                const SizedBox(height: 15,),
                Container(
                  width: width *0.6,
                  height: height*0.04,
                  child: ElevatedButton.icon(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen(),
                        ),);

                    },
                    label: const Text("Continue with email",textAlign: TextAlign.center,style: TextStyle(
                        color: Colors.black87
                    ),),
                    icon: const Icon(Icons.email,color:  Color(0xFFFFD600)),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                            side: const BorderSide(color: Colors.white)
                        ),),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10
                  ),
                  child: const Text("Already have an account?"),
                ),

                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen(),
                        ),);
                      },
                      child :const Text("Login Here",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),

                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}