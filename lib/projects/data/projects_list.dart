import 'package:abd_portfolio/models/custom_url.dart';

import '../models/project.dart';

const List<Project> projectsList = [
  Project(
    title: 'YesPls Marketplace',
    subTitle: 'Shopping App for the Lao Region',
    description: [
      'Lead contributor in rebuilding the #1 shopping app in the Lao region.',
      '- 30,000+ downloads on the app stores.',
      '- Re-architected the app for scalability and performance.',
    ],
    year: 'Oct 2021 - May 2022',
    techStack: 'Flutter, Firebase, REST APIs',
  ),
  Project(
    title: 'MSBTE Study Guide',
    subTitle: 'Study Resource App',
    description: [
      'Developed a study resource app that offers exam preparation resources for G-Scheme MSBTE students such as:',
      '- Curriculum',
      '- Question Papers',
      '- Solved Model Answer Papers',
    ],
    year: 'Jan 2018 - Mar 2018',
    techStack: 'Native Android (Java), Firebase Cloud Storage',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(text: '- 20,000+ downloads on the '),
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
    subTitle: 'Medicine Dosage Reminder',
    description: [
      'The app:',
      '- Reminds the user to take medicine based upon the set daily dosage times.',
      '- Rings an optional alarm on the dosage time.',
      '- Keeps a track of the user\'s dosage.',
    ],
    year: '2018',
    techStack: 'Native Android (Java), SQLite',
  ),
  Project(
    title: 'MyKAAR',
    subTitle: 'IoT-based Car Immobilizer System',
    description: [
      'A system that lets the user control immobilizing features for their car such as cutting-off the ignition, locating the car, etc. through a companion app.',
    ],
    year: '2017 - 2018',
    techStack: 'Native Android (Java), Arduino, Java Servlet',
  ),
];
