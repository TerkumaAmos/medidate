import 'package:flutter/material.dart';
import 'package:harmony_hush/app_text.dart';
import 'package:harmony_hush/landing_page.dart';
import 'package:harmony_hush/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF4E2),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const BackButton(),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            const Text(
              "Welcome back",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF609966), // Button background color
                borderRadius: BorderRadius.circular(30),
              ),
              width: 320,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFF609966),
                      child: Text("F"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        '    CONTINUE WITH FACEBOOK',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {},
                child: const Row(
                  children: [
                    Image(
                      image: AssetImage("assets/image4.png"),
                    ),
                    Text(
                      '         CONTINUE WITH GMAIL',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text("OR SIGN IN WITH EMAIL"),
            const SizedBox(height: 30),
            AppTextField(
              hintText: "Email address",
              controller: emailController,
            ),
            const SizedBox(height: 30),
            Password(passwordController: passwordController),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "                                             forgot password ?"),
            const SizedBox(height: 30),
            Container(
              width: 320,
              height: 55,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFF609966))),
                onPressed: () {},
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: RichText(
                  text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      text: "If you don't have an account ?",
                      children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                          child: const Text(
                            textAlign: TextAlign.start,
                            '  SIGN UP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF609966),),
                          ),
                        )),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool showPassword = true;

  void _toggleVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
        obscureText: showPassword,
        suffixIcon: IconButton(
          icon: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _toggleVisibility,
        ),
        hintText: 'Password',
        controller: widget.passwordController);
  }
}
