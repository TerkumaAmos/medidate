import 'package:flutter/material.dart';
import 'package:harmony_hush/app_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF4E2),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const BackButton(
                style: ButtonStyle(iconSize: WidgetStatePropertyAll(20)),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            const Text(
              'Create your account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF609966), // Button background color
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LandingPage()),
                  // );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFF609966),
                      child: Text(
                        'f',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

                  //  const Text(
                  //   "SIGN UP",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
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
            const SizedBox(
              height: 40,
            ),
            const Text("OR SIGN IN WITH EMAIL"),
            const SizedBox(height: 30),
            AppTextField(
              hintText: "Email address",
              controller: emailController,
            ),
            const SizedBox(height: 30),
            AppTextField(hintText: 'Name', controller: nameController),
            const SizedBox(
              height: 30,
            ),
            Password(passwordController: passwordController),
            const SizedBox(
              height: 30,
            ),
            RichText(
                text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                  TextSpan(text: "I have read the"),
                  TextSpan(
                      text: 'PRIVACY POLICY',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]))
            // Center(
            //   child: RichText(
            //     text: TextSpan(

            //       text: "I have read the ",
            //       style: DefaultTextStyle.of(context,

            //       ),
            //       children: [
            //         WidgetSpan(
            //           alignment: PlaceholderAlignment.middle,
            //           //alignment: PlaceholderAlignment.middle,
            //           child:
            //           InkWell(
            //             onTap: () {
            //               Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                     builder: (context) => const SignUpPage()),
            //               );
            //             },
            //             child: const Text(
            //               textAlign: TextAlign.start,
            //               ' SIGN IN',
            //               style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xFF609966)),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // )
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
