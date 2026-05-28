import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  String name = '';

  Future<void> getUser() async {

    SharedPreferences prefs =
        await SharedPreferences.getInstance();

    setState(() {
      name =
          prefs.getString('name') ?? '';
    });
  }

  Future<void> logout() async {

    Navigator.pushReplacement(
      context,

      MaterialPageRoute(
        builder: (_) =>
            const LoginScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getUser();
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

        child: SafeArea(

          child: Padding(

            padding:
                const EdgeInsets.all(20),

            child: Column(

              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Row(

                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween,

                  children: [

                    Column(

                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,

                      children: [

                        const Text(

                          'Bienvenido 👋',

                          style: TextStyle(
                            color:
                                Colors.white70,
                            fontSize: 18,
                          ),
                        ),

                        Text(

                          name,

                          style: const TextStyle(
                            color:
                                Colors.white,
                            fontSize: 32,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    CircleAvatar(

                      radius: 30,

                      backgroundColor:
                          Colors.white,

                      child: Text(

                        name.isNotEmpty
                            ? name[0]
                            : 'U',

                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight:
                              FontWeight.bold,
                          color:
                              Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                Container(

                  width: double.infinity,

                  padding:
                      const EdgeInsets.all(
                          25),

                  decoration: BoxDecoration(

                    color: Colors.white,

                    borderRadius:
                        BorderRadius.circular(
                            25),
                  ),

                  child: Column(

                    children: [

                      const Icon(
                        Icons.verified_user,
                        size: 80,
                        color:
                            Colors.deepPurple,
                      ),

                      const SizedBox(
                          height: 20),

                      const Text(

                        'Inicio de sesión exitoso',

                        textAlign:
                            TextAlign.center,

                        style: TextStyle(
                          fontSize: 24,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),

                      const SizedBox(
                          height: 10),

                      const Text(

                        'La aplicación Flutter funciona correctamente.',

                        textAlign:
                            TextAlign.center,

                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                Row(

                  children: [

                    Expanded(

                      child: Container(

                        padding:
                            const EdgeInsets
                                .all(20),

                        decoration:
                            BoxDecoration(

                          color:
                              Colors.white,

                          borderRadius:
                              BorderRadius
                                  .circular(
                                      20),
                        ),

                        child: Column(

                          children: const [

                            Icon(
                              Icons.person,
                              color: Colors
                                  .deepPurple,
                              size: 40,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Perfil',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight
                                        .bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(

                      child: Container(

                        padding:
                            const EdgeInsets
                                .all(20),

                        decoration:
                            BoxDecoration(

                          color:
                              Colors.white,

                          borderRadius:
                              BorderRadius
                                  .circular(
                                      20),
                        ),

                        child: Column(

                          children: const [

                            Icon(
                              Icons.security,
                              color: Colors
                                  .deepPurple,
                              size: 40,
                            ),

                            SizedBox(height: 10),

                            Text(
                              'Seguridad',
                              style: TextStyle(
                                fontWeight:
                                    FontWeight
                                        .bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                SizedBox(

                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(

                    onPressed: logout,

                    style:
                        ElevatedButton
                            .styleFrom(

                      backgroundColor:
                          Colors.white,

                      shape:
                          RoundedRectangleBorder(

                        borderRadius:
                            BorderRadius
                                .circular(
                                    15),
                      ),
                    ),

                    child: const Text(

                      'Cerrar sesión',

                      style: TextStyle(
                        color:
                            Colors.deepPurple,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}