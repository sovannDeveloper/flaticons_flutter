part of 'f_icons.dart';

class FIconData extends IconData {
  const FIconData(super.codePoint, String fontFamily)
      : super(fontFamily: fontFamily, fontPackage: 'f_icons');
}

class BoldRoundedIcon extends FIconData {
  const BoldRoundedIcon(int codePoint) : super(codePoint, 'bold-rounded');
}

class BoldStraightIcon extends FIconData {
  const BoldStraightIcon(int codePoint) : super(codePoint, 'bold-straight');
}

class RegularChubbyIcon extends FIconData {
  const RegularChubbyIcon(int codePoint) : super(codePoint, 'regular-chubby');
}

class RegularRoundedIcon extends FIconData {
  const RegularRoundedIcon(int codePoint) : super(codePoint, 'regular-rounded');
}

class RegularStraightIcon extends FIconData {
  const RegularStraightIcon(int codePoint)
      : super(codePoint, 'regular-straight');
}

class SolidChubbyIcon extends FIconData {
  const SolidChubbyIcon(int codePoint) : super(codePoint, 'solid-chubby');
}

class SolidRoundedIcon extends FIconData {
  const SolidRoundedIcon(int codePoint) : super(codePoint, 'solid-rounded');
}

class SolidStraightIcon extends FIconData {
  const SolidStraightIcon(int codePoint) : super(codePoint, 'solid-straight');
}

class ThinChubbyIcon extends FIconData {
  const ThinChubbyIcon(int codePoint) : super(codePoint, 'thin-chubby');
}

class ThinRoundedIcon extends FIconData {
  const ThinRoundedIcon(int codePoint) : super(codePoint, 'thin-rounded');
}

class ThinStraightIcon extends FIconData {
  const ThinStraightIcon(int codePoint) : super(codePoint, 'thin-straight');
}
