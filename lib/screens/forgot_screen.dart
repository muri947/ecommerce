// screens/forgot_screen.dart

import '../screens/recovery_screen.dart';
import 'package:flutter/cupertino.dart';

import '../screens/otp_screen.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool cirButton = false;

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Text(
                  "Veuillez votre addresse mail. Vous recevrez un mail un lien pour rénitialisé votre mot de passe",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30,),
                TextFormField(
                  controller: emailController,
                  onChanged: (value) {
                    if(value != ""){
                        setState(() {
                          cirButton = true;
                        });
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Entrer votre Email',
                    border: OutlineInputBorder(),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          emailController.clear();
                        });
                      },
                      child: Icon(
                        CupertinoIcons.multiply, color: Color(0XFFDB3022),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecoveryScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Color(0xFFEf6969),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Envoyer le code',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.black54, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OTPScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Verify Using Number',
                        style: TextStyle(
                          color: Color(0xFFEf6969),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
