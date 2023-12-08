import 'package:atea_design/home_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:lottie/lottie.dart';

class UserAreaPage extends StatefulWidget {
  const UserAreaPage({super.key});

  @override
  State<UserAreaPage> createState() => _UserAreaPageState();
}

class _UserAreaPageState extends State<UserAreaPage> {
  var _tabIconIndexSelected = 0;

  // signin or create account
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Image.asset('assets/images/main_logo.jpg',
                  height: 200, width: 200),
              const SizedBox(height: 20),
              const Text(
                'أهلا بك في متجر عطية الشيخ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Theme.of(context).colorScheme.onBackground,
                      tabs: const [
                        Tab(text: 'تسجيل الدخول', icon: Icon(Icons.login)),
                        Tab(text: 'إنشاء حساب', icon: Icon(Icons.person_add)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 350,
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Column(
                              children: [
                                FlutterToggleTab(
                                  width: 80,
                                  borderRadius: 15,
                                  selectedIndex: _tabIconIndexSelected,
                                  selectedTextStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  unSelectedTextStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  labels: ["ايميل", "هاتف"],
                                  icons: [
                                    Icons.email_outlined,
                                    Icons.phone_outlined
                                  ],
                                  selectedLabelIndex: (index) {
                                    setState(() {
                                      _tabIconIndexSelected = index;
                                    });
                                  },
                                  marginSelected: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                ),
                                const SizedBox(height: 20),
                                _tabIconIndexSelected == 0
                                    ? TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'البريد الإلكتروني',
                                          prefixIcon:
                                              const Icon(Icons.email_outlined),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          isDense: true,
                                          filled: true,
                                          fillColor: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      )
                                    : TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'رقم الهاتف',
                                          prefixIcon:
                                              const Icon(Icons.phone_outlined),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          isDense: true,
                                          filled: true,
                                          fillColor: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'كلمة المرور',
                                    prefixIcon: const Icon(Icons.lock_outline),
                                    suffixIcon: const Icon(
                                        Icons.remove_red_eye_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    isDense: true,
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                FilledButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ThemeConfig.radius8)))),
                                  onPressed: () {
                                    _onPressed();
                                  },
                                  child: const Text('تسجيل الدخول'),
                                ),
                              ],
                            ),
                          ),
                          // signup
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            child: Column(
                              children: [
                                FlutterToggleTab(
                                  width: 80,
                                  borderRadius: 15,
                                  selectedIndex: _tabIconIndexSelected,
                                  selectedTextStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  unSelectedTextStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  labels: ["ايميل", "هاتف"],
                                  icons: [
                                    Icons.email_outlined,
                                    Icons.phone_outlined
                                  ],
                                  selectedLabelIndex: (index) {
                                    setState(() {
                                      _tabIconIndexSelected = index;
                                    });
                                  },
                                  marginSelected: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 4),
                                ),
                                const SizedBox(height: 20),
                                _tabIconIndexSelected == 0
                                    ? TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'البريد الإلكتروني',
                                          prefixIcon:
                                              const Icon(Icons.email_outlined),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          isDense: true,
                                          filled: true,
                                          fillColor: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      )
                                    : TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'رقم الهاتف',
                                          prefixIcon:
                                              const Icon(Icons.phone_outlined),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                ThemeConfig.radius8),
                                            borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary),
                                          ),
                                          isDense: true,
                                          filled: true,
                                          fillColor: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'كلمة المرور',
                                    prefixIcon: const Icon(Icons.lock_outline),
                                    suffixIcon: const Icon(
                                        Icons.remove_red_eye_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    isDense: true,
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'تأكيد كلمة المرور',
                                    prefixIcon: const Icon(Icons.lock_outline),
                                    suffixIcon: const Icon(
                                        Icons.remove_red_eye_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          ThemeConfig.radius8),
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                    isDense: true,
                                    filled: true,
                                    fillColor:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                FilledButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      ThemeConfig.radius8)))),
                                  onPressed: () {
                                    _onPressed();
                                  },
                                  child: const Text('إنشاء حساب'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPressed() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('تم تسجيل الدخول بنجاح'),
            content: Lottie.asset('assets/lotties/success.json',
                repeat: false, width: 100, height: 100),
          );
        });
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pop(context);
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return HomePage();
      }), (route) => false);
    });
  }
}
