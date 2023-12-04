import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:atea_design/home_page.dart';
import 'package:atea_design/theme_config.dart';
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
      child: Padding(
        padding: EdgeInsets.all(ThemeConfig.pagePadding),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 80,
              child: Row(
                children: <Widget>[
                  SizedBox(width: 8),
                  SizedBox(
                      child: Image.asset('assets/images/main_logo.jpg'),
                      height: 60,
                      width: 60),
                  Spacer(),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Cairo',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        RotateAnimatedText('عطيــة الشـيخ',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground)),
                        RotateAnimatedText('ATIA SAFANUR',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground)),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Container(
              height: 3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.primary.withOpacity(0.8),
                  Theme.of(context).colorScheme.primary.withOpacity(0.3),
                  Theme.of(context).colorScheme.primary.withOpacity(0.8),
                  Theme.of(context).colorScheme.primary,
                ],
              )),
            ),
            Spacer(),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Theme.of(context).colorScheme.secondary),
                      width: 4,
                      height: 15),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'الإعلانات',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
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
                    borderRadius: BorderRadius.circular(ThemeConfig.radius16),
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
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius8),
                          color: Theme.of(context).colorScheme.secondary),
                      width: 4,
                      height: 15),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'التواصل والمجتمع',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ThemeConfig.radius16),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  color:
                      Theme.of(context).colorScheme.primary.withOpacity(0.2)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/images/border.png'),
                            height: 130,
                            width: 130,
                          ),
                          Image.asset('assets/images/whatsapp.png', height: 65)
                        ],
                        alignment: Alignment.center,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/images/border.png'),
                            height: 130,
                            width: 130,
                          ),
                          Image.asset('assets/images/TikTok.png', height: 70)
                        ],
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/images/border.png'),
                            height: 100,
                            width: 100,
                          ),
                          Image.asset('assets/images/instagram.png', height: 45)
                        ],
                        alignment: Alignment.center,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/images/border.png'),
                            height: 100,
                            width: 100,
                          ),
                          Image.asset('assets/images/facebook.png', height: 65)
                        ],
                        alignment: Alignment.center,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Image.asset('assets/images/border.png'),
                            height: 100,
                            width: 100,
                          ),
                          Image.asset('assets/images/telegram.png', height: 40)
                        ],
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: 300,
              height: 50,
              child: FilledButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return HomePage();
                    }));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius8)))),
                  icon: Icon(Icons.login),
                  label: Text('تسجيل الدخول')),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
