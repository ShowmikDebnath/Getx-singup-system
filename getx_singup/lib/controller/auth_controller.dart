import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var confirmPassController = TextEditingController();

  var isEmailValid = true.obs;
  var isPassValid = true.obs;
  var isConfPassValid = true.obs;

  void login(){
    String email = emailController.text.trim();
    String pass = passController.text.trim();

    if(email.isEmpty || !email.isEmail){
      isEmailValid.value = false;
    }
    else{
      isEmailValid.value = true;
    }
    if(pass.isEmpty || pass.length < 6){
      isPassValid.value = false;
    }
    else{
      isPassValid.value = true;
    }

    // VALLIDATING EMAIL AND PASSWORD
    if(isEmailValid.value && isPassValid.value && emailController.text == "abc@gmail.com"){
      emailController.clear();
      passController.clear();
      Get.snackbar("Success", "Logged in successfully!",
        colorText: Colors.white,
        backgroundColor: Colors.green,
      );
    }
    else {
      Get.snackbar("Error", "Logged in failed!",
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }
  }


  void signup(){
    String email = emailController.text.trim();
    String pass = passController.text.trim();
    String confPass = confirmPassController.text.trim();

    if(email.isEmpty || !email.isEmail){
      isEmailValid.value = false;
    }
    else{
      isEmailValid.value = true;
    }
    if(pass.isEmpty || pass.length < 6){
      isPassValid.value = false;
    }
    else{
      isPassValid.value = true;
    }

    if(confPass != pass){
      isConfPassValid.value = false;
    }
    else{
      isConfPassValid.value = true;
    }

    // VALIDATING EMAIL AND PASSWORD
    if(isEmailValid.value && isPassValid.value && isConfPassValid.value){
      emailController.clear();
      passController.clear();
      confirmPassController.clear();
      Get.snackbar("Success", "Sign Up successfully!",
        colorText: Colors.white,
        backgroundColor: Colors.green,
      );
    }
    else {
      Get.snackbar("Error", "Sign Up failed!",
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }


  }


}