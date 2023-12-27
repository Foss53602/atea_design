import 'package:atea_design/Widgets/main_app_bar.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({super.key});

  @override
  State<LocationsPage> createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Padding(
            padding: EdgeInsets.all(ThemeConfig.pagePadding),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                MainAppBar(
                  title: 'العناوين',
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.2),
                                        blurRadius: 4,
                                        offset: Offset(0, 2))
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'مركز العطاء للتجارة',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'المنطقة الحرة - تركيا',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'الشارع الرئيسي - مبنى 1 - طابق اول - مكتب 1',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 150,
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://i0.wp.com/www.cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1',
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.edit_outlined,
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_outline,
                                        color: Colors.red)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.2),
                                        blurRadius: 4,
                                        offset: Offset(0, 2))
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'عصرونية الجمال',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'المنطقة الحرة - تركيا',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'الشارع الرئيسي - مبنى 1 - طابق اول - مكتب 1',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://i0.wp.com/www.cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1',
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.edit_outlined,
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_outline,
                                        color: Colors.red)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withOpacity(0.2),
                                        blurRadius: 4,
                                        offset: Offset(0, 2))
                                  ],
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'مكتبة الفارس',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'المنطقة الحرة - تركيا',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'الشارع الرئيسي - مبنى 1 - طابق اول - مكتب 1',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 150,
                                    width: double.infinity,
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://i0.wp.com/www.cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1',
                                      fit: BoxFit.cover,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.edit_outlined,
                                        color: Colors.black)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 4,
                                          offset: Offset(0, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_outline,
                                        color: Colors.red)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            )));
  }
}
