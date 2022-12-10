import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_outlined), onPressed: () {}),
      backgroundColor: Colors.red[900],
      title: Text(title),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight((kToolbarHeight));
}
