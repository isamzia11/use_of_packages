import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        actions: const [
          badges.Badge(
            badgeContent: Text('3'),
            badgeAnimation: badges.BadgeAnimation.size(
                animationDuration: Duration(seconds: 10)),
            child: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(FontAwesomeIcons.houseChimney),
                const ReadMoreText(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show All',
                  moreStyle: TextStyle(color: Colors.deepOrange),
                  lessStyle: TextStyle(color: Colors.deepPurpleAccent),
                  style: TextStyle(color: Colors.green),
                ),
                const badges.Badge(
                  badgeStyle: badges.BadgeStyle(badgeColor: Colors.blue),
                  badgeContent: Text('3'),
                  badgeAnimation: badges.BadgeAnimation.fade(
                      animationDuration: Duration(seconds: 10)),
                  child: Icon(CupertinoIcons.settings),
                ),
                const SizedBox(height: 20),
                AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText.new('Monkey D luffy',
                        duration: const Duration(seconds: 5)),
                  ],
                  totalRepeatCount: 10,
                ),
                const SizedBox(height: 30),
                Container(
                  color: Colors.deepOrange,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(width: 20.0, height: 100.0),
                      const Text(
                        'Be',
                        style: TextStyle(fontSize: 43.0, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0, height: 100.0),
                      DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Horizon',
                            color: Colors.white),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('AWESOME'),
                            RotateAnimatedText('OPTIMISTIC'),
                            RotateAnimatedText('DIFFERENT'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                          totalRepeatCount: 5,
                        ),
                      ),
                    ],
                  ),
                ),
               const SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.deepPurple,
                  child: SizedBox(
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          FadeAnimatedText('do IT!'),
                          FadeAnimatedText('do it RIGHT!!'),
                          FadeAnimatedText('do it RIGHT NOW!!!'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                ),
              const  SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SizedBox(
                        width: 300.0,
                        child: TextLiquidFill(
                          text: 'LIQUIDY',
                          waveColor: Colors.blueAccent,
                          boxBackgroundColor: Colors.amber,
                          textStyle: const TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                          ),
                          boxHeight: 200.0,
                        ),
                      ),
                    )
                  ],
                ),
               const SizedBox(
                  height: 40,
                ),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  enabled: true,
                  pinTheme: PinTheme(
                      borderRadius: BorderRadius.circular(20),
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeColor: Colors.amber,
                      inactiveFillColor: Colors.purple,
                      inactiveColor: Colors.purple,
                      selectedColor: Colors.blue),
                  onChanged: (value) {},
                ),
              ]),
        ),
      )),
    );
  }
}
