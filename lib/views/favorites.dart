import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterenglishapp/product/component/appbar/custom_appbar.dart';
import 'package:flutterenglishapp/product/component/header/custom_stack_header.dart';
import 'package:flutterenglishapp/product/component/listview/favorite_listview.dart';
import 'package:flutterenglishapp/product/project_padding_utilitys.dart';
import 'package:flutterenglishapp/product/project_strings.dart';

import '../product/random_image_mixin.dart';

class Favorites extends StatelessWidget with RandomImage {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: ProjectStrings.appbarTitle),
      body: SafeArea(
          child: Column(
        children: const [
          Expanded(
            flex: 4,
            child: CustomStackHeader(),
          ),
          Expanded(flex: 6, child: FavoriteListview())
        ],
      )),
    );
  }
}
