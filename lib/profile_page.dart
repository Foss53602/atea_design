import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>  {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الملف الشخصي')),
      // profile tap , notifications tap
      body: SingleChildScrollView(
        child: Column(
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
            Text('محمد عبدالله', style: TextStyle(fontSize: 20)),
            Text('mohammed1989@gmail.com', style: TextStyle(fontSize: 13)),
            SizedBox(height: 16),
            Container(
               height: MediaQuery.of(context).size.height * 0.66,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ThemeConfig.radius32),
                      topRight: Radius.circular(ThemeConfig.radius32)),
                ),
                child: _drawAccountInfo()),
          ],
        ),
      ),
    );
  }

  Widget _drawAccountInfo() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          ListTile(
            title: Text('الاسم', style: TextStyle(fontSize: 12)),
            subtitle: Text('محمد عبدالله', style: TextStyle(fontSize: 16)),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('البريد الإلكتروني', style: TextStyle(fontSize: 12)),
            subtitle: Text('mohammed1989@gmail.com', style: TextStyle(fontSize: 16)),
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
      ),
    );
  }

}
