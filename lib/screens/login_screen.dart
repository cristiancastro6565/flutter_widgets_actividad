import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  Future<void> login() async {

    SharedPreferences prefs =
        await SharedPreferences.getInstance();

    String? email =
        prefs.getString('email');

    String? password =
        prefs.getString('password');

    if (emailController.text == email &&
        passwordController.text ==
            password) {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) =>
              const HomeScreen(),
        ),
      );

    } else {

      ScaffoldMessenger.of(context)
          .showSnackBar(
        const SnackBar(
          content: Text(
            'Datos incorrectos',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            colors: [
              Color(0xFF6A11CB),
              Color(0xFF2575FC),
            ],

            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(

          child: SingleChildScrollView(

            child: Padding(
              padding:
                  const EdgeInsets.all(25),

              child: Container(

                padding:
                    const EdgeInsets.all(25),

                decoration: BoxDecoration(

                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(
                          25),

                  boxShadow: [

                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.2),

                      blurRadius: 15,
                      offset:
                          const Offset(0, 8),
                    ),
                  ],
                ),

                child: Column(

                  mainAxisSize:
                      MainAxisSize.min,

                  children: [

                    Container(

                      padding:
                          const EdgeInsets.all(
                              18),

                      decoration:
                          BoxDecoration(

                        color: Colors
                            .deepPurple,

                        borderRadius:
                            BorderRadius
                                .circular(20),
                      ),

                      child: const Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(

                      'Bienvenido',

                      style: TextStyle(
                        fontSize: 32,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(

                      'Inicia sesión para continuar',

                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 35),

                    TextField(

                      controller:
                          emailController,

                      decoration:
                          InputDecoration(

                        labelText: 'Correo',

                        prefixIcon:
                            const Icon(
                          Icons.email,
                        ),

                        filled: true,

                        fillColor:
                            Colors.grey[100],

                        border:
                            OutlineInputBorder(

                          borderRadius:
                              BorderRadius
                                  .circular(
                                      15),

                          borderSide:
                              BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextField(

                      controller:
                          passwordController,

                      obscureText: true,

                      decoration:
                          InputDecoration(

                        labelText:
                            'Contraseña',

                        prefixIcon:
                            const Icon(
                          Icons.lock,
                        ),

                        filled: true,

                        fillColor:
                            Colors.grey[100],

                        border:
                            OutlineInputBorder(

                          borderRadius:
                              BorderRadius
                                  .circular(
                                      15),

                          borderSide:
                              BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(

                      width: double.infinity,
                      height: 55,

                      child: ElevatedButton(

                        onPressed: login,

                        style:
                            ElevatedButton
                                .styleFrom(

                          backgroundColor:
                              Colors
                                  .deepPurple,

                          shape:
                              RoundedRectangleBorder(

                            borderRadius:
                                BorderRadius
                                    .circular(
                                        15),
                          ),
                        ),

                        child: const Text(

                          'Iniciar sesión',

                          style: TextStyle(
                            color:
                                Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    TextButton(

                      onPressed: () {

                        Navigator.push(
                          context,

                          MaterialPageRoute(
                            builder: (_) =>
                                const RegisterScreen(),
                          ),
                        );
                      },

                      child: const Text(

                        'Crear usuario',

                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}