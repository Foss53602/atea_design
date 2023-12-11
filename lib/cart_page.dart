import 'package:atea_design/home_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('سلة المشتريات'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius16)),
                                height: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius16),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(height: 4),
                                    Text('بلوزة صوف',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
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
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('المقاس',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline)),
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ThemeConfig.radius16),
                                              onTap: () {
                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 50,
                                                height: 35,
                                                margin:
                                                    EdgeInsets.only(left: 8),
                                                child: Center(
                                                  child: Text(
                                                      i == 0
                                                          ? 'S'
                                                          : i == 1
                                                              ? 'M'
                                                              : i == 2
                                                                  ? 'L'
                                                                  : 'XL',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: i == 0
                                                              ? Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .onPrimary
                                                              : Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .onSurfaceVariant)),
                                                ),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            ThemeConfig
                                                                .radius16),
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
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text('اللون',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline)),
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
                                              onTap: () {
                                                setState(() {});
                                              },
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Container(
                                                    width: i == 1 ? 45 : 40,
                                                    height: i == 1 ? 45 : 40,
                                                    margin: EdgeInsets.only(
                                                        left: 16),
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
                                                              .withOpacity(0.1)
                                                          : i == 1
                                                              ? Colors.blueGrey
                                                                  .withOpacity(
                                                                      0.1)
                                                              : i == 2
                                                                  ? Colors
                                                                      .deepPurpleAccent
                                                                      .withOpacity(
                                                                          0.1)
                                                                  : Colors
                                                                      .deepOrange
                                                                      .withOpacity(
                                                                          0.1),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: i == 1 ? 35 : 30,
                                                    height: i == 1 ? 35 : 30,
                                                    margin: EdgeInsets.only(
                                                        left: 16),
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
                                                                  : Colors
                                                                      .deepOrange,
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
                              SizedBox(width: 8),
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
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius16),
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          width: 0.5)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkResponse(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontSize: 18),
                                      ),
                                      InkResponse(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.remove_circle_outline,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextButton.icon(
                                  icon: Icon(Icons.delete_outline),
                                  label: Text('حذف'),
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Theme.of(context)
                                                  .colorScheme
                                                  .error),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ThemeConfig.radius8)))),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                              title: Text('حذف المنتج'),
                                              content: Text(
                                                  'هل تريد حذف (بلوزة صوف) من سلة المشتريات؟'),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('لا')),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('نعم')),
                                              ],
                                            ));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outlineVariant,
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(
                                        ThemeConfig.radius16)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius16),
                                  child: AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: Image.network(products[7],
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(height: 4),
                                    Text('فرن جاك',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(height: 4),
                                    Text(
                                      'JAKOven',
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
                                        Text('19.00 \$',
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
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
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
                              SizedBox(width: 8),
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
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius16),
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          width: 0.5)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkResponse(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.add_circle_outline,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontSize: 18),
                                      ),
                                      InkResponse(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.remove_circle_outline,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              // delete button
                              Expanded(
                                child: TextButton.icon(
                                  icon: Icon(Icons.delete_outline),
                                  label: Text('حذف'),
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Theme.of(context)
                                                  .colorScheme
                                                  .error),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ThemeConfig.radius8)))),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title: Text('حذف المنتج'),
                                          content: Text(
                                              'هل تريد حذف (فرن جاك) من سلة المشتريات؟'),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('لا')),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text('نعم')),
                                          ],
                                        ));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
            child: Column(
              children: [
                //date and time
                Row(
                  children: [
                    Text('المجموع',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.outline)),
                    SizedBox(
                      width: 16,
                    ),
                    Text('81.00 \$',
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text('11/12/2023',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        label: Text('العنوان',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.outline,
                                fontSize: 14)),
                        suffixIcon: Icon(Icons.location_on_outlined),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(ThemeConfig.radius8),
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 0.5))),
                  ),
                ),
                SizedBox(height: 8),
                FilledButton.icon(
                  icon: Icon(Icons.check),
                  label: Text('تأكيد الطلب'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.secondary),
                      foregroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.onSecondary),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius8)))),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
