import 'package:abd_portfolio/models/custom_url.dart';
import 'package:flutter/foundation.dart';

class Project {
  final String title;
  final String subTitle;
  final List<String> description;
  final String year;
  final String techStack;
  final TextWithLinks textWithLinks;

  const Project({
    @required this.title,
    @required this.subTitle,
    @required this.description,
    @required this.year,
    @required this.techStack,
    this.textWithLinks,
  });
}
