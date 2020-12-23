import 'package:animals_now_test/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final Size preferredSize = Size.fromHeight(56.0);
  final String title;
  final Color color;

  Header(this.title, {this.color});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        margin: EdgeInsets.only(left: 5),
        child: Text(
          this.title,
          maxLines: 1,
          textWidthBasis: TextWidthBasis.parent,
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.15,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      centerTitle: true,
      backgroundColor: color != null ? color : ThemeColors.primaryColor,
      automaticallyImplyLeading: true,
    );
  }
}
