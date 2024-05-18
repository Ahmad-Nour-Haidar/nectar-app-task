part of '../beverages_view.dart';

class _BeverageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _BeverageAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          // todo
          GoRouter.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
      title: const Text(
        'Beverages',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AddButtonSVG(onPressed: () {}, size: 30),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
