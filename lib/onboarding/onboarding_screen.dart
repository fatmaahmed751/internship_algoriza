import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_algoriza/loginscreen/loginscreen.dart';
import 'package:internship_algoriza/shared/components/components.dart';
import 'package:internship_algoriza/signinscreen/signin_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {

  var boardController=PageController();
  List<BoardingItem> boardingItems = [
    BoardingItem(
        image: 'assets/images/delivering-food.png',
        text: 'Get Food delivery to your'
            ' doorstep asap',
        subTitle:
        ' we have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
    BoardingItem(image: 'assets/images/sammy-done.png',
        text: 'Buy any Food from your favorite restaurant',
        subTitle: 'We are constnatly adding your favorite restaurant throughout the territory and around your area carefully selected'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            Container(
              width:80.0,
              height: 20.0,
              decoration:BoxDecoration(
                color: Colors.yellow[50],

                borderRadius: BorderRadius.circular(20.0),

              ) ,
              child: TextButton(
                onPressed: () {
                  /*navigateTo(
                    context,index
                  );*/
                },
                child: const Text('Skip',
                  style: TextStyle(
                    color: Colors.black54,
                  ),),
              ),
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image:AssetImage('assets/images/krave.png')),

                Expanded(
                  child: PageView.builder(
                    itemBuilder: (context, index) =>
                        BuildBoardingItem(boardingItems[index],context),
                    itemCount: boardingItems.length,
                  ),
                ),
                SmoothPageIndicator(controller:boardController ,
                    effect: const ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.deepOrange,
                      dotHeight: 6,
                      dotWidth:6 ,
                      spacing: 5.0,
                      expansionFactor: 3,
                    ),
                    count:boardingItems.length ),
              ],
            ),
          ),
        ));
  }
}


Widget BuildBoardingItem(BoardingItem item,context) => Center(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
          child: Image(image: AssetImage('${item.image}'),)),
      const SizedBox(
        height: 20,
      ),
      Text(
        '${item.text}',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyText1,
      ),
      Center(
        child: Text(
          '${item.subTitle}',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 10.0,
          ),
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
           onBoardButton(),
      SizedBox(height: 5.0,),
      thirdRow(text: 'Don\'t have an account? ', secText: 'Sign in',
      function: (){
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=>SignInScreen()),);
      }),
    ],
  ),

);

class BoardingItem {
  final String image;
  final String text;
  final String subTitle;

  BoardingItem({
    required this.image,
    required this.text,
    required  this.subTitle,
  }
      );


}
