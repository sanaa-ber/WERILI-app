import 'package:flutter/material.dart';

class Authentification extends StatelessWidget {
  const Authentification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Rectangle bleu clair en haut à droite
          Positioned(
            top: -150,
            right: -40,
            child: Transform.rotate(
              angle:
                  -0.3, // Angle ajusté pour correspondre à la capture d'écran
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xFF4996FE), // Bleu clair
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),

          // Rectangle bleu foncé (optionnel - peut être supprimé si non désiré)
          Positioned(
            top: -170,
            right: -10,
            child: Transform.rotate(
              angle: -0.3,
              child: Container(
                width: 350,
                height: 280,
                decoration: BoxDecoration(
                  color: const Color(0xFF001952), // Bleu foncé
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),

          // Contenu principal - formulaire de connexion
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'WERILI',
                    style: TextStyle(
                      color: const Color(0xFF001952),
                      fontSize: 80,
                      fontFamily: 'Lilita One',
                      fontWeight: FontWeight.w400,
                      height: 0.76,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Log in to existing WERILI account',
                    style: TextStyle(color: Color(0xFF505050)),
                  ),
                  const SizedBox(height: 32),

                  // Champ de nom d'utilisateur avec icône
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: const Icon(Icons.person_outline,
                            color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Champ de mot de passe avec icône
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon:
                            const Icon(Icons.lock_outline, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Lien "Mot de passe oublié"
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xFF505050)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Bouton de connexion
                  Container(
                    width: 241,
                    height: 53,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, 0.50),
                        end: Alignment(1.00, 0.50),
                        colors: [
                          const Color(0xFF011950),
                          const Color(0xFF043AB6)
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x30000000),
                          blurRadius: 7,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Lien d'inscription
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account? ',
                        style: TextStyle(color: Color(0xFF505050)),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigation vers la page d'inscription
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
