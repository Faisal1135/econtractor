import 'package:econtractor/helpers/helpers.dart';
import 'package:econtractor/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = 'register-screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fbkey = GlobalKey<FormBuilderState>();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Create an Account',
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 22,
            ),
      )),
      body: ListView(
        children: [
          Center(
            child: FormBuilder(
              key: _fbkey,
              child: Column(
                children: [
                  SizedBox(height: size.height / 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Signing Up or Login to see our top picsk for you',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: HelperFunction.textForm(
                      name: 'username',
                      label: "Username",
                      hint: "Enter Your username ",
                      validator: [
                        FormBuilderValidators.required(context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                    onPressed: () {},
                    title: "Next",
                    colour: Colors.yellow.shade600,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "I have account ? ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.black)),
                        TextSpan(
                          text: "Sign in",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
