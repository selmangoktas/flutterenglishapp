import 'package:flutter/material.dart';
import 'package:flutterenglishapp/product/project_padding_utilitys.dart';
import 'package:flutterenglishapp/product/project_strings.dart';
import 'package:flutterenglishapp/product/random_image_mixin.dart';

class CustomStackHeader extends StatelessWidget with RandomImage {
  const CustomStackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned.fill(
          bottom: 50,
          child: SizedBox(
            child: Container(
              child: getRandomImage,
            ),
          ),
        ),
        Positioned(
          height: 50,
          width: 200,
          bottom: 25,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: ProjectPadding.circular20,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
                child: Text(
              ProjectStrings.headerTitle,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ),
        )
      ],
    );
  }
}
