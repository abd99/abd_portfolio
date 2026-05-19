import 'package:abd_portfolio/models/custom_url.dart';

import '../models/experience.dart';

const List<Experience> experienceList = [
  Experience(
    title: 'Senior Software Engineer - Flutter',
    company: 'Carv',
    description: [
      'Building the Carv Flutter app for iOS, Android, and Web to work with the Carv AI for recruiters.',
      'Played a key role as a founding engineer in scaling Carv to \$7M+ ARR with 250K+ B2B users (~2,500 commits, 250+ PRs over 3.5 years).',
      'Led the migration to Material 3 and Dart 3.',
      'Reduced UI development time by ~50% by leading the creation of a new design system.',
      'Designed and owned the in-person meeting recording pipeline using PCM16 @24 kHz, 512 KB chunked uploads, Hive-backed offline persistence, and connectivity-aware pause/resume.',
      'Shipped customer-facing security & compliance features such as Firebase App Check and workspace-level data-retention controls.',
      'Creating unique and custom widgets using custom painter.',
      'Mentoring engineers on the team and onboarding new members.',
      'Participating in architecture and design decisions to improve the general development experience and app performance.',
    ],
    year: 'Dec 2022 - Present',
  ),
  Experience(
    title: 'Flutter Engineer',
    company: 'Freelance',
    description: [
      'Developed Flutter apps for iOS and Android in engineering teams using agile processes.',
      'Used flutter_bloc, provider, and the riverpod package to manage app state.',
      'Integrated Google Maps, Firebase suite, SQLite, and similar plugins.',
      'Set up CI/CD pipelines for automated builds on app stores.',
    ],
    year: 'Feb 2020 - Dec 2022',
  ),
  Experience(
    title: 'Developer at Dart-Lang',
    company: 'Google Summer of Code',
    description: [
      'Collaborated with the Flutter team at Google to build a macOS desktop tool that lets developers browse, enable, and edit linter rules through an app instead of manually managing multiple analysis_options.yaml files.',
      'Implemented dynamic YAML parsing and in-place rule updates to keep the UI in sync with each project\'s analysis options file.',
      'Shipped the app on the Mac App Store as an official Flutter desktop sample.',
    ],
    year: 'May 2021 - Aug 2021',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(
          text: 'Detailed Work Product',
          url:
              'https://medium.com/flutter/gsoc-21-creating-a-desktop-sample-for-flutter-7d77e74812d6',
        ),
      ],
    ),
  ),
  Experience(
    title: 'Developer at Dart-Lang',
    company: 'Google Summer of Code',
    description: [
      'Worked with the Flutter team at Google to build impactful sample apps for the flutter/samples repo, demonstrating best practices in testing (unit, widget, integration, performance).',
      'Authored the official Flutter testing codelab, adopted by the developer community with 150K+ visits.',
    ],
    year: 'May 2020 - Aug 2020',
    textWithLinks: TextWithLinks(
      textArray: [
        CustomURL(
          text: 'Detailed Work Product',
          url:
              'https://medium.com/flutter/learn-testing-with-the-new-flutter-sample-gsoc20-work-product-e872c7f6492a?source=friends_link&sk=f97ef3fec577750b16fd941452ed8a7e',
        ),
      ],
    ),
  ),
  Experience(
    title: 'Indie Android App Developer',
    company: 'Self-employed',
    description: [
      'Designed, developed, and published native Android apps with 50,000+ downloads.',
      'Handled UI/UX, user feedback, and Play Store optimization end-to-end.',
    ],
    year: 'Jun 2017 - Jan 2020',
  ),
];
