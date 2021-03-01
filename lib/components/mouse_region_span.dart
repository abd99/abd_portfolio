import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MouseRegionSpan extends WidgetSpan {
  MouseRegionSpan({
    @required InlineSpan inlineSpan,
  }) : super(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text.rich(
              inlineSpan,
            ),
          ),
        );
}
