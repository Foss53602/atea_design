import 'package:atea_design/Widgets/main_app_bar.dart';
import 'package:atea_design/Widgets/product_card.dart';
import 'package:atea_design/home_page.dart';
import 'package:atea_design/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ThemeConfig.pagePadding),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          MainAppBar(title: 'المفضلة'),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                width: 45,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(ThemeConfig.radius16)),
                child: Image.asset('assets/images/filter.png',
                    height: 20,
                    width: 20,
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
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.8),
                              width: 0.5),
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.8),
                              width: 0.5),
                          borderRadius:
                              BorderRadius.circular(ThemeConfig.radius16))),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                for (var i = 0; i < products.length / 2; i++)
                  Row(
                    children: [
                      Expanded(
                        child: ProductCard(
                          imagePath: products[i],
                          isFavorite: true,
                        ),
                      ),
                      Expanded(
                        child: ProductCard(
                          imagePath: products[products.length - 1 - i],
                          isFavorite: true,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
