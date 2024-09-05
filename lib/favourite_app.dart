// Corrected import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/favourite_item_provider.dart';
import 'package:provider_course/selected_fav_items.dart';
import 'package:provider_course/theme_changer_screen.dart';

class MyFavouriteItems extends StatefulWidget {
  const MyFavouriteItems({super.key});

  @override
  State<MyFavouriteItems> createState() => _MyFavouriteItemsState();
}

class _MyFavouriteItemsState extends State<MyFavouriteItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavouriteList(),
                ),
              );
            },
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThemeChangerScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text("Favourite Item"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Consumer<FavouriteItemProvider>(builder: (context, value, child) {
        return ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                if (value.list.contains(index)) {
                  value.removeFromThelist(index);
                } else {
                  value.addToTheList(index);
                }
              },
              leading: Text("Title $index"),
              trailing: value.list.contains(index)
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border_outlined),
            );
          },
        );
      }),
    );
  }
}
