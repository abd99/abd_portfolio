import 'package:flutter/foundation.dart';

class Project {
  final String title;
  final String subTitle;
  final List<String> description;
  final String year;
  final String techStack;

  const Project({
    @required this.title,
    @required this.subTitle,
    @required this.description,
    @required this.year,
    @required this.techStack,
  });
}
