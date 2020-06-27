part of 'utils.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){
  var orientation = mediaQuery.orientation;

  double deviceWidth = 0;

  if(orientation == Orientation.landscape){
    deviceWidth = mediaQuery.size.width;
  }
  else{
    deviceWidth = mediaQuery.size.height;
  }
  if(deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }
  else if(deviceWidth > 600){
    return DeviceScreenType.Tablet;
  }
  else{
    return DeviceScreenType.Mobile;
  }
}