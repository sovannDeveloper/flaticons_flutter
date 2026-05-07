# Flaticon Flutter

Flutter `IconData` constants generated from the Flaticon CSS font files in `assets/css`.

This package currently exposes 49,709 icons across 11 CSS font styles.

## Import

```dart
import 'package:flaticon/flaticon.dart';
```

## Usage

Use the Dart class that matches the CSS prefix:

```dart
// CSS: fi-br-access-control
Icon(Br.access_control);

// CSS: fi-rs-arrow-right
Icon(Rs.arrow_right);

// CSS: fi-sr-book
Icon(Sr.book, size: 32);
```

Dart identifiers cannot contain hyphens or start with a number, so CSS names are converted like this:

- `fi-rs-arrow-right` -> `Rs.arrow_right`
- `fi-br-360-degrees` -> `Br.i_360_degrees`
- `fi-ss-00s-music-disc` -> `Ss.i_00s_music_disc`

Compatibility aliases are also available through `FlatIcon`, for example `FlatIcon.rs_arrow_right` and `FlatIcon.br_access_control`.

## Icon Files

| CSS file | CSS prefix | Dart file | Dart class | Icons |
| --- | --- | --- | --- | ---: |
| `assets/css/bold-rounded.css` | `fi-br-` | `lib/icons/br.dart` | `Br` | 5,050 |
| `assets/css/bold-straight.css` | `fi-bs-` | `lib/icons/bs.dart` | `Bs` | 5,063 |
| `assets/css/regular-chubby.css` | `fi-rc-` | `lib/icons/rc.dart` | `Rc` | 3,093 |
| `assets/css/regular-rounded.css` | `fi-rr-` | `lib/icons/rr.dart` | `Rr` | 5,047 |
| `assets/css/regular-straight.css` | `fi-rs-` | `lib/icons/rs.dart` | `Rs` | 5,063 |
| `assets/css/solid-chubby.css` | `fi-sc-` | `lib/icons/sc.dart` | `Sc` | 3,087 |
| `assets/css/solid-rounded.css` | `fi-sr-` | `lib/icons/sr.dart` | `Sr` | 5,059 |
| `assets/css/solid-straight.css` | `fi-ss-` | `lib/icons/ss.dart` | `Ss` | 5,059 |
| `assets/css/thin-chubby.css` | `fi-tc-` | `lib/icons/tc.dart` | `Tc` | 3,087 |
| `assets/css/thin-rounded.css` | `fi-tr-` | `lib/icons/tr.dart` | `Tr` | 5,040 |
| `assets/css/thin-straight.css` | `fi-ts-` | `lib/icons/ts.dart` | `Ts` | 5,061 |
