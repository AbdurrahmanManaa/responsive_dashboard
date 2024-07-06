class SizeConfig {
  static const double desktopBreakPoint = 1365;
  static const double tabletBreakPoint = 800;
}

//!The following is not suitable for WEB as it doesn't rebuild UI on width change, better use MediaQuery.

  // static late double width, height;

  // static init(BuildContext context) {
  //   width = MediaQuery.sizeOf(context).width;
  //   height = MediaQuery.sizeOf(context).height;
  // }
