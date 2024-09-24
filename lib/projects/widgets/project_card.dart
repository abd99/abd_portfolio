import 'package:abd_portfolio/components/mouse_region_span.dart';
import 'package:abd_portfolio/projects/models/project.dart';
import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.025),
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
                  SizedBox(
                    width: ResponsiveWidget.isSmallScreen(context) ? 4.0 : 0.0,
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
              if (project.textWithLinks != null)
                Column(
                  children: [
                    SizedBox(
                      height: 16.0,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      strutStyle: StrutStyle(
                        fontFamily: 'GoogleSansRegular',
                      ),
                      text: TextSpan(
                        style: kBodyTextStyle,
                        children: List.generate(
                          project.textWithLinks!.textArray.length,
                          (index) {
                            var textItem =
                                project.textWithLinks!.textArray[index];

                            return MouseRegionSpan(
                              cursor: textItem.url != null
                                  ? SystemMouseCursors.click
                                  : SystemMouseCursors.basic,
                              inlineSpan: TextSpan(
                                text: textItem.text,
                                style: kBodyTextStyle.copyWith(
                                  decoration: textItem.url != null
                                      ? TextDecoration.underline
                                      : null,
                                ),
                                recognizer: textItem.url != null
                                    ? (TapGestureRecognizer()
                                      ..onTap = () async {
                                        if (await canLaunch(textItem.url!)) {
                                          await launch(textItem.url!);
                                        } else {
                                          throw 'Could not launch ${textItem.url}';
                                        }
                                      })
                                    : null,
                              ),
                            );
                            // } else {
                            //   return TextSpan(
                            //     text: textItem.text,
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontFamily: 'GoogleSansRegular',
                            //       fontSize: 18.0,
                            //       height: 1.5,
                            //       letterSpacing: 0.5,
                            //     ),
                            //   );
                            // }
                          },
                        ),
                      ),
                    ),
                  ],
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
                      text: project.techStack,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
