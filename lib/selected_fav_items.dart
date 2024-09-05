import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/favourite_item_provider.dart';

class FavouriteList extends StatefulWidget {
  const FavouriteList({super.key});

  @override
  State<FavouriteList> createState() => _FavouriteListState();
}

class _FavouriteListState extends State<FavouriteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Item"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Consumer<FavouriteItemProvider>(builder: (context, value, child) {
        final favourites = value.list;
        return ListView.builder(
          itemCount: favourites.length,
          itemBuilder: (context, index) {
            int itemIndex = favourites[index]; // Corrected item index
            return ListTile(
              onTap: () {
                value.removeFromThelist(itemIndex); // Remove from list
              },
              leading: Text("Title $itemIndex"),
              trailing: const Icon(Icons.favorite, color: Colors.red),
            );
          },
        );
      }),
    );
  }
}
