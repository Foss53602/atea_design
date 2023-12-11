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
    return Scaffold(
      appBar: AppBar(
        title: Text('الطلبيات'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    '# ${index + 1} ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.tertiary),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('التاريخ: 2023-12-15'),
                      Row(
                        children: [
                          Text('المبلغ: '),
                          Text(
                            '91.00 \$',
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
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(ThemeConfig.radius16)),
                  title: Text('التفاصيل'),
                  children: [
                    ListTile(
                        title: Row(
                          children: [
                            Text('بلوزة صوف'),
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
                        subtitle: Row(
                          children: [
                            Text('السعر: '),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '31.00 \$',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
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
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('اللون: '),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.teal),
                            ),
                            SizedBox(
                              width: 8,
                            ),
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
                        )),
                    ListTile(
                        title: Row(
                          children: [
                            Text('فرن صغير'),
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
                                  color:
                                      Theme.of(context).colorScheme.secondary),
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
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
