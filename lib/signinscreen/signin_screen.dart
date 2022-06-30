import 'package:flutter/material.dart';
import 'package:internship_algoriza/shared/components/components.dart';

class SignInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                welcomeText(),
                const SizedBox(
                  height: 12.0,),
                defaultRow(
                  text: 'Sign in',
                ),
                const SizedBox(
                  height: 10.0,
                ),
                secText(
                  text: 'Text Field label',
                ),
                const SizedBox(height: 16.0,),
                defaultFormField(
                    oneText: '+81 Eg.0125968',
                    keyboardType: TextInputType.phone),
                const  SizedBox(height: 10.0,),
                defaultButton(text:'Sign in'),
                const  SizedBox(height:10.0,),
                secRow(),
                const SizedBox(height: 10.0,),
                secButton(),
                const SizedBox(height: 16.0,),
                thirdRow(
                  text:'Does\'t Has any account?',
                  secText: 'Register here',

                ),
                const SizedBox(height: 50.0,),
                desText(text:
                'Use the application according to policy rules.Any kinds of violations will be Subject to sanctions',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}