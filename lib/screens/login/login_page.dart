import 'package:flutter/material.dart';
import 'package:flutterenglishapp/helpers/validator.dart';

import '../../main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? email, password;
    FocusNode? passwordNode;
    GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKeyLogin,
          child: Column(children: [
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Image.asset('assets/logotranslate.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                initialValue: '',
                // validator: emailValidator,
                onSaved: (value) => email = value,
                textInputAction: TextInputAction.next,
                onEditingComplete: () {
                  passwordNode!.requestFocus();
                },
                style: const TextStyle(fontSize: 12.0),
                cursorColor: Colors.purple,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'E-Mail Adresi Giriniz.',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                obscureText: true,
                initialValue: '',
                // validator: requiredValidator,
                onSaved: (value) => password = value,
                textInputAction: TextInputAction.next,
                onEditingComplete: () {},
                style: const TextStyle(fontSize: 12.0),
                cursorColor: Colors.purple,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  hintText: 'Parola Giriniz.',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: Colors.purple,
              ),
              onPressed: () {
                if (formKeyLogin.currentState!.validate()) {
                  formKeyLogin.currentState!.save();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyMainPage(
                            // title: 'Home Page',
                            )),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ]),
        ),
      ),
    );
  }
}
