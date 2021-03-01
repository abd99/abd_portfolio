import 'package:abd_portfolio/models/custom_url.dart';

import '../models/project.dart';

const List<Project> projectsList = [
  Project(
    title: 'MSBTE Study Guide',
    subTitle: 'Study Resource App',
    description: [
      'Provides study resources for G-Scheme MSBTE Students such as: ',
      '- Cirriculum',
      '- Questions Papers',
      '- Solved Modal Answer Papers',
      '- More than 10K downloads on Google Play Store',
    ],
    year: '2017 - 2019',
    techStack: 'Native Android(Java), Firebase Cloud Storage',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(text: '- More than 10K downloads on the '),
        CustomURL(
          text: 'Google Play Store',
          url:
              'https://play.google.com/store/apps/details?id=com.abdsoft.msbtestudyguide&hl=en_IN',
        ),
      ],
    ),
  ),
  Project(
    title: 'Med-Dose',
    subTitle: ' Medicine Dosage Reminder',
    description: [
      'The app:',
      '- Reminds the user to take medicine based upon the set daily dosage times.',
      '- Rings an optional alarm on the dosage time.',
      '- Keeps a track of the user\'s dosage.',
    ],
    year: '2018 - Present',
    techStack: 'Native Android(Java), SQLite',
  ),
  Project(
    title: 'MyKAAR',
    subTitle: 'IoT based Car Immobilizer System',
    description: [
      'A system that provides the user to control immolizing features for his/her car such as cut-off the ignition, locate the car, etc. using an app.',
    ],
    year: '2017 - 2018',
    techStack: 'Native Android(Java), Arduino, Java Servlet',
  ),
];
