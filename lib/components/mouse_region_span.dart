import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MouseRegionSpan extends WidgetSpan {
  MouseRegionSpan({
    @required InlineSpan inlineSpan,
    @required MouseCursor cursor,
  }) : super(
          child: MouseRegion(
            cursor: cursor,
            child: Text.rich(
              inlineSpan,
            ),
          ),
        );
}
