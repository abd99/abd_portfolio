import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'project_network_screenshot.dart';
import 'screenshot_lightbox_dialog.dart';

class ProjectScreenshots extends StatelessWidget {
  final List<String> urls;

  const ProjectScreenshots({required this.urls});

  void _openLightbox(BuildContext context, int initialIndex) {
    showDialog<void>(
      context: context,
      barrierColor: Colors.black87,
      builder: (dialogContext) {
        return ScreenshotLightboxDialog(urls: urls, initialIndex: initialIndex);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    var screenshotHeight = isSmallScreen ? 240.0 : 300.0;
    var showViewAll = urls.length > 1;

    return SizedBox(
      height: screenshotHeight,
      child: Stack(
        children: <Widget>[
          ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: urls.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.0),
            itemBuilder: (context, index) {
              return _ScreenshotThumbnail(
                url: urls[index],
                height: screenshotHeight,
                onTap: () => _openLightbox(context, index),
              );
            },
          ),
          if (showViewAll)
            Positioned(
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: _ViewAllScreenshotsOverlay(
                height: screenshotHeight,
                onPressed: () => _openLightbox(context, 0),
              ),
            ),
        ],
      ),
    );
  }
}

class _ViewAllScreenshotsOverlay extends StatelessWidget {
  final double height;
  final VoidCallback onPressed;

  const _ViewAllScreenshotsOverlay({
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              color: kActiveCardColor.withValues(alpha: 0.5),
            ),
          ),
          Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: onPressed,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.white,
                        size: 28.0,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'View all',
                        style: kBodyTextStyle.copyWith(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
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
