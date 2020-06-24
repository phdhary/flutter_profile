part of 'shared.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.10, 0, size.width * 0.25, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.8,
        size.width * 0.5, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.7, size.height * 0.35, size.width, size.height);
    // path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Wave2Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.65);
    path.lineTo(size.width * 0.15, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.1,
        size.width * 0.35, size.height * 0.4);
    path.quadraticBezierTo(
        size.width * 0.4, size.height * 0.6, size.width * 0.5, size.height * 0.8);
        path.quadraticBezierTo(size.width * 0.6, size.height * 0.1, size.width, size.height);
    // path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
