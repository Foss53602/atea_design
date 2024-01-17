import 'dart:math';

import 'package:atea_design/product_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:vibration/vibration.dart';

import '../main.dart';

class ProductCard extends StatefulWidget {
  final String imagePath;

  var isFavorite = false;

  ProductCard({super.key, required this.imagePath, this.isFavorite = false});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  var count = 1;
  late FToast fToast;

  @override
  void initState() {
    fToast = FToast();
    fToast.init(context);
    super.initState();
  }

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
                                ? youtubebackground
                                : nextInt % 7 == 0
                                    ? ticktokbackground
                                    : widget.imagePath,
                            fit: BoxFit.cover,
                          ),
                          if (nextInt % 6 == 0 || nextInt % 7 == 0)
                            Positioned(
                              bottom: 20,
                              left: 0,
                              right: 0,
                              child: InkWell(
                                borderRadius:
                                    BorderRadius.circular(ThemeConfig.radius16),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    onPressed: () async {
                                      _onAddToCartPressed();
                                    },
                                    label: Text('أضف إلى السلة'),
                                  )
                                ],
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

  void _onAddToCartPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(ThemeConfig.pagePadding),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context)
                                    .colorScheme
                                    .outlineVariant,
                                width: 0.5),
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16)),
                        height: 100,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16),
                          child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child: Image.network(
                                  'https://img-lcwaikiki.mncdn.com/mnresize/1020/1360/pim/productimages/20221/5670566/l_20221-s2be69z8-j0m_u.jpg',
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(height: 4),
                            Text('بلوزة صوف',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text(
                              'تركي - LC Waikiki',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .outlineVariant),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text('السعر',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline)),
                                SizedBox(
                                  width: 16,
                                ),
                                Text('31.00 \$',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('المقاس',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.outline)),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (int i = 0; i < 4; i++)
                                    InkWell(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius16),
                                      onTap: () {},
                                      child: Container(
                                        width: 50,
                                        height: 35,
                                        margin: EdgeInsets.only(left: 8),
                                        child: Center(
                                          child: Text(
                                              i == 0
                                                  ? 'S'
                                                  : i == 1
                                                      ? 'M'
                                                      : i == 2
                                                          ? 'L'
                                                          : 'XL',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: i == 0
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary
                                                      : Theme.of(context)
                                                          .colorScheme
                                                          .onSurfaceVariant)),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius16),
                                            border: Border.all(
                                              width: 0.2,
                                              color: i == 0
                                                  ? Colors.black
                                                  : Theme.of(context)
                                                      .colorScheme
                                                      .outline,
                                            ),
                                            color: i == 0
                                                ? Colors.black
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .surface),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Text('اللون',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.outline)),
                          SizedBox(
                            width: 32,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  for (int i = 0; i < 4; i++)
                                    InkResponse(
                                      onTap: () {},
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: i == 1 ? 45 : 40,
                                            height: i == 1 ? 45 : 40,
                                            margin: EdgeInsets.only(left: 16),
                                            child: i == 1
                                                ? Center(
                                                    child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  ))
                                                : null,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: i == 0
                                                  ? Colors.teal.withOpacity(0.1)
                                                  : i == 1
                                                      ? Colors.blueGrey
                                                          .withOpacity(0.1)
                                                      : i == 2
                                                          ? Colors
                                                              .deepPurpleAccent
                                                              .withOpacity(0.1)
                                                          : Colors.deepOrange
                                                              .withOpacity(0.1),
                                            ),
                                          ),
                                          Container(
                                            width: i == 1 ? 35 : 30,
                                            height: i == 1 ? 35 : 30,
                                            margin: EdgeInsets.only(left: 16),
                                            child: i == 1
                                                ? Center(
                                                    child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                  ))
                                                : null,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: i == 0
                                                  ? Colors.teal
                                                  : i == 1
                                                      ? Colors.blueGrey
                                                      : i == 2
                                                          ? Colors
                                                              .deepPurpleAccent
                                                          : Colors.deepOrange,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                isDense: true,
                                label: Text('اسم المستلم',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 14)),
                                suffixIcon: Icon(Icons.person_outline),
                                hintStyle: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .outlineVariant),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant,
                                        width: 0.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        width: 0.5))),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Container(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                isDense: true,
                                label: Text('السعر المخصص',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 14)),
                                suffixIcon: Icon(Icons.attach_money),
                                hintStyle: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .outlineVariant),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        width: 0.5)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius8),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant,
                                        width: 0.5))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text('الكمية',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.outline)),
                      SizedBox(
                        width: 32,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary,
                                width: 0.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            InkResponse(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            Text(
                              count.toString(),
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              width: 32,
                            ),
                            InkResponse(
                              onTap: () {
                                setState(() {
                                  if (count > 1) {
                                    count--;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove_circle_outline,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex: 2,
                        child: FilledButton.icon(
                            onPressed: () async {
                              await onAddToCar(context);
                            },
                            icon: Icon(Icons.check),
                            label: Text('تأكيد')),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close, color: Colors.red),
                            label: Text('إلغاء',
                                style: TextStyle(color: Colors.red))),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Future<void> onAddToCar(BuildContext buildContext) async {
    {
      Navigator.pop(context);
      await Future.delayed(const Duration(milliseconds: 500))
          .then((value) async {
        cartItemsCountController!.forward().then((value) {
          cartItemsCountController!.reset();
        });
        var hasVibrator = await Vibration.hasVibrator();
        if (hasVibrator != null && hasVibrator) {
          Vibration.vibrate();
        }
        listenableValue.value = listenableValue.value + 1;
      });
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('تم إضافة المنتج إلى السلة'),
              content: Lottie.asset('assets/lotties/success_new.json',
                  repeat: false, width: 100, height: 100),
            );
          });
      Future.delayed(const Duration(milliseconds: 1300), () {
        Navigator.pop(context);
      });
      // old design
      // Widget toast = Container(
      //   padding: const EdgeInsets.symmetric(
      //       horizontal: 24.0, vertical: 12.0),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(25.0),
      //     color: Colors.greenAccent,
      //   ),
      //   child: Row(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Image.asset('assets/images/main_logo.jpg',
      //           width: 40),
      //       SizedBox(
      //         width: 12.0,
      //       ),
      //       Text("تم إضافة المنتج إلى السة"),
      //     ],
      //   ),
      // );
      // fToast.showToast(
      //   child: toast,
      //   gravity: ToastGravity.CENTER,
      //   toastDuration: Duration(seconds: 2),
      // );
    }
  }
}
