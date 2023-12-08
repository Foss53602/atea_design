import 'package:atea_design/theme_config.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProductPage extends StatefulWidget {
  final String imagePath;

  const ProductPage({required this.imagePath, super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var count = 1;

  int selectedColor = 0;

  int selectedSize = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 400,
                    child: Swiper(
                      itemCount: 2,
                      autoplay: true,
                      duration: 1000,
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          index == 0
                              ? 'https://img-lcwaikiki.mncdn.com/mnresize/1020/1360/pim/productimages/20221/5670566/l_20221-s2be69z8-j0m_a4.jpg'
                              : 'https://img-lcwaikiki.mncdn.com/mnresize/1020/1360/pim/productimages/20221/5670566/l_20221-s2be69z8-j0m_u.jpg',
                          fit: BoxFit.cover,
                        );
                      },
                      itemHeight: 400.0,
                      pagination: SwiperPagination(
                          margin: EdgeInsets.only(bottom: 32),
                          builder: DotSwiperPaginationBuilder(
                              color: Theme.of(context).colorScheme.secondary,
                              activeColor:
                                  Theme.of(context).colorScheme.onSecondary)),
                    ),
                  ),
                  Row(
                    children: [
                      InkResponse(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.only(
                              left: 2, right: 8, top: 4, bottom: 4),
                          decoration: BoxDecoration(
                              color: Colors.black12, shape: BoxShape.circle),
                          child: InkWell(
                              borderRadius:
                                  BorderRadius.circular(ThemeConfig.radius16),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Theme.of(context).colorScheme.onPrimary,
                                size: 20,
                              )),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary,
                                width: 0.5),
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.6),
                            shape: BoxShape.circle),
                        child: InkWell(
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16),
                            child: Image.asset(
                              'assets/images/crown_outline.png',
                              color: Theme.of(context).colorScheme.onPrimary,
                              height: 22,
                            )),
                      )
                    ],
                  )
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Transform.translate(
                      offset: Offset(0, -25),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(ThemeConfig.radius32),
                                topRight:
                                    Radius.circular(ThemeConfig.radius32))),
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.surface,
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'بلوزة صوف',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'تركي - LC Waikiki',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text('31.00 \$',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Text(
                              'المقاس',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.outline),
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            for (int i = 0; i < 4; i++)
                              InkWell(
                                borderRadius:
                                    BorderRadius.circular(ThemeConfig.radius16),
                                onTap: () {
                                  setState(() {
                                    selectedSize = i;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 40,
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
                                            color: i == selectedSize
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
                                        color: i == selectedSize
                                            ? Colors.black
                                            : Theme.of(context)
                                                .colorScheme
                                                .outline,
                                      ),
                                      color: i == selectedSize
                                          ? Colors.black
                                          : Theme.of(context)
                                              .colorScheme
                                              .surface),
                                ),
                              )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'اللون',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.outline),
                            ),
                            SizedBox(
                              width: 48,
                            ),
                            for (int i = 0; i < 4; i++)
                              InkResponse(
                                onTap: () {
                                  setState(() {
                                    selectedColor = i;
                                  });
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: i == selectedColor ? 50 : 45,
                                      height: i == selectedColor ? 50 : 45,
                                      margin: EdgeInsets.only(left: 16),
                                      child: i == selectedColor
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
                                                    ? Colors.deepPurpleAccent
                                                        .withOpacity(0.1)
                                                    : Colors.deepOrange
                                                        .withOpacity(0.1),
                                      ),
                                    ),
                                    Container(
                                      width: i == selectedColor ? 40 : 35,
                                      height: i == selectedColor ? 40 : 35,
                                      margin: EdgeInsets.only(left: 16),
                                      child: i == selectedColor
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
                                                    ? Colors.deepPurpleAccent
                                                    : Colors.deepOrange,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        // Description
                        Text(
                          'وصف المنتج',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'بلوزة شتوية، قطعة أساسية تمنحك الدفء والأناقة خلال فصل الشتاء. تصميمها العصري يجمع بين الراحة والأناقة، مع خامة ناعمة ودافئة تضمن الشعور بالدفء في الأيام الباردة. يتميز الكمال العصري بقصة مستقيمة وياقة عالية تضيف لمسة عصرية، مما يجعل هذه البلوزة خيارًا مثاليًا لتكون إضافة مميزة إلى ملابس موسم الشتاء الخاصة بك.',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 0))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ThemeConfig.radius32),
                      topRight: Radius.circular(ThemeConfig.radius32))),
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  'تمت الإضافة إلى السلة',
                                  textAlign: TextAlign.center,
                                ),
                                content: Lottie.asset(
                                    'assets/lotties/success.json',
                                    repeat: false,
                                    width: 100,
                                    height: 100),
                              );
                            });
                        Future.delayed(const Duration(milliseconds: 1500), () {
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.4),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: Offset(0, 5))
                            ],
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius16),
                            color: Theme.of(context).colorScheme.primary),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/add_to_cart.png',
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'إضافة إلى السلة',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 120,
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
                          width: 16,
                        ),
                        Text(
                          count.toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          width: 16,
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
