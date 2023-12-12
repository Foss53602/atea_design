import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الملف الشخصي')),
      // profile tap , notifications tap
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://d3r4f9ursifuvh.cloudfront.net/cms/images/marketing-manager/og/Junger_Mann_im_Anzug_im_B%C3%BCro.jpg',
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('محمد عبدالله', style: TextStyle(fontSize: 20)),
            ],
          ),
          SizedBox(height: 16),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ThemeConfig.radius32),
                      topRight: Radius.circular(ThemeConfig.radius32)),
                ),
                child: Column(
                  children: [
                    TabBar(
                      controller: _tabController,
                      indicatorColor: Theme.of(context).colorScheme.secondary,
                      labelColor: Theme.of(context).colorScheme.secondary,
                      tabs: [
                        Tab(text: 'معلومات الحساب'),
                        Tab(text: 'الإشعارات (6)'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          _drawAccountInfo(),
                          _drawNotifications(),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _drawAccountInfo() {
    return ListView(
      children: [
        SizedBox(height: 16),
        ListTile(
          title: Text('الاسم', style: TextStyle(fontSize: 12)),
          subtitle: Text('محمد عبدالله', style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          title: Text('البريد الإلكتروني', style: TextStyle(fontSize: 12)),
          subtitle: Text('mohammed@test.com', style: TextStyle(fontSize: 16)),
          trailing: Icon(
            Icons.edit,
          ),
        ),
        ListTile(
          title: Text('العنوان', style: TextStyle(fontSize: 12)),
          subtitle: Text('تركيا - اسطنبول - شارع الفاتح',
              style: TextStyle(fontSize: 16)),
          trailing: Icon(Icons.edit),
        ),
      ],
    );
  }

  Widget _drawNotifications() {
    // notifications with icon and text and date and time
    // with order number and order status
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
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
    );
  }
}
