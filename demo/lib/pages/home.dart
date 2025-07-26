import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Hello, World!")),
      backgroundColor: const Color(0xFF0D1117), // Dark background
      body: SafeArea(
        child: Stack(
          children: [
            // Background bulat
            Positioned(
              bottom: -480,
              left: -180,
              child: Container(
                width: 800,
                height: 800,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/moon.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Form UI
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login the HitBis',
                      style: TextStyle(
                        fontFamily: 'Geist',
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Login to your account to see your progress and routes',
                      style: TextStyle(
                        fontFamily: 'Geist',
                        color: Colors.white70
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Email
                    _buildInputField(label: 'E-mail', obscure: false),

                    const SizedBox(height: 16),

                    // Password
                    _buildInputField(label: 'Password', obscure: true),

                    const SizedBox(height: 16),

                    // Sign In button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2979FF),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text('Sign In'),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'forgot password?',
                          style: TextStyle(
                            fontFamily: 'Geist',
                            color: Colors.white54
                          ),
                        ),
                      ),
                    ),

                    const Divider(color: Colors.white30, height: 32),

                    // Social Media Buttons
                    _socialButton(
                      icon: Icons.g_mobiledata,
                      text: 'Sign In With Google',
                      background: Colors.white,
                      textColor: Colors.black,
                    ),
                    const SizedBox(height: 12),
                    _socialButton(
                      icon: Icons.facebook,
                      text: 'Sign In With Facebook',
                      background: const Color(0xFF1877F2),
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 24),

                    // Sign up nav
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Create an Account? ',
                          style: TextStyle(
                            fontFamily: 'Geist',
                            color: Colors.black
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
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
      )  
    );
  }

  Widget _buildInputField({required String label, required bool obscure}) {
    return TextField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        filled: true,
        fillColor: const Color(0xFF161B22),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _socialButton({
    required IconData icon,
    required String text,
    required Color background,
    required Color textColor,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(icon, color: textColor),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        label: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
