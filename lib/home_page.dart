import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: EdgeInsets.all(ThemeConfig.pagePadding),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    'https://d3r4f9ursifuvh.cloudfront.net/cms/images/marketing-manager/og/Junger_Mann_im_Anzug_im_B%C3%BCro.jpg',
                  ),
                ),
                Spacer(),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset('assets/images/cart.png', height: 28),
                    Positioned(
                      top: -10,
                      right: -10,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        child: Text('26',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 45,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(ThemeConfig.radius16)),
                child: Image.asset('assets/images/filter.png',
                    color: Theme.of(context).colorScheme.onPrimary),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      suffixIcon: Icon(OctIcons.search_16),
                      hintText: 'بحث..',
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 220,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, crossAxisSpacing: 4, mainAxisSpacing: 4),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.1),
                        borderRadius:
                            BorderRadius.circular(ThemeConfig.radius8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(HeroIcons.cpu_chip),
                        Text('asdasd'),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}
