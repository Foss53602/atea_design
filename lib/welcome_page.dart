import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Cairo',
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText('تســوق',
                          textStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.onBackground)),
                      RotateAnimatedText('تــجهيز',
                          textStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.onBackground)),
                      RotateAnimatedText('اسـتلام',
                          textStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.onBackground)),
                    ],
                  ),
                ),
                const SizedBox(width: 20.0),
                Text(
                  'عطية',
                  style: TextStyle(
                      fontSize: 43.0,
                      color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                SizedBox(
                    child: Image.asset('assets/images/main_logo.jpg'),
                    height: 60,
                    width: 60),
                SizedBox(width: 8)
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 240,
            child: Swiper(
              layout: SwiperLayout.CUSTOM,
              autoplay: true,
              autoplayDelay: 10000,
              customLayoutOption:
                  CustomLayoutOption(startIndex: -1, stateCount: 3)
                    ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
                    ..addTranslate([
                      Offset(-370.0, -40.0),
                      Offset(0.0, 0.0),
                      Offset(370.0, -40.0)
                    ]),
              duration: 800,
              itemWidth: 340.0,
              itemHeight: 200.0,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/ad_${index + 1}.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1)),
            child: Column(
              children: [
                const Align(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'تواصال معنا عن طريق',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.support_agent)
                      ],
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child:
                          Image.asset('assets/images/TikTok.png', height: 100),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child:
                          Image.asset('assets/images/whatsapp.png', height: 60),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child:
                          Image.asset('assets/images/telegram.png', height: 50),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child:
                          Image.asset('assets/images/facebook.png', height: 80),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/instagram.png',
                          height: 55),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            width: 300,
            child: FilledButton.icon(
                onPressed: () {},
                icon: Icon(Icons.login),
                label: Text('تسجيل الدخول')),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
