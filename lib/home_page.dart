import 'dart:math';

import 'package:atea_design/cart_page.dart';
import 'package:atea_design/materials_page.dart';
import 'package:atea_design/orders_page.dart';
import 'package:atea_design/product_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

List<String> products = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_JADgLpGrzZPE8HdwMvUpQBPyWjnkAFGyKrUga3-VNtNjTITayieVHeTZThiYEh17-X0&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6eJJCy_6yjfXJL5F6QDB7Sd6LBoYSWzvMz54penFOlxSSGnXx2OXMneKLmEh27QgJXic&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAWC65PaqxEciPprf6Ew_8DdURBW55i8htH0t3lMPVHBq6nKaYq4GrWJDNWoeI890LqXg&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHn9FnhggTRlftXWT34jPhWmuhyIqy85HV90OLa0Bfve9qU154hxi9MD4RXcfCZr34f3c&usqp=CAU',
  'https://avente.pro/wp-content/uploads/2020/06/Des-CO-122.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh4d3QnRB4OyOBVEzpXppwahpKjM9Gzj8AyIJ2jNBYuF61qRYcfOPozqKJ8jHA5p1tA8Q&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUqQKPrc_4RGoh1qkgnP_ZdcfwVZrW6Dl__eB0RRHvbAjrlPq2f7i7EncuAY9W56G6oTw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqbvD9-PpN458kzwS-r8kJh7jBPCHWl2tywFeObdWdSZqrfneN8kyiHOHGsZ-Iz4BKtwM&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQou7QZ5X5C7z6-2BNEbZzgyruJtnXhbuyQ1DsGw_rUAlXfUfkEYvQg_AkJW-tEiRjtWGk&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP6YjWwyPVBzzIN9APfx06gx1qjjYL1vfQ1jEw_6Yda9-B2g4SowNG1i4eafLuCx7vF_Q&usqp=CAU',
  'https://read.opensooq.com/wp-content/uploads/2019/07/%D8%A3%D9%81%D8%B6%D9%84-%D8%A3%D9%84%D8%B9%D8%A7%D8%A8-%D8%A3%D8%B7%D9%81%D8%A7%D9%84-%D8%AD%D8%AF%D9%8A%D8%AB%D8%A9.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9-XVN2IXq3qsEajuYOngujXV8gy9gjZqD8lo2LE0iBNRAMk1ydrXZQtMvr8jCvTvL2SU&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbIKAwXsf5exLMYEp3Z_hCesKu-hVrMa2-Rg&usqp=CAU',
  'https://avente.pro/wp-content/uploads/2020/06/Des-CO-113.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBQQcolLdiTydnrb9_pC7-EmEhvI4ckuxjiIWCrsAihdNWdHMEpKsX_fPGJF25RW9x0Ho&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmND69svGpnlGOwC_DO8R4w6fXv8XvwtiayQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy5zqM9PEEKPxbGWSTgVatMZlLaoWw7tPqtNLeeo3WH5U6MrIipNGIo8LtRcdz_TlwTzI&usqp=CAU',
  'https://cdn.makane.com/cdn-cgi/image/background=%23ffffff,width=850,height=1133,quality=80,fit=scale-down,format=auto/20211123-store-pusd/products/17724094/75989628.jpg',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;

  var pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.1),
          onTap: (i) {
            setState(() {
              _currentIndex = i;
            });
            pageController.jumpToPage(i);
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Image.asset(
                'assets/images/home.png',
                width: 20,
                color: _currentIndex == 0
                    ? Colors.black
                    : Theme.of(context).colorScheme.onBackground,
              ),
              title: Text("الرئيسية"),
              selectedColor: Colors.black,
            ),
            SalomonBottomBarItem(
              icon: Image.asset(
                'assets/images/crown.png',
                width: 26,
                color: _currentIndex == 1
                    ? Colors.amber
                    : Theme.of(context).colorScheme.onBackground,
              ),
              title: Text("المفضلة"),
              selectedColor: Theme.of(context).colorScheme.secondary,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Image.asset(
                'assets/images/orders.png',
                width: 24,
                color: _currentIndex == 2
                    ? null
                    : Theme.of(context).colorScheme.onBackground,
              ),
              title: Text("الطلبيات"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("الإشعارات"),
              selectedColor: Colors.red,
            ),
          ],
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            Favorites(),
            OrdersPage(),
            Container(
                child: Center(
              child: Text('الإشعارات'),
            ))
          ],
          controller: pageController,
        ));
  }
}

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                Text('المفضلة',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
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
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(ThemeConfig.radius16)),
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
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.8),
                              width: 0.5),
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.8),
                              width: 0.5),
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                for (var i = 0; i < products.length / 2; i++)
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 275,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(ThemeConfig.radius8),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.2)),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            ThemeConfig.radius8),
                                        topRight: Radius.circular(
                                            ThemeConfig.radius8)),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Image.network(
                                          products[i],
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      width: 0.5),
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary
                                                      .withOpacity(0.8),
                                                  shape: BoxShape.circle),
                                              child: InkWell(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        ThemeConfig.radius16),
                                                child: Image.asset(
                                                  'assets/images/crown.png',
                                                  height: 22,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  )),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Transform.translate(
                                      offset: Offset(0, -8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          borderRadius: BorderRadius.circular(
                                              ThemeConfig.radius8)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                  'اسم المادة',
                                                ),
                                                Row(
                                                  children: [
                                                    if (i % 2 == 0)
                                                      Text(
                                                          '${i == 0 ? 18 : i * Random().nextInt(100)} \$',
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          )),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                        '${i == 0 ? 15 : i * Random().nextInt(100)} \$',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                                TextButton.icon(
                                                  icon: Image.asset(
                                                    'assets/images/add_to_cart.png',
                                                    width: 22,
                                                  ),
                                                  onPressed: () {},
                                                  label: Text('أضف إلى السلة'),
                                                )
                                              ],
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 275,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(ThemeConfig.radius8),
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.2)),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            ThemeConfig.radius8),
                                        topRight: Radius.circular(
                                            ThemeConfig.radius8)),
                                    child: Stack(
                                      children: [
                                        Positioned.fill(
                                          child: Image.network(
                                            products[products.length - 1 - i],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: 8,
                                            left: 8,
                                            child: Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      width: 0.5),
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary
                                                      .withOpacity(0.8),
                                                  shape: BoxShape.circle),
                                              child: InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          ThemeConfig.radius16),
                                                  child: Image.asset(
                                                    'assets/images/crown.png',
                                                    height: 22,
                                                  )),
                                            ))
                                      ],
                                    ),
                                  )),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Transform.translate(
                                      offset: Offset(0, -8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8)),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          borderRadius: BorderRadius.circular(
                                              ThemeConfig.radius8)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                  'اسم مادة طويل',
                                                ),
                                                Row(
                                                  children: [
                                                    if (i % 2 != 0)
                                                      Text('150\$',
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          )),
                                                    SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                        '${Random().nextInt(100)} \$',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                ),
                                                TextButton.icon(
                                                  icon: Image.asset(
                                                    'assets/images/add_to_cart.png',
                                                    width: 22,
                                                  ),
                                                  onPressed: () {},
                                                  label: Text('أضف إلى السلة'),
                                                )
                                              ],
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  Text('الرئيسية',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Spacer(),
                  InkResponse(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CartPage();
                      }));
                    },
                    child: Stack(
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
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.8),
                                width: 0.5),
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.8),
                                width: 0.5),
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 175,
                    child: Swiper(
                      autoplay: true,
                      duration: 1000,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                          aspectRatio: 2 / 1,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16),
                            child: Image.asset(
                              'assets/images/ad_${index + 1}.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
                      viewportFraction: 0.8,
                      scale: 0.9,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
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
                      Text('الأصناف',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
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
                      height: 175,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < 4; i++) getCategory(i)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 1; i < 5; i++) getCategory(i + 3)
                            ],
                          ),
                        ],
                      )),
                  Row(
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
                      Text('المواد',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
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
                  for (var i = 0; i < products.length / 2; i++)
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProductPage(imagePath: products[i]);
                              }));
                            },
                            child: SizedBox(
                              height: 282,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8)),
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  ThemeConfig.radius8),
                                              topRight: Radius.circular(
                                                  ThemeConfig.radius8)),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.network(
                                                i == 1
                                                    ? 'https://s1.eestatic.com/2018/09/13/elandroidelibre/el_androide_libre_337730763_179714641_1706x960.jpg'
                                                    : products[i],
                                                fit: BoxFit.cover,
                                              ),
                                              Positioned(
                                                  top: 8,
                                                  left: 8,
                                                  child: Container(
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                                Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .secondary,
                                                            width: 0.5),
                                                        color: i % 3 != 0
                                                            ? Theme.of(context)
                                                                .colorScheme
                                                                .secondary
                                                                .withOpacity(
                                                                    0.8)
                                                            : Theme.of(context)
                                                                .colorScheme
                                                                .secondary
                                                                .withOpacity(
                                                                    0.6),
                                                        shape: BoxShape.circle),
                                                    child: InkWell(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              ThemeConfig
                                                                  .radius16),
                                                      child: i % 3 == 0
                                                          ? Image.asset(
                                                              'assets/images/crown_outline.png',
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .onPrimary,
                                                              height: 22,
                                                            )
                                                          : Image.asset(
                                                              'assets/images/crown.png',
                                                              height: 22,
                                                            ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Transform.translate(
                                            offset: Offset(0, -8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          ThemeConfig.radius8)),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        ThemeConfig.radius8)),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'اسم المادة',
                                                      ),
                                                      Row(
                                                        children: [
                                                          if (i % 2 == 0)
                                                            Text(
                                                                '${i == 0 ? 18 : i * Random().nextInt(100)} \$',
                                                                style:
                                                                    TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                )),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                              '${i == 0 ? 15 : i * Random().nextInt(100)} \$',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                      TextButton.icon(
                                                        icon: Image.asset(
                                                          'assets/images/add_to_cart.png',
                                                          width: 22,
                                                        ),
                                                        onPressed: () {},
                                                        label: Text(
                                                            'أضف إلى السلة'),
                                                      )
                                                    ],
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ProductPage(imagePath: products[i]);
                              }));
                            },
                            child: SizedBox(
                              height: 282,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8)),
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  ThemeConfig.radius8),
                                              topRight: Radius.circular(
                                                  ThemeConfig.radius8)),
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Image.network(
                                                  i == 4
                                                      ? 'https://s1.eestatic.com/2018/09/13/elandroidelibre/el_androide_libre_337730763_179714641_1706x960.jpg'
                                                      : products[
                                                          products.length -
                                                              1 -
                                                              i],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Positioned(
                                                  top: 8,
                                                  left: 8,
                                                  child: Container(
                                                    padding: EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .secondary,
                                                            width: 0.5),
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary
                                                            .withOpacity(0.6),
                                                        shape: BoxShape.circle),
                                                    child: InkWell(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                ThemeConfig
                                                                    .radius16),
                                                        child: Image.asset(
                                                          'assets/images/crown_outline.png',
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .onPrimary,
                                                          height: 22,
                                                        )),
                                                  ))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Transform.translate(
                                            offset: Offset(0, -8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          ThemeConfig.radius8)),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        ThemeConfig.radius8)),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        'اسم مادة طويل',
                                                      ),
                                                      Row(
                                                        children: [
                                                          if (i % 2 != 0)
                                                            Text('150\$',
                                                                style:
                                                                    TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                )),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Text(
                                                              '${Random().nextInt(100)} \$',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                      TextButton.icon(
                                                        icon: Image.asset(
                                                          'assets/images/add_to_cart.png',
                                                          width: 22,
                                                        ),
                                                        onPressed: () {},
                                                        label: Text(
                                                            'أضف إلى السلة'),
                                                      )
                                                    ],
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget getCategory(int index) {
    // if (index > 3)
    // second design
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MaterialsPage(getImageNameByIndex(index));
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ThemeConfig.radius16),
            color: Theme.of(context).colorScheme.onPrimary,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Image.asset(
                'assets/images/$index.png',
                width: 30,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                getImageNameByIndex(index),
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
    // first design
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(ThemeConfig.radius16),
        child: InkWell(
          borderRadius: BorderRadius.circular(ThemeConfig.radius16),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MaterialsPage(getImageNameByIndex(index));
            }));
          },
          child: Container(
            width: 75,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ThemeConfig.radius16),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Image.asset(
                  'assets/images/$index.png',
                  width: 30,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  getImageNameByIndex(index),
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
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
