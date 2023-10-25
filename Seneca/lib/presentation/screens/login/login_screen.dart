import 'package:flutter/material.dart';
import 'package:practicaclase/config/widgets/custom_button.dart';
import 'package:practicaclase/presentation/screens/home/home_screen.dart';


class LoginScreen extends StatelessWidget {


  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 58, 156),
      body: Center(
        child: Padding(

          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage("assets/iseneca.png"),
              ),
              TextField(
                controller: usuarioController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(labelText: 'Usuario',labelStyle: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                style: const TextStyle(color: Colors.white),
                decoration:  InputDecoration(labelText: 'Contraseña',labelStyle: const TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    color: Colors.white, 
                    onPressed: () { 
                      
                     },
                  ),
                ),    
              ),
              
              const SizedBox(height: 10),
              CustomButton(
                onPressed: () {
                  final usuario = usuarioController.text;
                  final password = passwordController.text;
                  if (usuario == password) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  } else{
                    Widget okButton = TextButton(
                        child:const  Text("OK"),
                        onPressed: () { },
                        );
                    AlertDialog alert = AlertDialog(
                      title:const  Text("ERROR"),
                      content:const Text("usuario y contraseña incorrecta"),
                      actions: [
                        okButton,
                      ],
                    );
                    showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return alert;
                    },
                    );
                  }
                },
                text: 'Entrar',
              ),
               const SizedBox(
                height: 100,
                  child: Center(
                  child: Text("No recuerdo mi contraseña", style: TextStyle(color: Colors.white, decoration: TextDecoration.underline,decorationColor: Colors.white)),
              ),
              ),
              const SizedBox(height: 150),
             const Image(
                      image: AssetImage("assets/juntaDeAndalucia.png"),
                      height: 100
                    )
            ],
          ),
        ),
      ),
    );
  }
}

