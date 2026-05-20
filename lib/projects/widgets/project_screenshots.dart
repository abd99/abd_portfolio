import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'project_network_screenshot.dart';
import 'screenshot_lightbox_dialog.dart';

class ProjectScreenshots extends StatelessWidget {
  final List<String> urls;

  const ProjectScreenshots({required this.urls});

  @override
  Widget build(BuildContext context) {
    var isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    var screenshotHeight = isSmallScreen ? 240.0 : 300.0;

    return SizedBox(
      height: screenshotHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: urls.length,
        separatorBuilder: (context, index) => SizedBox(width: 12.0),
        itemBuilder: (context, index) {
          return _ScreenshotThumbnail(
            url: urls[index],
            height: screenshotHeight,
            onTap: () {
              showDialog<void>(
                context: context,
                barrierColor: Colors.black87,
                builder: (dialogContext) {
                  return ScreenshotLightboxDialog(
                    urls: urls,
                    initialIndex: index,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _ScreenshotThumbnail extends StatelessWidget {
  final String url;
  final double height;
  final VoidCallback onTap;

  const _ScreenshotThumbnail({
    required this.url,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: kActiveCardColor, width: 2.0),
            ),
            child: ProjectNetworkScreenshot(
              url: url,
              height: height,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
