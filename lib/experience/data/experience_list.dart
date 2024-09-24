import 'package:abd_portfolio/models/custom_url.dart';

import '../models/experience.dart';

const List<Experience> experienceList = [
  Experience(
    title: 'Senior Software Engineer - Flutter ',
    company: 'Carv',
    description: [
      'Building the Carv Flutter app for iOS, Android, and Web to work with the Carv AI for recruiters.',
      'Creating unique and custom widgets using custom painter.',
      'Mentoring engineers on the team and assisting in the onboarding of new members.',
      'Participating in architecture and design decisions to improve the general development experience and app performance.',
      'Migrated the app to Material 3 and helped in creating a new design system that minimized general UI development time by 50%.',
    ],
    year: 'Dec 2020 - Present',
  ),
  Experience(
    title: 'Flutter Engineer',
    company: 'Freelance',
    description: [
      'Developed Flutter apps for iOS and Android in engineering teams using agile processes.',
      'Used flutter_bloc, provider, and the riverpod package to manage app state.',
      'Integrated Google Maps, Firebase suite, SQLite, and similar plugins.',
      'Set up CI/CD pipelines for automated builds on app stores.'
    ],
    year: 'Feb 2020 - Dev 2022',
  ),
  Experience(
    title: 'Developer at Dart-Lang',
    company: 'Google Summer of Code​',
    description: [
      'Collaborated with the Flutter team at Google and engineered a desktop tool to manage linter rules for Flutter projects.',
      'Performed complex operations on YAML files to modify rules.',
    ],
    year: 'May 2021 - Aug 2021',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(
            text: 'Detailed Work Product',
            url:
                'https://medium.com/flutter/gsoc-21-creating-a-desktop-sample-for-flutter-7d77e74812d6')
      ],
    ),
  ),
  Experience(
    title: 'Developer at Dart-Lang',
    company: 'Google Summer of Code​',
    description: [
      'Worked with the Flutter team at Google and built samples for the ​flutter/samples​ repo on different concepts in Flutter including:\n- Unit, widget, performance, Flutter driver, and state management testing.',
      'Authored a ​codelab​ on different types of testing in Flutter.',
    ],
    year: 'May 2020 - Aug 2020',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(
            text: 'Detailed Work Product',
            url:
                'https://medium.com/flutter/learn-testing-with-the-new-flutter-sample-gsoc20-work-product-e872c7f6492a?source=friends_link&sk=f97ef3fec577750b16fd941452ed8a7e')
      ],
    ),
  ),
];
