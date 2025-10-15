import 'package:flutter/material.dart';
import 'package:tugas_ppb/screens/ApiService.dart';
import 'package:tugas_ppb/screens/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Apiservice apiservice = Apiservice();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 8,
          child: Container(
            padding: const EdgeInsets.all(32.0),
            constraints: const BoxConstraints(maxWidth: 350),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo
                  Image.asset('assets/logo.png', width: 300, height: 140),
                  _gap(),

                  // Title
                  Text(
                    "Selamat datang",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    'Di Aplikasi IuranWarga',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),

                  // Email
                  TextFormField(
                    controller: emailController, // ✅ Fixed: Added controller
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Masukan email',
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      final emailRegex =
                          r'^[a-zA-Z0-9.%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                      final isValid = RegExp(emailRegex).hasMatch(value);
                      if (!isValid) {
                        return 'Format email tidak valid';
                      }
                      return null;
                    },
                  ),
                  _gap(),

                  // Password
                  TextFormField(
                    controller: passwordController, // ✅ Fixed: Added controller
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Kata sandi',
                      hintText: 'Masukan kata sandi',
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Kata sandi tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _isLoading
                          ? null
                          : () async {
                              if (_formKey.currentState?.validate() ?? false) {
                                setState(() => _isLoading = true);

                                try {
                                  // Debug log
                                  print("Email: ${emailController.text.trim()}");
                                  print("Password: ${passwordController.text.trim()}");

                                  // Call API
                                  String token = await apiservice.login(
                                    emailController.text.trim(),
                                    passwordController.text.trim(),
                                  );

                                  if (!mounted) return;

                                  // Go to HomePage
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => HomePage(token: token, userId: 2),
                                    ),
                                  );
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(e.toString())),
                                  );
                                } finally {
                                  setState(() => _isLoading = false);
                                }
                              }
                            },
                      child: _isLoading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              'Masuk',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
