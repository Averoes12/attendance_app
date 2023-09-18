import 'package:attendance_app/component/rounded_button.dart';
import 'package:attendance_app/component/rounded_textfield.dart';
import 'package:attendance_app/constant/constant.dart';
import 'package:attendance_app/screen/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/component/snackbar.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var username = TextEditingController();
    var password = TextEditingController();
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: colorDarkPrimary,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Welcome !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              RoundedTextField(controller: username, hint: "Username",),
              SizedBox(
                height: 8,
              ),
              RoundedTextField(controller: password, hint: "Password", isPassword: true),
              SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.bottomRight,
                  child: RoundedButton(
                    width: 150.0,
                    height: 50.0,
                    text: "Login",
                    radius: 30.0,
                    icon: Icon(Icons.arrow_forward_ios, size: textButton, color: Colors.white,),
                    onTap: (){
                      if(username.text != "" && password.text != ""){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen(username: username.text,)));
                      }else {
                        showToast(context, "Please fill out the blank field");
                      }
                    },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
