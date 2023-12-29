import 'dart:math';

import 'package:atea_design/product_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ProductCard extends StatefulWidget {
  final String imagePath;

  var isFavorite = false;

  ProductCard({super.key, required this.imagePath, this.isFavorite = false});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var nextInt = Random().nextInt(10);
    var nextInt1 = Random().nextInt(100);
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductPage(imagePath: widget.imagePath);
        }));
      },
      child: SizedBox(
          height: 282,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(ThemeConfig.radius8)),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(ThemeConfig.radius8),
                          topRight: Radius.circular(ThemeConfig.radius8)),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            nextInt % 6 == 0
                                ? youtubebackground:
                            nextInt % 7 == 0
                                ? ticktokbackground
                                : widget.imagePath,
                            fit: BoxFit.cover,
                          ),
                          if(nextInt % 6 == 0 || nextInt % 7 == 0)
                            Positioned(
                              bottom: 20,
                              left: 0,
                              right: 0,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(
                                    ThemeConfig.radius16),
                                onTap: () {},
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    // open in youtube
                                    Icon(
                                      Icons.play_circle_fill,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'مشاهدة الفيديو',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
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
                                    color: widget.isFavorite || nextInt % 3 != 0
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
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius16),
                                  child: widget.isFavorite == false &&
                                          nextInt % 3 == 0
                                      ? Image.asset(
                                          'assets/images/crown_outline.png',
                                          color: Theme.of(context)
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
                              color: Theme.of(context).colorScheme.onPrimary,
                              borderRadius:
                                  BorderRadius.circular(ThemeConfig.radius8)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius8)),
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
                                      if (nextInt1 % 2 == 0)
                                        Text(
                                            '${nextInt1 == 0 ? 18 : nextInt1 * Random().nextInt(100)} \$',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            )),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                          '${nextInt1 == 0 ? 15 : nextInt1 * Random().nextInt(100)} \$',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
          )),
    );
  }
}
