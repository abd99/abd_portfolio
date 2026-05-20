import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants.dart';
import 'project_network_screenshot.dart';

class ScreenshotLightboxDialog extends StatefulWidget {
  final List<String> urls;
  final int initialIndex;

  const ScreenshotLightboxDialog({
    required this.urls,
    required this.initialIndex,
  });

  @override
  State<ScreenshotLightboxDialog> createState() =>
      _ScreenshotLightboxDialogState();
}

class _ScreenshotLightboxDialogState extends State<ScreenshotLightboxDialog> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  void _showPrevious() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  void _showNext() {
    if (_currentIndex < widget.urls.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var url = widget.urls[_currentIndex];
    var hasPrevious = _currentIndex > 0;
    var hasNext = _currentIndex < widget.urls.length - 1;

    return Shortcuts(
      shortcuts: <ShortcutActivator, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowLeft):
            const _PreviousScreenshotIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowRight):
            const _NextScreenshotIntent(),
      },
      child: Actions(
        actions: <Type, Action<Intent>>{
          _PreviousScreenshotIntent: CallbackAction(
            onInvoke: (intent) {
              _showPrevious();
              return null;
            },
          ),
          _NextScreenshotIntent: CallbackAction(
            onInvoke: (intent) {
              _showNext();
              return null;
            },
          ),
        },
        child: Focus(
          autofocus: true,
          child: Dialog(
            backgroundColor: Colors.black.withValues(alpha: 0.5),
            insetPadding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.05,
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 24.0),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: size.width * 0.9,
                        height: size.height * 0.8,
                        child: InteractiveViewer(
                          key: ValueKey<String>(url),
                          minScale: 0.5,
                          maxScale: 4.0,
                          child: ProjectNetworkScreenshot(
                            url: url,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '${_currentIndex + 1} / ${widget.urls.length}',
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                if (hasPrevious)
                  Positioned(
                    left: 8.0,
                    top: 0.0,
                    bottom: 0.0,
                    child: Center(
                      child: _LightboxNavButton(
                        icon: Icons.chevron_left,
                        onPressed: _showPrevious,
                      ),
                    ),
                  ),
                if (hasNext)
                  Positioned(
                    right: 8.0,
                    top: 0.0,
                    bottom: 0.0,
                    child: Center(
                      child: _LightboxNavButton(
                        icon: Icons.chevron_right,
                        onPressed: _showNext,
                      ),
                    ),
                  ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LightboxNavButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _LightboxNavButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kActiveCardColor,
      shape: CircleBorder(),
      child: IconButton(
        icon: Icon(icon, color: Colors.white, size: 32.0),
        onPressed: onPressed,
      ),
    );
  }
}

class _PreviousScreenshotIntent extends Intent {
  const _PreviousScreenshotIntent();
}

class _NextScreenshotIntent extends Intent {
  const _NextScreenshotIntent();
}
