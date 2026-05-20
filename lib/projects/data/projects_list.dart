import 'package:abd_portfolio/models/custom_url.dart';

import '../models/project.dart';

const _carvScreenshotBaseUrl =
    'https://raw.githubusercontent.com/abd99/abd_portfolio/refs/heads/master/images/screenshots/carv/';

const _carvScreenshotUrls = [
  '${_carvScreenshotBaseUrl}screen1.png',
  '${_carvScreenshotBaseUrl}screen2.png',
  '${_carvScreenshotBaseUrl}screen3.png',
  '${_carvScreenshotBaseUrl}screen4.png',
  '${_carvScreenshotBaseUrl}screen5.png',
  '${_carvScreenshotBaseUrl}screen6.png',
  '${_carvScreenshotBaseUrl}screen7.png',
  '${_carvScreenshotBaseUrl}screen8.png',
  '${_carvScreenshotBaseUrl}screen9.png',
];

const _chumviScreenshotBaseUrl =
    'https://raw.githubusercontent.com/abd99/abd_portfolio/refs/heads/master/images/screenshots/chumvi/';

const _chumviScreenshotUrls = [
  '${_chumviScreenshotBaseUrl}screen2.png',
  '${_chumviScreenshotBaseUrl}screen3.png',
  '${_chumviScreenshotBaseUrl}screen4.png',
  '${_chumviScreenshotBaseUrl}screen5.png',
  '${_chumviScreenshotBaseUrl}screen6.png',
  '${_chumviScreenshotBaseUrl}screen7.png',
  '${_chumviScreenshotBaseUrl}screen8.png',
  '${_chumviScreenshotBaseUrl}screen9.png',
  '${_chumviScreenshotBaseUrl}screen10.png',
];

const List<Project> projectsList = [
  Project(
    title: 'Carv',
    subTitle: 'AI Recruiting Platform',
    description: [
      'Founding-engineer work on Carv’s Flutter app for iOS, Android, and Web - an AI workmate that joins meetings, transcribes conversations, and helps recruiters move faster.',
      '- Meeting library, playback, transcript search, and AI Workmate for summaries and follow-ups.',
      '- Virtual and in-person capture with chunked uploads, Hive offline storage, and resumable recording.',
      '- Candidate profiles, AI-generated outputs, and branded documents on Firebase.',
      '- Led the Material 3 migration and a shared design system used across the product.',
    ],
    year: 'Dec 2022 - Present',
    techStack:
        'Flutter, Riverpod, Firebase, Material 3, go_router, Hive, TypeScript Cloud Functions',
    screenshotUrls: _carvScreenshotUrls,
  ),
  Project(
    title: 'Chumvi',
    subTitle: 'Sodium & Meal Tracking App',
    description: [
      'Flutter app to manage daily salt intake by logging meals and tracking sodium over time.',
      '- Home dashboard with sodium charts and meal breakdowns.',
      '- Meal logging, history views, and educational articles on low-sodium substitutes.',
      '- Onboarding flow and local persistence with SQLite.',
    ],
    year: '2021',
    techStack: 'Flutter, Provider, SQLite, fl_chart, camera',
    screenshotUrls: _chumviScreenshotUrls,
  ),
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
