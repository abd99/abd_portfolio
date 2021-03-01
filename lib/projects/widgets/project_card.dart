import 'package:abd_portfolio/projects/models/project.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    @required this.project,
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
                            text: project.title,
                            style: kSecondaryTitleTextStyle.copyWith(
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: ' - ${project.subTitle}',
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
                      project.year,
                      style: kLabelTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              ...List.generate(
                  project.description.length,
                  (index) => Text(
                        project.description[index],
                        style: kBodyTextStyle,
                        textAlign: TextAlign.start,
                      )),
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
                      text: project.techStack,
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
