import 'package:my_ebook/consttants.dart';
import 'package:my_ebook/screens/week7/chapter1.dart';
import 'package:my_ebook/screens/week7/chapter2.dart';
import 'package:my_ebook/screens/week7/chapter3.dart';
import 'package:my_ebook/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsScreen7 extends StatelessWidget {
  _launchURL() async {
    final Uri url = Uri.parse('https://colab.research.google.com/drive/1GI-WZvp1t0yylz2XbQluP4y1i6OTrZAN?usp=sharing');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(
                        top: size.height * .12,
                        left: size.width * .1,
                        right: size.width * .02),
                    height: size.height * .48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: BookInfo(
                      size: size,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .48 - 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ChapterCard(
                        name: "Bubble Sort",
                        tag: "All of us",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return W7C1();
                              },
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                        name: "Merge Sort",
                        tag: "All of us",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return W7C2();
                              },
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                        name: "Quick Sort",
                        tag: "All of us",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return W7C3();
                              },
                            ),
                          );
                        },
                      ),
                      ChapterCard(
                          name: "Sort code",
                          tag: "Developer",
                          press: _launchURL),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Positioned(
                  top: 40, // Adjust as needed
                  left: 20, // Adjust as needed
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Colors.black), // Change color as necessary
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final Function()? press;
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.84),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name \n",
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Week 7",
                        style: Theme.of(context).textTheme.headlineSmall),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: this.size.width * .3,
                            padding:
                                EdgeInsets.only(top: this.size.height * .02),
                            child: Text(
                              "What we learn from week7",
                              maxLines: 5,
                              style: TextStyle(
                                fontSize: 10,
                                color: kLightBlackColor,
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: this.size.height * .015),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          BookRating(score: 4.9),
                        ],
                      )
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Image.asset(
                  "assets/images/W7.png",
                  height: double.infinity,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitWidth,
                ),
              )),
        ],
      ),
    );
  }
}
