import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectNetworkScreenshot extends StatelessWidget {
  final String url;
  final BoxFit fit;
  final double? height;

  const ProjectNetworkScreenshot({
    required this.url,
    required this.fit,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: height,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return _ScreenshotLoadingIndicator(
          height: height,
          loadingProgress: loadingProgress,
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return _ScreenshotErrorIndicator(height: height);
      },
    );
  }
}

class _ScreenshotLoadingIndicator extends StatelessWidget {
  final double? height;
  final ImageChunkEvent loadingProgress;

  const _ScreenshotLoadingIndicator({
    required this.height,
    required this.loadingProgress,
  });

  @override
  Widget build(BuildContext context) {
    var indicator = CircularProgressIndicator(
      value: loadingProgress.expectedTotalBytes != null
          ? loadingProgress.cumulativeBytesLoaded /
              loadingProgress.expectedTotalBytes!
          : null,
      color: kButtonColor,
    );

    if (height == null) {
      return Center(child: indicator);
    }

    return _ScreenshotPlaceholder(
      height: height!,
      child: Center(child: indicator),
    );
  }
}

class _ScreenshotErrorIndicator extends StatelessWidget {
  final double? height;

  const _ScreenshotErrorIndicator({required this.height});

  @override
  Widget build(BuildContext context) {
    var icon = Icon(
      Icons.broken_image_outlined,
      color: kLabelTextStyle.color,
      size: height == null ? 48.0 : null,
    );

    if (height == null) {
      return Center(child: icon);
    }

    return _ScreenshotPlaceholder(
      height: height!,
      child: icon,
    );
  }
}

class _ScreenshotPlaceholder extends StatelessWidget {
  final double height;
  final Widget child;

  const _ScreenshotPlaceholder({
    required this.height,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: height * 0.46,
      child: ColoredBox(
        color: kActiveCardColor,
        child: child,
      ),
    );
  }
}
