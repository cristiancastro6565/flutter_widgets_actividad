import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() =>
      _RegisterScreenState();
}

class _RegisterScreenState
    extends State<RegisterScreen> {

  final nameController =
      TextEditingController();

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  final confirmPasswordController =
      TextEditingController();

  Future<void> register() async {

    if (passwordController.text !=
        confirmPasswordController.text) {

      ScaffoldMessenger.of(context)
          .showSnackBar(

        const SnackBar(
          content: Text(
            'Las contraseñas no coinciden',
          ),
        ),
      );

      return;
    }

    SharedPreferences prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      'name',
      nameController.text,
    );

    await prefs.setString(
      'email',
      emailController.text,
    );

    await prefs.setString(
      'password',
      passwordController.text,
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(

      const SnackBar(
        content: Text(
          'Usuario registrado',
        ),
      ),
    );

    Navigator.pop(context);
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
                    const EdgeInsets.all(
                        25),

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

                        color:
                            Colors.deepPurple,

                        borderRadius:
                            BorderRadius
                                .circular(
                                    20),
                      ),

                      child: const Icon(

                        Icons.person_add,

                        size: 70,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 25),

                    const Text(

                      'Crear cuenta',

                      style: TextStyle(
                        fontSize: 32,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(

                      'Regístrate para continuar',

                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 35),

                    TextField(

                      controller:
                          nameController,

                      decoration:
                          InputDecoration(

                        labelText: 'Nombre',

                        prefixIcon:
                            const Icon(
                          Icons.person,
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

                    const SizedBox(height: 20),

                    TextField(

                      controller:
                          confirmPasswordController,

                      obscureText: true,

                      decoration:
                          InputDecoration(

                        labelText:
                            'Confirmar contraseña',

                        prefixIcon:
                            const Icon(
                          Icons.lock_outline,
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

                        onPressed: register,

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

                          'Registrarse',

                          style: TextStyle(
                            color:
                                Colors.white,
                            fontSize: 18,
                          ),
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