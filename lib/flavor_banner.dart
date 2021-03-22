import 'package:flavorconcept/import_class.dart';

class FlavorBanner extends StatelessWidget {
  FlavorBanner({this.child});

  final Widget child;
  BannerConfig bannerConfig;

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.isProdution()) return child;
    bannerConfig ??= _getDefaultBanner();
    return Stack(
      children: [
        child,
        Positioned(
          top: 200,
          child: _buildBanner(context), )

      ],
    );
  }

  _buildBanner(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: CustomPaint(
        painter: BannerPainter(
          message: bannerConfig.bannerName,
          textDirection: Directionality.of(context),
          layoutDirection: Directionality.of(context),
          location: BannerLocation.topStart,
          color: bannerConfig.bannerColor,
        ),
      ),
    );
  }

  _getDefaultBanner() {
    return BannerConfig(
        bannerName: FlavorConfig.instance.name,
        bannerColor: FlavorConfig.instance.color);
  }
}

class BannerConfig {
  final String bannerName;
  final Color bannerColor;

  BannerConfig(
      {@required String this.bannerName, @required Color this.bannerColor});
}
