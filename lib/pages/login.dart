import 'package:econtractor/helpers/helpers.dart';
import 'package:econtractor/pages/home_screen.dart';
import 'package:econtractor/pages/register_screen.dart';
import 'package:econtractor/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _fbkey = GlobalKey<FormBuilderState>();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            width: size.width / 2,
            child: SvgPicture.asset(
              "assets/icons/logo.svg",
            ),
          )),
      body: ListView(
        children: [
          Center(
            child: FormBuilder(
              key: _fbkey,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.04),
                  Text('Sign In',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(fontSize: 26)),
                  SizedBox(height: size.height / 6),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Enter Your email and Password for Signing in.Thanks',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: HelperFunction.textForm(
                      name: 'identifier',
                      label: "Email",
                      hint: "Enter Your email ",
                      validator: [
                        FormBuilderValidators.required(context),
                        FormBuilderValidators.email(context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: HelperFunction.textForm(
                      label: "Password",
                      hint: "Enter Your Password ",
                      name: "password",
                      obscure: obscure,
                      suffix: IconButton(
                          icon: obscure
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          }),
                      validator: [
                        FormBuilderValidators.minLength(context, 8),
                        FormBuilderValidators.required(context)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    title: "Sign In",
                    colour: Colors.yellow.shade600,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Don't have account ? ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Colors.black)),
                          TextSpan(
                            text: "Create one",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Forget Password',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.blue, fontSize: 18))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
