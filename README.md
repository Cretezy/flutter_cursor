# flutter_cursor [![pub package](https://img.shields.io/pub/v/flutter_cursor.svg)](https://pub.dev/packages/flutter_cursor)

## Important Note

Flutter has integrated this package [inside the core SDK](https://github.com/flutter/flutter/pull/59883)! Update to Flutter 1.20+ and use `MouseRegion`!

## Original

Custom cursor support for Flutter Web.

Wrap your widgets with `HoverCursor` and pass a cursor, and it will be updated when entering/leaving the hover zone.

[Pub](https://pub.dev/packages/flutter_cursor) - [API Docs](https://pub.dev/documentation/flutter_cursor/latest/) - [GitHub](https://github.com/Cretezy/flutter_cursor)

![](https://i.imgur.com/3taZC6C.png)

## Install

Install by adding this package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_cursor: ^0.1.3
```

## Usage 

See [Flutter example](https://github.com/Cretezy/flutter_cursor/blob/master/example/flutter_cursor_example.dart) for a full overview.

### `HoverCursor`

Changes cursor when entering/leaving the widget's hover zone on the web. This is safe to add on mobile (will have no effect).

```dart
import 'package:flutter_cursor/flutter_cursor.dart';

HoverCursor(
    cursor: Cursor.move,
    child: RaisedButton(
      child: Text("Move Cursor"),
    ),
)
```

### Cursors

The `Cursor` enum has all the possible CSS `cursor` values.

You may also pass a `customCursor` argument to set a custom cursor (such as a URL), this will be passed directly to `cursor`.

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/Cretezy/flutter_cursor/issues).
