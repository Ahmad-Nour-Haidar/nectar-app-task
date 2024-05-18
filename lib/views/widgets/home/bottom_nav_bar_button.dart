part of 'bottom_nav_bar.dart';

class _BottomNavBarButton extends StatelessWidget {
  const _BottomNavBarButton({
    required this.isSelected,
    required this.barItem,
    required this.onPressed,
  });

  final BottomNavBarItem barItem;
  final bool isSelected;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            barItem.svgPicturePath,
            height: 24,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.primary : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              barItem.label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: isSelected ? AppColors.primary : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
