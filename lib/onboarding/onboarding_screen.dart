import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {

  var boardController=PageController();
  List<BoardingItem> boardingItems = [
    BoardingItem(
        image: 'assets/images/image_2.jpg',
        text: 'Get Food delivery to your'
            ' doorstep asap',
        subTitle:
        ' we have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
    BoardingItem(image: 'assets/images/image_2.jpg', text: 'Buy any Food from your favorite restaurant', subTitle: 'We are constnatly adding your favorite restaurant throughout the territory and around your area carefully selected'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            Container(
              decoration:BoxDecoration(
                color: Colors.yellow[300],
                borderRadius: BorderRadius.circular(15.0),
              ) ,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Skip',
                    style: TextStyle(
                      color: Colors.black54,
                    ),),
                ),
              ),
            ),
          ],
        ),


        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageView.builder(
                itemBuilder: (context, index) =>
                    BuildBoardingItem(boardingItems[index]),
                itemCount: boardingItems.length,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  SmoothPageIndicator(controller:boardController ,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Colors.deepOrange,
                        dotHeight: 12,
                        dotWidth:12 ,
                        spacing: 5.0,
                        expansionFactor: 3,
                      ),
                      count:boardingItems.length ),
                ],
              ),
            ],
          ),
        ));
  }
}


Widget BuildBoardingItem(BoardingItem item) => Center(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(child: Image(image: AssetImage('${item.image}'),)),
      const SizedBox(
        height: 10,
      ),
      Text(
        '${item.text}',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      Center(
        child: Text(
          '${ item.subTitle}',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 20.0,
          ),
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.teal[400],
        ),
        height: 50.0,
        width: double.infinity,
// color: Colors.teal,
        child: MaterialButton(
          onPressed: () {},
          child: const Text(
            'Get Started',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
// color: Colors.teal,
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Don\'t have an account?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Sign Up',
            style: TextStyle(
              color: Colors.teal[400],
            ),
          ),
        ],
      ),
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
