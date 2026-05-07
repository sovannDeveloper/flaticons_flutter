part of 'flaticon.dart';

class FlaticonIconData extends IconData {
  const FlaticonIconData(super.codePoint, String fontFamily)
      : super(fontFamily: fontFamily, fontPackage: 'flaticon');
}

class BoldRoundedIcon extends FlaticonIconData {
  const BoldRoundedIcon(int codePoint) : super(codePoint, 'bold-rounded');
}

class BoldStraightIcon extends FlaticonIconData {
  const BoldStraightIcon(int codePoint) : super(codePoint, 'bold-straight');
}

class RegularChubbyIcon extends FlaticonIconData {
  const RegularChubbyIcon(int codePoint) : super(codePoint, 'regular-chubby');
}

class RegularRoundedIcon extends FlaticonIconData {
  const RegularRoundedIcon(int codePoint) : super(codePoint, 'regular-rounded');
}

class RegularStraightIcon extends FlaticonIconData {
  const RegularStraightIcon(int codePoint)
      : super(codePoint, 'regular-straight');
}

class SolidChubbyIcon extends FlaticonIconData {
  const SolidChubbyIcon(int codePoint) : super(codePoint, 'solid-chubby');
}

class SolidRoundedIcon extends FlaticonIconData {
  const SolidRoundedIcon(int codePoint) : super(codePoint, 'solid-rounded');
}

class SolidStraightIcon extends FlaticonIconData {
  const SolidStraightIcon(int codePoint) : super(codePoint, 'solid-straight');
}

class ThinChubbyIcon extends FlaticonIconData {
  const ThinChubbyIcon(int codePoint) : super(codePoint, 'thin-chubby');
}

class ThinRoundedIcon extends FlaticonIconData {
  const ThinRoundedIcon(int codePoint) : super(codePoint, 'thin-rounded');
}

class ThinStraightIcon extends FlaticonIconData {
  const ThinStraightIcon(int codePoint) : super(codePoint, 'thin-straight');
}
