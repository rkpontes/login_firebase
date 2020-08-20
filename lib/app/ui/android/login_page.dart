import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/app/controller/login_controller.dart';
import 'package:login_firebase/app/routes/app_routes.dart';

class LoginPage extends StatelessWidget {

  final LoginController _loginController = Get.find<LoginController>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: [
              Hero(
                tag: 'hero', 
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48.0,
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                controller: _loginController.emailTextController,
                validator: (value){
                  if(value.isEmpty){
                    return "Campo obrigatório.";
                  }else if( !GetUtils.isEmail(value) ){
                    return "Campo requer um E-mail válido.";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _loginController.passwordTextController,
                validator: (value){
                  if(value.isEmpty){
                    return "Campo obrigatório.";
                  }else if(value.length < 6){
                    return "Campo requer mínimo 6 caracteres.";
                  }
                  return null;
                },
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Senha",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  onPressed: (){ 
                    if(_formKey.currentState.validate()){
                      _loginController.login();
                    }
                  },
                  padding: EdgeInsets.all(12.0),
                  color: Get.theme.primaryColor,
                  child: Text("Acessar", style: TextStyle(color: Colors.white)),
                ),
              ),
              FlatButton(
                onPressed: (){ }, 
                child: Text("Esqueceu a senha?", style: TextStyle(color: Get.theme.primaryColor)),
              ),
              FlatButton(
                onPressed: (){ 
                  Get.toNamed(Routes.REGISTER);
                }, 
                child: Text("Cadastrar-se", style: TextStyle(color: Get.theme.primaryColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
