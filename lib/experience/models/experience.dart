import 'package:abd_portfolio/models/custom_url.dart';
import 'package:flutter/foundation.dart';

class Experience {
  final String title;
  final String company;
  final List<String> description;
  final String year;
  final TextWithLinks textWithLinks;

  const Experience({
    @required this.title,
    @required this.company,
    @required this.description,
    @required this.year,
    this.textWithLinks,
  });
}
