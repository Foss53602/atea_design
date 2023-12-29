import 'package:atea_design/Widgets/main_app_bar.dart';
import 'package:atea_design/cart_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ThemeConfig.pagePadding),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          MainAppBar(
            title: 'الطلبيات',
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (var index = 0; index < 10; index++)
                    Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.2),
                                blurRadius: 2,
                                offset: Offset(-2, 2))
                          ],
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return _drawOrderDialog(context);
                                  });
                            },
                            title: Text(
                              '# ${index + 1} ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('التاريخ: 2023-12-15'),
                                Row(
                                  children: [
                                    Text('المبلغ: '),
                                    Text(
                                      '144.00 \$',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(index == 0 || index == 2 || index == 3
                                    ? 'قيد التجهيز'
                                    : index == 1
                                        ? 'قيد الشحن'
                                        : index == 4 || index == 5
                                            ? 'تم التسليم'
                                            : 'مقبولة'),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  index == 0 || index == 2 || index == 3
                                      ? Icons.pending_actions
                                      : index == 1
                                          ? Icons.delivery_dining
                                          : index == 4 || index == 5
                                              ? Icons.check_circle
                                              : Icons.check_circle_outline,
                                  color: index == 0 || index == 2 || index == 3
                                      ? Colors.orange
                                      : index == 1
                                          ? Colors.blue
                                          : index == 4 || index == 5
                                              ? Colors.green
                                              : Colors.green,
                                ),
                              ],
                            ),
                          ),
                          ExpansionTile(
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    ThemeConfig.radius16)),
                            title: Text('التفاصيل'),
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      ThemeConfig.radius16),
                                  border: Border.all(
                                      width: 0.5,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(4),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text('احمد سعيد',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Spacer(),
                                        Text('80.00 \$',
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary)),
                                        SizedBox(
                                          width: 8,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      thickness: 0.2,
                                    ),
                                    ListTile(
                                        title: Row(
                                          children: [
                                            Container(
                                              width: 5,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('بلوزة صوف',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'تركي - LC Waikiki',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .outlineVariant),
                                            )
                                          ],
                                        ),
                                        subtitle: Wrap(
                                          children: [
                                            Text('السعر: '),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '31.00 \$',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('الكمية: '),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '2',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text('اللون: '),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.teal),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text('المقاس: '),
                                                SizedBox(
                                                  width: 4,
                                                ),
                                                Container(
                                                  width: 30,
                                                  height: 22,
                                                  margin:
                                                      EdgeInsets.only(left: 8),
                                                  child: Center(
                                                    child: Text('S',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .onPrimary)),
                                                  ),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              ThemeConfig
                                                                  .radius16),
                                                      border: Border.all(
                                                        width: 0.2,
                                                        color: Colors.black,
                                                      ),
                                                      color: Colors.black),
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                    ListTile(
                                        title: Row(
                                          children: [
                                            Container(
                                              width: 5,
                                              height: 5,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('سماعة بلوتوث',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              'صيني - ابل',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .outlineVariant),
                                            )
                                          ],
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Text('السعر: '),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '22.00 \$',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text('الكمية: '),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              ListTile(
                                  title: Row(
                                    children: [
                                      Container(
                                        width: 5,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('فرن صغير',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Ariston - ايطالي',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .outlineVariant),
                                      )
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Text('السعر: '),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '60.00 \$',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('الكمية: '),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                    ],
                                  )),
                            ],
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
    );
  }

  Widget _drawOrderDialog(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الطلب # 1',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).colorScheme.tertiary)),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body: Column(
        children: [
          ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return _drawOrderDialog(context);
                  });
            },
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('التاريخ: 2023-12-15'),
                Row(
                  children: [
                    Text('المبلغ: '),
                    Text(
                      '144.00 \$',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                ),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('قيد التجهيز', style: TextStyle()),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.pending_actions,
                  color: Colors.orange,
                  size: 30,
                ),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 0.2,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('التفاصيل',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.secondary)),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ThemeConfig.radius16),
                      border: Border.all(
                          width: 0.5,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text('احمد سعيد',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text('80.00 \$',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 0.2,
                        ),
                        ListTile(
                            title: Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('بلوزة صوف',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'تركي - LC Waikiki',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant),
                                )
                              ],
                            ),
                            subtitle: Wrap(
                              children: [
                                Text('السعر: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '31.00 \$',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('الكمية: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('اللون: '),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.teal),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('المقاس: '),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 22,
                                      margin: EdgeInsets.only(left: 8),
                                      child: Center(
                                        child: Text('S',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary)),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              ThemeConfig.radius16),
                                          border: Border.all(
                                            width: 0.2,
                                            color: Colors.black,
                                          ),
                                          color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            )),
                        ListTile(
                            title: Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('سماعة بلوتوث',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'صيني - ابل',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant),
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text('السعر: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '22.00 \$',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('الكمية: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ThemeConfig.radius16),
                      border: Border.all(
                          width: 0.5,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            Text('عمر الأحمد',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text('90.00 \$',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.primary,
                          thickness: 0.2,
                        ),
                        ListTile(
                            title: Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('بلوزة صوف',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'تركي - LC Waikiki',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant),
                                )
                              ],
                            ),
                            subtitle: Wrap(
                              children: [
                                Text('السعر: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '31.00 \$',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('الكمية: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('اللون: '),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('المقاس: '),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      width: 30,
                                      height: 22,
                                      margin: EdgeInsets.only(left: 8),
                                      child: Center(
                                        child: Text('XL',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary)),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              ThemeConfig.radius16),
                                          border: Border.all(
                                            width: 0.2,
                                            color: Colors.black,
                                          ),
                                          color: Colors.black),
                                    )
                                  ],
                                )
                              ],
                            )),
                        ListTile(
                            title: Row(
                              children: [
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('سماعة بلوتوث',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'صيني - ابل',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant),
                                )
                              ],
                            ),
                            subtitle: Row(
                              children: [
                                Text('السعر: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '22.00 \$',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('الكمية: '),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  ListTile(
                      title: Row(
                        children: [
                          Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('فرن صغير',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Ariston - ايطالي',
                            style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context)
                                    .colorScheme
                                    .outlineVariant),
                          )
                        ],
                      ),
                      subtitle: Row(
                        children: [
                          Text('السعر: '),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '60.00 \$',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('الكمية: '),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
