import 'package:abd_portfolio/models/custom_url.dart';

import '../models/experience.dart';

const List<Experience> experienceList = [
  Experience(
    title: 'Flutter Engineer',
    company: 'Freelance',
    description: [
      'Developed an app for iOS and Android from wireframes using the Provider package.',
      'Integrated Google Maps and Firebase Auth.',
      'Configured push-notifications on either platform.',
      'Set up CI/CD pipeline for an automated build.',
      'Deployed the app on ​Google Play Store​ and ​Apple Appstore​.'
    ],
    year: 'Dec 2020 - Feb 2021',
  ),
  Experience(
    title: 'Student Developer at Dart',
    company: 'Google Summer of Code​',
    description: [
      'Collaborated with the Flutter team at Google and built samples for the ​flutter/samples​ repo on different concepts in Flutter including:\n- Unit, widget, performance, Flutter driver, and state management testing.',
      'Authored a ​codelab​ on different types of testing in Flutter.',
    ],
    year: '2018 - Present',
    urls: [
      CustomURL(
          text: 'Detailed Work Product',
          url:
              'https://medium.com/flutter/learn-testing-with-the-new-flutter-sample-gsoc20-work-product-e872c7f6492a?source=friends_link&sk=f97ef3fec577750b16fd941452ed8a7e'),
    ],
  ),
];
