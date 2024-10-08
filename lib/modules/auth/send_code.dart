import 'package:flutter/material.dart';

class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _StateSendCode();
}

class _StateSendCode extends State<SendCode> {
  final TextEditingController _email = TextEditingController();
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
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed:(){
                  Navigator.pushNamed(context, '/validatecode');
                },
                style:OutlinedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  foregroundColor:Colors.white
                ),
                child:const Text('Enviar Codigo')
              )
            )

          ],
        ),
      ),
    );
  }
}
