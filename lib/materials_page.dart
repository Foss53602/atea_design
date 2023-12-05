import 'dart:math';

import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class MaterialsPage extends StatefulWidget {
  final String imageNameByIndex;

  const MaterialsPage(this.imageNameByIndex, {super.key});

  @override
  State<MaterialsPage> createState() => _MaterialsPageState();
}

class _MaterialsPageState extends State<MaterialsPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
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
                  Text(widget.imageNameByIndex,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Spacer(),
                  ElevatedButton.icon(
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: () {},
                      label: Text('ترتيب حسب')),
                ],
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
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius8),
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
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .secondary,
                                                          width: 0.5),
                                                      color: i % 3 != 0
                                                          ? Theme.of(context)
                                                              .colorScheme
                                                              .secondary
                                                              .withOpacity(0.8)
                                                          : Theme.of(context)
                                                              .colorScheme
                                                              .secondary
                                                              .withOpacity(0.6),
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
                                                      label:
                                                          Text('أضف إلى السلة'),
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
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius8),
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
                                                products[
                                                    products.length - 1 - i],
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
                                                          color:
                                                              Theme.of(context)
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
                                                        color: Theme.of(context)
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
                                                      label:
                                                          Text('أضف إلى السلة'),
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
        ));
  }
}
