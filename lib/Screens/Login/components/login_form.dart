import 'package:flutter/material.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

   _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

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
                fontSize: 16,fontStyle: FontStyle.italic))),
            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: _obscurePassword,
              cursorColor: kPrimaryColor,
              decoration:  InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                    icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off
                    ),
                    onPressed:_togglePasswordVisibility,
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ),
            ),

          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Login",
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
              ),
               const Text("Remember Me"),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle "Forget Password?" text onPressed callback.
                },
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
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
