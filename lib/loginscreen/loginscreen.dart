import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:internship_algoriza/shared/components/components.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        children: [
        const Image(
        height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.jpg',
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      welcomeText(
                        context,
                      ),
                      const SizedBox(
                        height: 10.0,),
                      defaultRow(context,
                          text: 'Sign in'),
                      const SizedBox(
                        height: 10.0,
                      ),
                      secText(text: 'Phone Number'),
                      const SizedBox(height: 5.0,),
                      //
                      defaultFormField(
                          oneText: 'Eg.593147554',
                          keyboardType: TextInputType.phone)   ,
                      const SizedBox(height: 10.0,),
                      defaultButton(text:'Sign in'),
                      const SizedBox(height: 10.0,),
                      secRow(),
                      const SizedBox(height: 10.0,),
                      secButton(),
                      const SizedBox(height: 30.0,),
                      thirdRow(text:
                      'Does\'t has any account?',
                        secText: 'Register here',
                      ),
                      const SizedBox(height: 20.0,),
                      desText(
                        text:'Use the application according to policy rules.Any kinds of violations will be Subject to sanctions',
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
