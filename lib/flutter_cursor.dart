import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cursor/src/cursors.dart';
import 'package:universal_html/html.dart' as html;

export 'package:flutter_cursor/src/cursors.dart' show Cursor, CursorValues;

/// Custom hover cursor on web.
/// Wrap your child with this widget, and when the cursor enters/lease the widget, it will change the browser cursor.
class HoverCursor extends MouseRegion {
  static final body =
      html.window.document.getElementsByTagName('body')[0] as html.Element;

  HoverCursor({
    Widget child,

    /// Cursor to show when entering hover zone.
    Cursor cursor,

    /// Custom custom that is applied when entering hover zone. Overrides [cursor] when set.
    /// Can be any CSS `cursor` value, included a URL with x/y.
    String customCursor,

    /// Custom to set when exiting hover zone. Setting to empty/`null` will reset.
    String exitCursor,
  }) : super(
          onHover: (PointerHoverEvent evt) {
            body.style.cursor = customCursor ?? CursorValues[cursor];
          },
          onExit: (PointerExitEvent evt) {
            body.style.cursor = exitCursor;
          },
          child: child,
        );
}
