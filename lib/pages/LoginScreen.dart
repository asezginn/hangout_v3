import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/my_textfield.dart';
import '../components/myButton.dart';
import '../assets/colours.dart';


doNothing(){
}
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    // Add your login logic here
    String email = _emailController.text;
    String password = _passwordController.text;

    // You can implement authentication logic here, such as sending the
    // credentials to a server and checking the response.
    // For this example, we'll just print the email and password.
    print('Email: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                 resizeToAvoidBottomInset: false,
                 backgroundColor: Colors.grey[300],
                 body: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const SizedBox(height: 50,),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                       child: Center(
                         child: Container(
                           height: 200,
                           child:  SvgPicture.asset("lib/assets/images/meeting.svg",
                             color: Colors.grey[900],),
                         ),
                       ),
                     ),
                     Text("Welcome, Let's meet friends today!",
                       style: TextStyle(
                         color: Colors.grey[900],
                         fontSize: 16,
                       ),

                     ),
                     const SizedBox(height: 15),
                     MyTextField(
                       controller: _emailController,
                       hintText: "Username",
                       obscureText: false,

                     ),
                     const SizedBox(height: 5),
                     MyTextField(
                       controller: _passwordController,
                       hintText: "Password",
                       obscureText: true,
                     ),
                     const SizedBox(height: 5),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children:  [
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: 25.0),
                           child: Text(
                             "Forgot your password?",
                             style: TextStyle(
                               color: darker,
                             ),
                           ),
                         ),
                       ],
                     ),
                     const SizedBox(height: 15),
                     myButton(
                       onTap: doNothing(),
                     ),
                     const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Or continue with",
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                   const SizedBox(height: 5),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 80.0),
                     child: GestureDetector(
                         child: Image.asset("lib/assets/images/google_logo.png"),
                         onTap: (){
                         },
                     ),
                   ),

                     const SizedBox(height: 5),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         const Text(
                           "Not a member?",
                         ),
                         const SizedBox(width: 4,),
                         GestureDetector(
                           onTap: (){
                           },
                           child: Text("Register now",
                           style: TextStyle(
                           color: darker,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ],
          ),
                   ],
      ),
    );
  }
}