import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';

//toggle
List<DepToggleType?> depToggleTypeOptions = [
  DepToggleType.ios,
  DepToggleType.android,
  DepToggleType.square,
];

String getDepToggleTypeLabel(DepToggleType? value) {
  switch (value) {
    case DepToggleType.ios:
      return 'IOS';
    case DepToggleType.android:
      return 'Android';
    case DepToggleType.square:
      return 'Square';
    default:
      return 'Android';
  }
}
//end of toggle

//DepLoaderType
List<DepLoaderType> depLoaderTypeOptions = [
  DepLoaderType.ios,
  DepLoaderType.android,
  DepLoaderType.square,
  DepLoaderType.circle
];

String getDepLoaderTypeLabel(DepLoaderType? value) {
  switch (value) {
    case DepLoaderType.ios:
      return 'IOS';
    case DepLoaderType.android:
      return 'Android';
    case DepLoaderType.square:
      return 'Square';
    case DepLoaderType.circle:
      return 'Circle';
    default:
      return 'Android';
  }
}
//end of toggle

//DepButtonShape
List<DepButtonShape> depButtonShapeeOptions = [
  DepButtonShape.pills,
  DepButtonShape.standard,
  DepButtonShape.square,
];

String getDepButtonShapeTypeLabel(DepButtonShape? value) {
  switch (value) {
    case DepButtonShape.pills:
      return 'Pills';
    case DepButtonShape.square:
      return 'Square';
    case DepButtonShape.standard:
      return 'Standard';
    default:
      return 'Pills';
  }
}
//end of DepButtonShape

//DepButtonShape
List<DepRadioType> depRadioTypeOptions = [
  DepRadioType.basic,
  DepRadioType.blunt,
  DepRadioType.square,
];

String getDepRadioTypeLabel(DepRadioType? value) {
  switch (value) {
    case DepRadioType.basic:
      return 'Basic';
    case DepRadioType.square:
      return 'Square';
    case DepRadioType.blunt:
      return 'Blunt';
    default:
      return 'Basic';
  }
}
//end of DepButtonShape

//DepCheckboxType
List<DepCheckboxType> depCheckboxTypeOptions = [
  DepCheckboxType.basic,
  DepCheckboxType.circle,
  DepCheckboxType.square,
];

String getDepCheckboxTypeLabel(DepCheckboxType? value) {
  switch (value) {
    case DepCheckboxType.basic:
      return 'Basic';
    case DepCheckboxType.circle:
      return 'Circle';
    case DepCheckboxType.square:
      return 'square';
    default:
      return 'Basic';
  }
}
//end of DepCheckboxType

//DepButtonType
List<DepButtonType> depButtonTypeTypeOptions = [
  DepButtonType.solid,
  DepButtonType.outline,
  DepButtonType.outline2x,
  DepButtonType.transparent,
];

String getDepButtonTypeTypeLabel(DepButtonType? value) {
  switch (value) {
    case DepButtonType.solid:
      return 'Solid';
    case DepButtonType.outline:
      return 'Outline';
    case DepButtonType.outline2x:
      return 'Outline2x';
    case DepButtonType.transparent:
      return 'Transparent';
    default:
      return 'Solid';
  }
}
//end of toggle

//DepSize
List<double> depSizeTypeOptions = [
  DepSize.small,
  DepSize.medium,
  DepSize.large,
];

String getDepSizeTypeLabel(double value) {
  if (value == DepSize.small) {
    return 'Small';
  } else if (value == DepSize.medium) {
    return 'Medium';
  } else if (value == DepSize.large) {
    return 'Large';
  } else {
    return 'Small';
  }
}
//end of toggle

//avatar shapes
List<AvatarShape> depAvatarShapeOptions = [
  AvatarShape.circle,
  AvatarShape.standard,
  AvatarShape.square,
];

String getAvatarShapeLabel(AvatarShape? value) {
  switch (value) {
    case AvatarShape.circle:
      return 'Circle';
    case AvatarShape.standard:
      return 'Standard';
    case AvatarShape.square:
      return 'Square';
    default:
      return 'Circle';
  }
}
//end of avatar shapes

//solid colors
List<Color?> solidColorOptions = [
  cyan700,
  green700,
  orange700,
  red700,
  blue700,
  gray700
];

String getSolidColorLabel(Color? value) {
  if (value == cyan700) {
    return 'cyan700';
  } else if (value == green700) {
    return 'green700';
  } else if (value == orange700) {
    return 'orange700';
  } else if (value == red700) {
    return 'red700';
  } else if (value == red700) {
    return 'red700';
  } else if (value == blue700) {
    return 'blue700';
  } else if (value == gray700) {
    return 'gray700';
  } else {
    return 'cyan700';
  }
}
//end of solid

//subtile colors
List<Color?> subtleColorOptions = [
  cyan200,
  green200,
  orange200,
  red200,
  blue200,
  gray200
];

String getSubtleColorLabel(Color? value) {
  if (value == cyan200) {
    return 'cyan200';
  } else if (value == green200) {
    return 'green200';
  } else if (value == orange200) {
    return 'orange200';
  } else if (value == red200) {
    return 'red200';
  } else if (value == red200) {
    return 'red200';
  } else if (value == blue200) {
    return 'blue200';
  } else if (value == gray200) {
    return 'gray200';
  } else {
    return 'cyan200';
  }
}
//end of subtile

//green colors
List<Color?> greenColorOptions = [
  green400,
  green500,
  green600,
  green700,
  green800,
];

String getGreenColorLabel(Color? value) {
  if (value == green400) {
    return 'green400';
  } else if (value == green500) {
    return 'green500';
  } else if (value == green600) {
    return 'green600';
  } else if (value == green700) {
    return 'green700';
  } else if (value == green800) {
    return 'green800';
  } else {
    return 'green400';
  }
}
//end of green

//cyan colors
List<Color?> cyanColorOptions = [
  cyan400,
  cyan500,
  cyan600,
  cyan700,
  cyan800,
];

String getCyanColorLabel(Color? value) {
  if (value == cyan400) {
    return 'cyan400';
  } else if (value == cyan500) {
    return 'cyan500';
  } else if (value == cyan600) {
    return 'cyan600';
  } else if (value == cyan700) {
    return 'cyan700';
  } else if (value == cyan800) {
    return 'cyan800';
  } else {
    return 'cyan400';
  }
}
//end of cyan

//orange colors
List<Color?> orangeColorOptions = [
  orange400,
  orange500,
  orange600,
  orange700,
  orange800,
];

String getOrangeColorLabel(Color? value) {
  if (value == orange400) {
    return 'orange400';
  } else if (value == orange500) {
    return 'orange500';
  } else if (value == orange600) {
    return 'orange600';
  } else if (value == orange700) {
    return 'orange700';
  } else if (value == orange800) {
    return 'orange800';
  } else {
    return 'orange400';
  }
}
//end of orange

//red colors
List<Color?> redColorOptions = [
  red400,
  red500,
  red600,
  red700,
  red800,
];

String getRedColorLabel(Color? value) {
  if (value == red400) {
    return 'red400';
  } else if (value == red500) {
    return 'red500';
  } else if (value == red600) {
    return 'red600';
  } else if (value == red700) {
    return 'red700';
  } else if (value == red800) {
    return 'red800';
  } else {
    return 'red400';
  }
}
//end of red

//blue colors
List<Color?> blueColorOptions = [
  blue400,
  blue500,
  blue600,
  blue700,
  blue800,
];

String getBlueColorLabel(Color? value) {
  if (value == blue400) {
    return 'blue400';
  } else if (value == blue500) {
    return 'blue500';
  } else if (value == blue600) {
    return 'blue600';
  } else if (value == blue700) {
    return 'blue700';
  } else if (value == blue800) {
    return 'blue800';
  } else {
    return 'blue400';
  }
}
//end of blue

//blue colors
List<Color?> grayColorOptions = [
  gray400,
  gray500,
  gray600,
  gray700,
];

String getGrayColorLabel(Color? value) {
  if (value == gray400) {
    return 'gray400';
  } else if (value == gray500) {
    return 'gray500';
  } else if (value == gray600) {
    return 'gray600';
  } else if (value == gray700) {
    return 'gray700';
  } else {
    return 'gray400';
  }
}
//end of gray

//invincibleButton colors
List<Color?> invincibleButtonColorOptions = [
  transparent,
  white,
];

String getInvincibleButtonColorLabel(Color? value) {
  if (value == transparent) {
    return 'Transparent';
  } else if (value == white) {
    return 'White';
  } else {
    return 'Transparent';
  }
}
//end of invincibleButton

//outlineButton colors
List<Color?> outlineButtonColorOptions = [transparent, white, secondaryColor];

String getOutlineButtonColorLabel(Color? value) {
  if (value == transparent) {
    return 'Transparent';
  } else if (value == white) {
    return 'White';
  } else if (value == secondaryColor) {
    return 'Secondary Color';
  } else {
    return 'Transparent';
  }
}
//end of invincibleButton

//checkLabel colors
List<Color> checkLabelColorOptions = [redColor, secondaryColor, greenColor];

String getcheckLabelColorLabel(Color? value) {
  if (value == redColor) {
    return 'Red Color';
  } else if (value == secondaryColor) {
    return 'Secondary Color';
  } else if (value == greenColor) {
    return 'Green Color';
  } else {
    return 'Red Color';
  }
}
//end of checkLabel

//overlayImage colors
List<Color> overlayImageColorOptions = [red500, blue500, green500];

String getoverlayImageColorLabel(Color? value) {
  if (value == red500) {
    return 'red500r';
  } else if (value == blue500) {
    return 'blue500';
  } else if (value == greenColor) {
    return 'green500';
  } else {
    return 'green500';
  }
}
//end of overlayImage

//overlayImage colors
List<Color> cardColorOptions = [gray700, white, gray200];

String getCardColorLabel(Color? value) {
  if (value == gray700) {
    return 'gray700';
  } else if (value == white) {
    return 'white';
  } else if (value == gray200) {
    return 'gray200';
  } else {
    return 'green500';
  }
}
//end of overlayImage

List<Alignment> alignmentList = [
  Alignment.topCenter,
  Alignment.topLeft,
  Alignment.topRight,
  Alignment.center,
  Alignment.centerLeft,
  Alignment.centerRight,
  Alignment.bottomCenter,
  Alignment.bottomLeft,
  Alignment.bottomRight,
];

String getAlignmentListLabel(AlignmentGeometry? value) {
  if (value == Alignment.topCenter) {
    return 'Top-center';
  } else if (value == Alignment.topLeft) {
    return 'Top-left';
  } else if (value == Alignment.topRight) {
    return 'Top-right';
  } else if (value == Alignment.center) {
    return 'Center';
  } else if (value == Alignment.centerLeft) {
    return 'Center-left';
  } else if (value == Alignment.centerRight) {
    return 'Center-right';
  } else if (value == Alignment.bottomCenter) {
    return 'Bottom-center';
  } else if (value == Alignment.bottomLeft) {
    return 'Bottom-left';
  } else if (value == Alignment.bottomRight) {
    return 'Bottom-right';
  } else {
    return 'Top-cente';
  }
}

List<Image> cardImages = [
  const Image(image: AssetImage("assets/images/masterCard.png")),
  const Image(image: AssetImage("assets/images/visaCard.png")),
  const Image(image: AssetImage("assets/images/expressCard.png")),
  const Image(image: AssetImage("assets/images/jcbCard.png")),
  const Image(image: AssetImage("assets/images/verveCard.png"))
];

String getcardImagesLabel(Image value) {
  if (value == const Image(image: AssetImage("assets/images/masterCard.png"))) {
    return 'Master Card';
  } else if (value ==
      const Image(image: AssetImage("assets/images/visaCard.png"))) {
    return 'Visa Card';
  } else if (value ==
      const Image(image: AssetImage("assets/images/expressCard.png"))) {
    return 'American Express Card';
  } else if (value ==
      const Image(image: AssetImage("assets/images/jcbCard.png"))) {
    return 'JCB Card';
  } else if (value ==
      const Image(image: AssetImage("assets/images/verveCard.png"))) {
    return 'Verve Card';
  } else {
    return 'Master Card';
  }
}

List<Image> brandImages = [
  const Image(image: AssetImage("assets/images/brandlogo.png")),
  const Image(image: AssetImage("assets/images/nfinit.png")),
  const Image(image: AssetImage("assets/images/myfrsh.png"))
];

String getBrandLabel(Image value) {
  if (value == const Image(image: AssetImage("assets/images/brandlogo.png"))) {
    return 'Default';
  } else if (value ==
      const Image(image: AssetImage("assets/images/nfinit.png"))) {
    return 'NFINIT';
  } else if (value ==
      const Image(image: AssetImage("assets/images/myfrsh.png"))) {
    return 'FRSH';
  } else {
    return 'Default';
  }
}
