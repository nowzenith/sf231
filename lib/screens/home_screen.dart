import 'package:my_ebook/consttants.dart';
import 'package:my_ebook/screens/week1/chapter1.dart';
import 'package:my_ebook/screens/week1/details_screen.dart';
import 'package:my_ebook/screens/week2/chapter1.dart';
import 'package:my_ebook/screens/week2/details_screen.dart';
import 'package:my_ebook/screens/week3/chapter1.dart';
import 'package:my_ebook/screens/week3/details_screen.dart';
import 'package:my_ebook/screens/week4/chapter1.dart';
import 'package:my_ebook/screens/week4/details_screen.dart';
import 'package:my_ebook/screens/week5/chapter1.dart';
import 'package:my_ebook/screens/week5/details_screen.dart';
import 'package:my_ebook/screens/week6/chapter1.dart';
import 'package:my_ebook/screens/week6/details_screen.dart';
import 'package:my_ebook/screens/week7/chapter1.dart';
import 'package:my_ebook/screens/week7/details_screen.dart';
import 'package:my_ebook/widgets/book_rating.dart';
import 'package:my_ebook/widgets/reading_card_list.dart';
import 'package:my_ebook/widgets/two_side_rounded_button.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displaySmall,
                        children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ReadingListCard(
                          image: "assets/images/W1.png",
                          title: "Week1",
                          auth: "SF1212312121",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen1()),
                            );
                          },
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen1()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W1C1()),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/W2.png",
                          title: "Week2",
                          auth: "SF1212312121",
                          rating: 4.8,
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen2()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W2C1()),
                            );
                          },
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen2()),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/W3.png",
                          title: "Week3",
                          auth: "SF1212312121",
                          rating: 4.7,
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen3()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W3C1()),
                            );
                          },
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen3()),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/W4.png",
                          title: "Week4",
                          auth: "SF1212312121",
                          rating: 4.7,
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen4()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W4C1()),
                            );
                          },
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen4()),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/W5.png",
                          title: "Week5",
                          auth: "SF1212312121",
                          rating: 4.5,
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen5()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W5C1()),
                            );
                          },
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen5()),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/W6.png",
                          title: "Week6",
                          auth: "SF1212312121",
                          rating: 4.5,
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen5()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W6C1()),
                            );
                          },
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen6()),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/W7.png",
                          title: "Week7",
                          auth: "SF1212312121",
                          rating: 4.5,
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen5()),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => W7C1()),
                            );
                          },
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen7()),
                            );
                          },
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displaySmall,
                            children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "New York Time Best For 11th March 2020",
                      style: TextStyle(
                        fontSize: 9,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "How To Win \nFriends &  Influence",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: BookRating(score: 4.9),
                        ),
                        Expanded(
                          child: Text(
                            "When the earth was flat and everyone wanted to win the game of the best and people….",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
