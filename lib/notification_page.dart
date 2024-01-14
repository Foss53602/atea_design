import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الإشعارات')),
      // profile tap , notifications tap
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: Icon(Icons.notifications_active_outlined,
                    color: Theme.of(context).colorScheme.primary),
                title: Row(
                  children: [
                    Text('تم تسليم ✅ الطلبية رقم'),
                    SizedBox(width: 4),
                    Text('# 16',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary)),
                  ],
                ),
                subtitle: Text('شكرا لك على ثقتك بنا'),
                trailing: Text('منذ 5 دقائق',
                    style:
                    TextStyle(color: Theme.of(context).colorScheme.outline)),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 0.2,
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.notifications_active_outlined,
                    color: Theme.of(context).colorScheme.primary),
                title: Row(
                  children: [
                    Text('تم رفض  ❌ الطلبية رقم'),
                    SizedBox(width: 4),
                    Text('# 8',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary)),
                  ],
                ),
                subtitle: Text('يرجى مراجعة الإدارة لمعرفة السبب'),
                trailing: Text('منذ 20 دقيقة',
                    style:
                    TextStyle(color: Theme.of(context).colorScheme.outline)),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 0.2,
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.notifications_outlined,
                    color: Theme.of(context).colorScheme.primary),
                title: Row(
                  children: [
                    Text('تم قبول ✔️ الطلبية رقم'),
                    SizedBox(width: 4),
                    Text('# 7',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary)),
                  ],
                ),
                subtitle: Text('يرجى الانتظار حتى يتم تجهيز الطلبية'),
                trailing: Text('منذ 36 دقيقة',
                    style:
                    TextStyle(color: Theme.of(context).colorScheme.outline)),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 0.2,
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.notifications_outlined,
                    color: Theme.of(context).colorScheme.primary),
                title: Row(
                  children: [
                    Text('الطلبية رقم'),
                    SizedBox(width: 4),
                    Text('# 13',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.tertiary)),
                  ],
                ),
                subtitle: Text('قيد الشحن 🛵 الآن'),
                trailing: Text('منذ ساعة',
                    style:
                    TextStyle(color: Theme.of(context).colorScheme.outline)),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 0.2,
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.notifications_none_outlined,
                    color: Theme.of(context).colorScheme.primary),
                title: Text(
                    'يرجى من العميل محمد عبد الله الإتصال بالإدارة لمراجعة الخلل في الطلبية رقم 106'),
                trailing: Text('منذ ساعة',
                    style:
                    TextStyle(color: Theme.of(context).colorScheme.outline)),
              ),
            ),
          ],
        ),
      ),
    );
  }



}

