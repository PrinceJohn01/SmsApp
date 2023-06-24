import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child:
            Text("Email",style: TextStyle(
                color: Colors.black,
                fontSize: 16))),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
              ),
            ),
          ),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.centerLeft,
        child:
        Text('Password', style: TextStyle(
            color: Colors.black,
            fontSize: 16))),
              TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: _obscurePassword,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
          ),
      const SizedBox(height: defaultPadding),
      const Align(
        alignment: Alignment.centerLeft,
        child:
        Text('Confirm password', style: TextStyle(
            color: Colors.black,
            fontSize: 16))),
            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: _obscurePassword,
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ),
          const SizedBox(height: defaultPadding / 3),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Signup"),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
