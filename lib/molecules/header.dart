
import 'package:flutter/material.dart';
import 'package:weincode_design_system/atoms/wc_text.dart';
import 'package:weincode_design_system/fundation/color_fundation.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  OurAppBar({
    this.title = 'Arquitectura limpia',
    this.iconAppBarr = const Icon(Icons.add)
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: footer_background,
      title: H1(text: title),
      actions: [
        IconButton(
          icon: this.iconAppBarr,
          onPressed: () => {print("Oprimiste +")},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {print("Oprimiste >")},
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


}