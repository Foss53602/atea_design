import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("الرئيسية"),
              selectedColor: Theme.of(context).colorScheme.secondary,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Image.asset(
                'assets/images/crown.png',
                width: 24,
                color: _currentIndex == 1
                    ? null
                    : Theme.of(context).colorScheme.onBackground,
              ),
              title: Text("المفضلة"),
              selectedColor: Theme.of(context).colorScheme.primary,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("الطلبيات"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("الإشعارات"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(ThemeConfig.pagePadding),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                        'https://d3r4f9ursifuvh.cloudfront.net/cms/images/marketing-manager/og/Junger_Mann_im_Anzug_im_B%C3%BCro.jpg',
                      ),
                    ),
                    Spacer(),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset('assets/images/cart.png', height: 28),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            child: Text('26',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    width: 45,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.8),
                        borderRadius:
                            BorderRadius.circular(ThemeConfig.radius16)),
                    child: Image.asset('assets/images/filter.png',
                        height: 20,
                        width: 20,
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onPrimary,
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                          suffixIcon: Icon(OctIcons.search_16),
                          hintText: 'بحث..',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.circular(ThemeConfig.radius16))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text('الأصناف',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'عرض الكل',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [for (var i = 0; i < 4; i++) getCategory(i)],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var i = 1; i < 5; i++) getCategory(i + 3)
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }

  Widget getCategory(int index) {
    return Container(
      width: 75,
      height: 70,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ThemeConfig.radius16),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/$index.png',
            width: 30,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            getImageNameByIndex(index),
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  String getImageNameByIndex(int index) {
    switch (index) {
      case 0:
        return 'مفروشات';
      case 1:
        return 'عدة مطبخ';
      case 2:
        return 'اكسسوارات';
      case 3:
        return 'اجهزة';
      case 4:
        return 'كهربائيات';
      case 5:
        return 'حقائب';
      case 6:
        return 'ملابس';
      case 7:
        return 'احذية';
    }
    return '';
  }
}
