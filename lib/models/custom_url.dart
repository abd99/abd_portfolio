import 'package:flutter/foundation.dart';

class CustomURL {
  final String text;
  final String url;

  const CustomURL({
    @required this.text,
    this.url,
  });
}

class TextWithLinks {
  final List<CustomURL> textArray;
  const TextWithLinks({
    @required this.textArray,
  });
}
