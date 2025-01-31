import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_singup/controller/auth_controller.dart';
import 'package:getx_singup/views/signupScreen.dart';

class LoginScreen extends StatelessWidget {

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),

              Obx (() => TextField(
                controller: authController.emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email , color: Colors.blueAccent,),
                  labelText: "Email",
                  labelStyle: TextStyle(
                      color: Colors.blueAccent,
                  ),
                  errorText: authController.isEmailValid.value
                      ? null : "Enter a valid email!",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    )
                ),
                keyboardType: TextInputType.emailAddress,

              )),

              SizedBox(height: 20,),

              Obx (() => TextField(
                controller: authController.passController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock , color: Colors.blueAccent,),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.blueAccent,
                    ),
                    errorText: authController.isPassValid.value
                        ? null : "Password must be at least 6 characters!",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    )
                ),
                obscureText: true,

              )),

              SizedBox(height: 30,),

              ElevatedButton(
                  onPressed: () => authController.login(),
                  child: Text(
                    "Login"
                  ),
              ),

              SizedBox(height: 20,),
              
              TextButton(onPressed: () => Get.to(() => Signupscreen()),
                  child: Text("Don't have an account? SignUp!")
              )

              
            ],
          ),
        ),
      ),

    );
  }
}
