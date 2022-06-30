import 'package:flutter/material.dart';
import 'package:internship_algoriza/shared/components/components.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            color: Colors.white,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  welcomeText(),
                  const SizedBox(
                    height: 5.0,),
                  defaultRow(
                    text:'Register',
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  secText(text: 'Email') ,
                  defaultFormField(

                      oneText: 'Eg.example@email.com',
                      keyboardType: TextInputType.emailAddress),
                  const SizedBox(height: 5.0,),
                  secText(text: 'Phone number'),
                  const SizedBox(height: 5.0,),
                  defaultFormField(
                      oneText: '+81 Eg.01259634',
                      keyboardType: TextInputType.phone),
                  const SizedBox(height: 5.0,),
                  secText(text: 'Password'),
                  const SizedBox(height: 5.0,),
                  defaultFormField(oneText: 'password',
                      keyboardType: TextInputType.visiblePassword) ,
                  const SizedBox(height: 5.0,),
                  defaultButton(
                      text:'Register',
                      radius: 20.0),
                  const SizedBox(height:5.0,),
                  secRow(),
                  const SizedBox(height: 4.0,),
                  secButton(),
                  const SizedBox(height: 13.0,),
                  thirdRow(
                    text:'Has any account' ,
                    secText:'Sign in her' ,
                  ),
                  const SizedBox(height: 5.0,),
                  desText(text:' By registering your account, you are agree to our ',
                  ),
                  const Center(
                    child: Text('terms and condition',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 12.0,
                      ),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
