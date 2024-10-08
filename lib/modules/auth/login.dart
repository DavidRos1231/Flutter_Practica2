import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 200, height: 200),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
              obscureText: _isObscure,
              controller: _password,
            ),
            const SizedBox(height:16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed:(){
                  print('Email:${_email.text}');
                  print('Password:${_password.text}');
                },
                style:OutlinedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  foregroundColor:Colors.white
                ),
                child:const Text('Iniciar sesion')
              )
            ),
            const SizedBox(height:16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed:(){
                  Navigator.pushNamed(context, '/sendcode');
                },
                style:OutlinedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  foregroundColor:Colors.white
                ),
                child:const Text('Olvidaste tu contraseña')
              )
            )

          ],
        ),
      ),
    );
  }
}
