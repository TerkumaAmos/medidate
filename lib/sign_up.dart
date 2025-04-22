import 'package:flutter/material.dart';
import 'package:harmony_hush/app_text.dart';
import 'package:harmony_hush/sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF4E2),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color: Color(0xFFECF4E2), // Circle background color
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back,size:30,color: Color(0xFF609966),),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                        width: 30,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'f',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(

                    color: Color(0xFF609966),
                  ),
                ),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.white,
                    ),
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
              const SizedBox(
                height: 40,
              ),
              const Text("OR SIGN IN WITH EMAIL"),
              const SizedBox(height: 30),
              AppTextField(
                hintText: "Email address",
                controller: emailController,
              ),
              const SizedBox(height: 20),
              // FilledButton(onPressed: () {}, child: const Text('')),
              AppTextField(hintText: 'Name', controller: nameController),
              const SizedBox(
                height: 30,
              ),
              Password(passwordController: passwordController),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF3E3E3E),
                      ),
                      children: <TextSpan>[
                        TextSpan(text: "I have read the", style: TextStyle()),
                        TextSpan(
                          text: ' PRIVACY POLICY',
                          style: TextStyle(
                              color: Color(0xFF3E3E3E),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Checkbox(
                    value: isChecked,
                    activeColor: const  Color(0xFF609966),
                    onChanged: (newbool) {
                      setState(
                        () {
                          isChecked = newbool;
                        },
                      );
                    },
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(
                          color: Color(0x61876E),
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                width: 320,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color(0xFF609966),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
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
      controller: widget.passwordController,
    );
  }
}
