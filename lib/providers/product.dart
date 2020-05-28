import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false
  });

  void toggleFavorite() {
    /*
      https://www.udemy.com/course/curso-flutter/learn/lecture/19443466#questions
      213. Marcando Produto como Favorito
      ChangeNotfy
    */
    isFavorite = !isFavorite;
    notifyListeners();
  }
}