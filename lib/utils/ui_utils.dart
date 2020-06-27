part of 'utils.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }
  if (deviceWidth < 600) {
    return DeviceScreenType.Mobile;
  }
  return DeviceScreenType.Mobile;
}
