class College {
  final String collegeName;
  final String universityName;
  final String? year;
  final String courseName;

  const College({
    required this.collegeName,
    required this.universityName,
    this.year,
    required this.courseName,
  });
}
