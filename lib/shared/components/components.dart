
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../loginscreen/loginscreen.dart';

Widget welcomeText(
    BuildContext context,{
  String text='Welcome to fashion Daily',
})=>
    Text(
      text=text,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 13.0,
        fontWeight: FontWeight.w300
      ),
    );

Widget defaultRow(
    BuildContext context,{
  required String text ,
  double fontSize=0.0,
  FontWeight fontWeight=FontWeight.bold,
  Color textColor=Colors.black,
  double radius=6.0,

})=> Row(
  children:  [
    Text(
      text =text,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 35.0,
        fontWeight: FontWeight.w500,
        color: Colors.black
      ),

    ),
    const Spacer(),
    Text(
      text='Help',
style: Theme.of(context).textTheme.bodyText1!.copyWith(
  fontSize: 12.0,
  fontWeight:FontWeight.w100,
  color: Colors.blue
),
    ),
    const SizedBox(
      width: 3.0,),
    CircleAvatar(
      radius: radius,
    child: const Icon(
      Icons.question_mark_rounded,
      size: 9,
    ),
       ),
],
    );



Widget secText( {
  required String text,
  Color secText=Colors.black,
})=>
    Text(
        text=text,
        style: TextStyle(
            color: secText));

Widget defaultFormField({
  required String oneText,
  Color color=Colors.black,
  Color borderColor=Colors.black,
  required TextInputType keyboardType,
})=>
        TextFormField(

          decoration: InputDecoration(
            hintText: oneText,
         prefixIcon: CountryCodePicker(
           initialSelection: 'eg',
           showFlag: false,
         ),
            //'+81 Eg.0125968',
            hintStyle:TextStyle(
              color: Colors.grey[400],
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.redAccent,
                )
            ),
          ),
          keyboardType:TextInputType.phone ,
        );


Widget defaultButton({
  double height=0.0,
  double width =0.0,
  double radius=0.0,
  required String text,
  Color textColor= Colors.white,
})=>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      height: 40.0,
      width: double.infinity,
      child: MaterialButton(
        onPressed: () {},
        child:  Text(
          text=text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.blueAccent,
      ),
    );

Widget secRow()=>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text('Or',
            style: TextStyle(

            ),),
        ),
      ],
    );

Widget secButton({
  double height=0.0,
  double width=double.infinity,
  double radius=0.0,

})=>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 40.0,
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.blueAccent,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height:50.0,
              width: 20.0,
              image:AssetImage('assets/images/unnamed.png',
            ),),
            const Text(
              'Sign with by google',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

Widget thirdRow({
  required String text,
  required String secText,
  Function?function,
})=>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(
          text=text,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 15.0),
        ),
        const SizedBox(width: 5.0,),
        TextButton(
         child: Text(text=secText,
          //'Register here',
          style: const TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          ),
          ), onPressed:(){
          function!();
        },
        ),
      ],
    );

Widget desText({
  required String text,
  double fontSize=0.0,
})=>
    Center(
      child: Text(
        text=text,
        //'Use the application according to policy rules.Any kinds of violations will be Subject to sanctions',
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        maxLines: 2,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 15.0,
        ),),
    );
Widget onBoardButton(
)=>
    Container(
      width: double.infinity,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: (
  MaterialButton(
  onPressed: () {
  },
  child: const Text('Get Started',
  style: TextStyle(
      color: Colors.white,
  ),),
)
      ),
    );