import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool _isFavorite = false;

  void onPressedFav() {
    setState(() {
      _isFavorite = !this._isFavorite;
    });

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: this._isFavorite ? Text('Agregaste a Favorito') : Text('Quistate de Favoritos'),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._isFavorite ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}
