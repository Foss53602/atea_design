import 'dart:math';

import 'package:atea_design/materials_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الأصناف')),
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 8 : 4,
        ),
        itemBuilder: (context, index) {
          return getCategory(index);
        },
      ),
    );
  }

  Widget getCategory(int index) {
    // if (index > 3)
    // second design
    var myIndex = index > 7 ? Random().nextInt(7) : index;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MaterialsPage(getImageNameByIndex(myIndex));
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 75,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ThemeConfig.radius16),
            color: Theme.of(context).colorScheme.onPrimary,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Image.asset(
                'assets/images/$myIndex.png',
                width: 30,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                getImageNameByIndex(myIndex),
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getImageNameByIndex(int index) {
    switch (index) {
      case 0:
        return 'مفروشات';
      case 1:
        return 'عدة مطبخ';
      case 2:
        return 'اكسسوارات';
      case 3:
        return 'اجهزة';
      case 4:
        return 'كهربائيات';
      case 5:
        return 'حقائب';
      case 6:
        return 'ملابس';
      case 7:
        return 'احذية';
    }
    return '';
  }
}
