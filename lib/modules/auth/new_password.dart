import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;

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
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm password',
                labelText: 'Confirm password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure2 ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure2 = !_isObscure2;
                    });
                  },
                ),
              ),
              obscureText: _isObscure2,
              controller: _confirmpassword,
            ),
            const SizedBox(height:16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed:(){
                  print('Password2:${_confirmpassword.text}');
                  print('Password:${_password.text}');
                    Navigator.pushNamed(context, '/login');

                },
                style:OutlinedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  foregroundColor:Colors.white
                ),
                child:const Text('Guardar')
              )
            )

          ],
        ),
      ),
    );
  }
}
