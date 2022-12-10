import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterenglishapp/product/random_image_mixin.dart';

import '../../project_padding_utilitys.dart';

class FavoriteListview extends StatelessWidget with RandomImage {
  const FavoriteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: ProjectPadding.horizontal10,
          child: Card(
            child: ListTile(
              title: Text(
                "My Favority English Category ${Random().nextInt(15)}",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              trailing: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              leading: SizedBox(
                width: 50,
                child: getRandomImage,
              ),
            ),
          ),
        );
      },
    );
  }
}
