part of './beverage_card.dart';

class _VolumeText extends StatelessWidget {
  const _VolumeText({required this.volume});
  final String volume;
  @override
  Widget build(BuildContext context) {
    bool isSmallVolume = volume.contains('ml');
    TextStyle textStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade600,
    );
    return isSmallVolume
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$volume,',
                style: textStyle,
              ),
              Text(
                'Price',
                style: textStyle,
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$volume, Price',
                style: textStyle,
              ),
            ],
          );
  }
}
