import 'package:flutter/material.dart';

class ValidateCode extends StatefulWidget {
  const ValidateCode({super.key});

  @override
  State<ValidateCode> createState() => _StateValidateCode();
}

class _StateValidateCode extends State<ValidateCode> {
  final TextEditingController _code = TextEditingController();
  
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
                hintText: 'Code',
                labelText: 'Code',
              ),
              keyboardType: TextInputType.number,
              controller: _code,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed:(){
                  Navigator.pushNamed(context, '/newpassword');
                },
                style:OutlinedButton.styleFrom(
                  backgroundColor:Colors.blue,
                  foregroundColor:Colors.white
                ),
                child:const Text('Validar Codigo')
              )
            )

          ],
        ),
      ),
    );
  }
}
