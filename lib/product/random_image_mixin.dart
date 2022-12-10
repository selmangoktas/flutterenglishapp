import 'package:flutter/material.dart';

mixin RandomImage on Widget {
  Image get getRandomImage => Image.network(
        "https://picsum.photos/200/300",
        fit: BoxFit.fill,
      );
}
