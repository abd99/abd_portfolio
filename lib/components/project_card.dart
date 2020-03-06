import 'package:flutter/material.dart';

import '../constants.dart';
import 'reusable_card.dart';

class ProjectCard extends StatelessWidget {
  final String projectTitle;
  String subTitle;
  final String year;
  final String projectDescription;
  final String techStack;

  ProjectCard({
    @required this.projectTitle,
    @required this.subTitle,
    @required this.projectDescription,
    @required this.year,
    @required this.techStack,
  });

  @override
  Widget build(BuildContext context) {
    if (subTitle.isNotEmpty) {
      subTitle = ' - $subTitle';
    }
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.025),
      child: ReusableCard(
        customColor: kActiveCardColor,
        cardChild: Padding(
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
                            text: projectTitle,
                            style: kSecondaryTitleTextStyle.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: subTitle,
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
              Text(
                projectDescription,
                style: kBodyTextStyle,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 16.0,
              ),

              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Tech Stack: ',
                      style: kBodyTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: techStack,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              )
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: <Widget>[
              //     Text(
              //       'Tech Stack: ',
              //       style: kBodyTextStyle.copyWith(fontWeight: FontWeight.bold),
              //       textAlign: TextAlign.start,
              //     ),
              //     Flexible(
              //       child: Text(
              //         techStack,
              //         style: kBodyTextStyle,
              //         textAlign: TextAlign.start,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
