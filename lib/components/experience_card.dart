import 'package:flutter/material.dart';

import '../constants.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String company;
  final String year;
  final List<String> description;

  ExperienceCard({
    @required this.title,
    @required this.company,
    @required this.description,
    @required this.year,
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
                            text: title,
                            style: kSecondaryTitleTextStyle.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: '\n$company',
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
                      year,
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
                description.length,
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
                          '${description[index]}',
                          style: kBodyTextStyle,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
