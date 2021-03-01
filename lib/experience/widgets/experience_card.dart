import 'package:abd_portfolio/experience/models/experience.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({
    @required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.025),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.025),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 21,
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: experience.title,
                            style: kSecondaryTitleTextStyle.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: '\n${experience.company}',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 10,
                    child: Text(
                      experience.year,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              ...List<Padding>.generate(
                experience.description.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text('- '),
                      ),
                      Expanded(
                        child: Text(
                          '${experience.description[index]}',
                          style: kBodyTextStyle,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (experience.urls != null)
                Column(
                  children: [
                    SizedBox(
                      height: 8.0,
                    ),
                    ...List.generate(
                      experience.urls.length,
                      (index) => InkWell(
                        onTap: () async {
                          if (await canLaunch(experience.urls[0].url)) {
                            await launch(experience.urls[0].url);
                          } else {
                            throw 'Could not launch ${experience.urls[0].url}';
                          }
                        },
                        child: Text(
                          '${experience.urls[0].text}',
                          style: kBodyTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
