import 'package:flutter/material.dart';

class IconFavorit extends StatefulWidget {
  const IconFavorit({super.key});

  @override
  State<IconFavorit> createState() => _IconFavoritState();
}

class _IconFavoritState extends State<IconFavorit> {
  bool _isFavorit = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          _isFavorit = !_isFavorit;
        });
      },
      icon: Icon(
        _isFavorit ? Icons.favorite_outline_rounded : Icons.favorite_rounded,
        color: Color(0xFFCE9018),
        size: 30,
      ),
    );
  }
}
