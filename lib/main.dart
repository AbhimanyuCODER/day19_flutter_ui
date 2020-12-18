import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const TextStyle goldCoinGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20,
    fontWeight: FontWeight.bold,
      fontFamily: "Product Sans"
  );
  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans"
  );
  static const TextStyle greyStyle = TextStyle(
    fontSize: 40,
    color: Colors.grey,
    fontFamily: "Product Sans"
  );
  static const TextStyle whiteStyle = TextStyle(
    fontSize: 40,
    color: Colors.white,
    fontFamily: "Product Sans"
  );
  static const TextStyle boldStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: "Product Sans"
  );static const TextStyle boldWhiteStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Product Sans"
  );
  static const TextStyle descriptionGreyStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontFamily: "Product Sans"
  );
  static const TextStyle descriptionWhiteStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Product Sans"
  );
  final pages=[
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GoldCoin",
                  style: goldCoinGreyStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinGreyStyle,
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage("assets/images/firstImage.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Online",
                style: greyStyle,
                ),
                Text("Gambling",
                style: boldStyle,
                ),
                SizedBox(height: 20,),
                Text(
                  "Temporibus autem aut\n"
                      "officiis debitis aut rerum\n"
                      "necessitatieaus",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Color(0xff55006c),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GoldCoin",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage("assets/images/secondImage.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Online",
                style: whiteStyle,
                ),
                Text("Gambling",
                style: boldWhiteStyle,
                ),
                SizedBox(height: 20,),
                Text(
                  "Excepteur sint occurent cupidatat\n"
                      "non proident, sunt in\n"
                      "culpa qui officia",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GoldCoin",
                  style: goldCoinWhiteStyle,
                ),
                Text(
                  "Skip",
                  style: goldCoinWhiteStyle,
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage("assets/images/firstImage.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Online",
                  style: whiteStyle,
                ),
                Text("Gambling",
                  style: boldStyle,
                ),
                SizedBox(height: 20,),
                Text(
                  "Temporibus autem aut\n"
                      "officiis debitis aut rerum\n"
                      "necessitatieaus",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 300,
        enableSlideIcon: true,
        waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
        slideIconWidget: Icon(
          Icons.arrow_back_ios,
          color: Colors.amberAccent,
          size: 40,
        ),
      ),
    );
  }
}
