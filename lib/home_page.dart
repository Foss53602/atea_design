import 'package:atea_design/Widgets/main_app_bar.dart';
import 'package:atea_design/Widgets/product_card.dart';
import 'package:atea_design/cart_page.dart';
import 'package:atea_design/categories_page.dart';
import 'package:atea_design/favorates_page.dart';
import 'package:atea_design/locations_page.dart';
import 'package:atea_design/materials_page.dart';
import 'package:atea_design/orders_page.dart';
import 'package:atea_design/product_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'main.dart';

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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var _currentIndex = 0;

  var pageController = PageController();
  Tween<double> scaleTween = Tween<double>(begin: 1.0, end: 1.4);

  @override
  void initState() {
    cartItemsCountController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CartPage();
            }));
          },
          child: ValueListenableBuilder(
            valueListenable: listenableValue,
            builder: (context, value, widget) {
              return SizedBox(
                width: 25,
                height: 25,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset('assets/images/cart.png'),
                    Positioned(
                      top: -10,
                      right: -10,
                      child: ScaleTransition(
                        scale: scaleTween.animate(cartItemsCountController!),
                        child: Container(
                          padding: EdgeInsets.all(
                              value.toString().length == 2 ? 2 : 4),
                          child: Text(value.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: StylishBottomBar(
          option: BubbleBarOptions(
            barStyle: BubbleBarStyle.horizotnal,
            bubbleFillStyle: BubbleFillStyle.fill,
          ),
          fabLocation: StylishBarFabLocation.end,
          hasNotch: true,
          elevation: 0,
          currentIndex: _currentIndex,
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.2),
          onTap: (i) {
            setState(() {
              _currentIndex = i;
            });
            pageController.jumpToPage(i);
          },
          items: [
            BottomBarItem(
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
            BottomBarItem(
              icon: Image.asset(
                'assets/images/crown.png',
                height: 30,
                color: _currentIndex == 1
                    ? Colors.amber
                    : Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                "المفضلة",
                style: TextStyle(fontSize: 13),
              ),
              selectedColor: Theme.of(context).colorScheme.secondary,
            ),
            BottomBarItem(
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
            BottomBarItem(
              icon: Icon(Icons.map_sharp),
              title: Text("العناوين"),
              selectedColor: Colors.red,
            ),
          ],
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: [Home(), Favorites(), OrdersPage(), LocationsPage()],
          controller: pageController,
        ));
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var hasFilter = false;
  var hasSort = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(ThemeConfig.pagePadding),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                surfaceTintColor: Theme.of(context).colorScheme.surface,
                scrolledUnderElevation: 0,
                titleSpacing: 0,
                title: MainAppBar(
                  title: 'الرئيسية',
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                key: ValueKey(hasFilter.hashCode + hasSort.hashCode),
                delegate: _SliverDelegate(
                  hasFilter: hasFilter,
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkResponse(
                              onTap: () async {
                                var value = await _filter();
                                if (value != null) {
                                  setState(() {
                                    hasFilter = value;
                                  });
                                }
                              },
                              child: Container(
                                width: 45,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: hasFilter
                                        ? Theme.of(context)
                                            .colorScheme
                                            .secondary
                                            .withOpacity(0.8)
                                        : Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius16)),
                                child: Image.asset('assets/images/filter.png',
                                    height: 20,
                                    width: 20,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).colorScheme.onPrimary,
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
                                        borderRadius: BorderRadius.circular(
                                            ThemeConfig.radius16)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary
                                                .withOpacity(0.8),
                                            width: 0.5),
                                        borderRadius: BorderRadius.circular(
                                            ThemeConfig.radius16))),
                              ),
                            ),
                          ],
                        ),
                        if (hasFilter) _drawSortButton(context)
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    if (!hasFilter)
                      SizedBox(
                        height: 16,
                      ),
                    if (!hasFilter)
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
                    if (!hasFilter)
                      SizedBox(
                        height: 8,
                      ),
                    if (!hasFilter)
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius8),
                                  color:
                                      Theme.of(context).colorScheme.secondary),
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
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CategoriesPage();
                              }));
                            },
                            child: Text(
                              'عرض الكل',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    if (!hasFilter)
                      SizedBox(
                          height: 175,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  for (var i = 0; i < 4; i++) getCategory(i)
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  for (var i = 1; i < 5; i++) getCategory(i + 3)
                                ],
                              ),
                            ],
                          )),
                    if (!hasFilter)
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius8),
                                  color:
                                      Theme.of(context).colorScheme.secondary),
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
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 4 : 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1 / 1.55,
                      children: [
                        for (var i = 0; i < 8; i++)
                          ProductCard(
                            imagePath: products[i],
                          )
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(ThemeConfig.radius16),
                      child: AspectRatio(
                          aspectRatio: 3 / 1,
                          child: Image.network(
                              fit: BoxFit.cover,
                              'https://www.shutterstock.com/image-vector/arabic-typography-means-english-special-600nw-2272994421.jpg')),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 4 : 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1 / 1.55,
                      children: [
                        for (var i = 8; i < 16; i++)
                          ProductCard(
                            imagePath: products[i],
                          )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _drawSortButton(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        TextButton.icon(
          icon: Icon(Icons.sort),
          style: TextButton.styleFrom(
            foregroundColor:
                hasSort ? Theme.of(context).colorScheme.secondary : null,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(ThemeConfig.pagePadding),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'ترتيب حسب',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ListTile(
                          iconColor: Theme.of(context).colorScheme.secondary,
                          onTap: () {},
                          title: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(ThemeConfig.radius8),
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.1)),
                            child: Row(
                              children: [
                                Text(
                                  'الأحدث',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.check,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                )
                              ],
                            ),
                          ),
                          leading: Icon(Icons.access_time),
                        ),
                        ListTile(
                          onTap: () {},
                          title: Text('الأقدم'),
                          leading: Icon(Icons.access_time),
                        ),
                        ListTile(
                          onTap: () {},
                          title: Text('الأعلى سعراً'),
                          leading: Icon(Icons.attach_money),
                        ),
                        ListTile(
                          onTap: () {},
                          iconColor: Theme.of(context).colorScheme.secondary,
                          title: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(ThemeConfig.radius8),
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.1)),
                            child: Row(
                              children: [
                                Text(
                                  'الأقل سعراً',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.check,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                )
                              ],
                            ),
                          ),
                          leading: Icon(Icons.attach_money),
                        ),
                        ListTile(
                          onTap: () {},
                          title: Text('الأكثر شراء'),
                          leading: Icon(Icons.payment),
                        ),
                        ListTile(
                          onTap: () {},
                          title: Text('الأقل شراء'),
                          leading: Icon(Icons.payment),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ButtonBar(
                          mainAxisSize: MainAxisSize.max,
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                  setState(() {
                                    hasSort = !hasSort;
                                  });
                                },
                                icon: hasSort
                                    ? Icon(Icons.cancel)
                                    : Icon(Icons.check),
                                label: hasSort
                                    ? Text('إلغاء الترتيب')
                                    : Text('تطبيق')),
                            TextButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
                                label: Text(
                                  'إلغاء',
                                  style: TextStyle(color: Colors.red),
                                )),
                          ],
                        )
                      ],
                    ),
                  );
                });
          },
          label: Text('ترتيب حسب'),
        ),
      ],
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

  String getSubCategoryNameByIndex(int index) {
    switch (index) {
      case 0:
        return 'مجلس عربي';
      case 1:
        return 'سجاد';
      case 2:
        return 'غرف نوم';
      case 3:
        return 'كنباية';
      case 4:
        return 'كرسي مكتب';
      case 5:
        return 'حرامات';
      case 6:
        return 'مكيت';
      case 7:
        return 'جلايل';
    }
    return '';
  }

  Future _filter() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(ThemeConfig.pagePadding),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'فلترة حسب',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius8),
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              width: 4,
                              height: 15),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'السعر',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: 'من',
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                suffixIcon: Icon(Icons.attach_money),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.8),
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.8),
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8))),
                          )),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: 'إلى',
                                contentPadding: EdgeInsets.all(8),
                                filled: true,
                                fillColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                suffixIcon: Icon(Icons.attach_money),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.8),
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.8),
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8))),
                          )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius8),
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              width: 4,
                              height: 15),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'الصنف',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (var i = 0; i < 8; i++)
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                height: 40,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8),
                                    border: i != 0
                                        ? Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary
                                                .withOpacity(0.2),
                                            width: 0.5)
                                        : null,
                                    color: i == 0
                                        ? Theme.of(context)
                                            .colorScheme
                                            .secondary
                                            .withOpacity(0.2)
                                        : null),
                                child: Center(
                                    child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/$i.png',
                                      color: i == 0
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondary
                                          : null,
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      getImageNameByIndex(i),
                                      style: TextStyle(
                                          color: i == 0
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .secondary
                                              : null),
                                    ),
                                  ],
                                )),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 50,
                            height: 40,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(ThemeConfig.radius8),
                              border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.2)),
                            ),
                            child: Center(
                                child: Text(
                              'الكل',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            )),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (var i = 0; i < 8; i++)
                                    Container(
                                      margin: EdgeInsets.only(right: 8),
                                      height: 40,
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              ThemeConfig.radius8),
                                          border: i != 1
                                              ? Border.all(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary
                                                      .withOpacity(0.2),
                                                  width: 0.5)
                                              : null,
                                          color: i == 1
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .secondary
                                                  .withOpacity(0.2)
                                              : null),
                                      child: Center(
                                          child: Row(
                                        children: [
                                          Text(
                                            getSubCategoryNameByIndex(i),
                                            style: TextStyle(
                                                color: i == 1
                                                    ? Theme.of(context)
                                                        .colorScheme
                                                        .secondary
                                                    : null),
                                          ),
                                        ],
                                      )),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 64,
                  ),
                  ButtonBar(
                    mainAxisSize: MainAxisSize.max,
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                          onPressed: () {
                            hasFilter = !hasFilter;
                            Navigator.pop(context, hasFilter);
                          },
                          icon: hasFilter
                              ? Icon(Icons.cancel)
                              : Icon(Icons.check),
                          label: hasFilter
                              ? Text('إلغاء الفلترة')
                              : Text('تطبيق')),
                      TextButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.close, color: Colors.red),
                          label: Text('إلغاء',
                              style: TextStyle(color: Colors.red))),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _drawDrawer() {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'مرحباً',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'محمد الأسمر',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      //email
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'mohammed7629@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://d3r4f9ursifuvh.cloudfront.net/cms/images/marketing-manager/og/Junger_Mann_im_Anzug_im_B%C3%BCro.jpg',
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              height: 0,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    onTap: () {},
                    leading:
                        Image.asset('assets/images/main_logo.jpg', width: 24),
                    title: Text('من نحن'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text('سياسة الخصوصية'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.security),
                    title: Text('شروط الإستخدام'),
                  ),
                  Divider(
                    height: 0,
                  ),
                  ListTile(
                    onTap: () {},
                    leading:
                        Image.asset('assets/images/whatsapp.png', width: 24),
                    title: Text('وتساب'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset('assets/images/TikTok.png', width: 24),
                    title: Text('تيك توك'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading:
                        Image.asset('assets/images/facebook.png', width: 26),
                    title: Text('فيسبوك'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading:
                        Image.asset('assets/images/instagram.png', width: 24),
                    title: Text('انستغرام'),
                  ),
                  ListTile(
                    onTap: () {},
                    leading:
                        Image.asset('assets/images/youtube.png', width: 24),
                    title: Text('يوتيوب'),
                  ),
                ],
              ),
            )),
            Divider(
              height: 0,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.logout),
              title: Text('تسجيل الخروج'),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  final bool hasFilter;

  _SliverDelegate({required this.child, required this.hasFilter});

  @override
  double get minExtent => hasFilter ? 98 : 50;

  @override
  double get maxExtent => hasFilter ? 98 : 50;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverDelegate oldDelegate) {
    return false;
  }
}
