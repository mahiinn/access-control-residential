import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required PageController pageController,
    required NotchBottomBarController controller,
  })  : _pageController = pageController,
        _controller = controller;

  final PageController _pageController;
  final NotchBottomBarController _controller;
  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
      notchBottomBarController: _controller,
      color: Colors.white,
      showLabel: false,
      notchColor: Colors.blue,
      removeMargins: false,
      bottomBarWidth: 500,
      durationInMilliSeconds: 300,
      bottomBarItems: const [
        BottomBarItem(
          inActiveItem: Icon(
            Icons.groups,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            Icons.groups,
            color: Colors.white,
          ),
          itemLabel: 'Page 1',
        ),
        BottomBarItem(
          inActiveItem: Icon(
            Icons.qr_code_scanner,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
          ),
          itemLabel: 'Page 1',
        ),
        BottomBarItem(
          inActiveItem: Icon(
            Icons.settings_rounded,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            Icons.settings_rounded,
            color: Colors.white,
          ),
          itemLabel: 'Page 3',
        ),
      ],
      onTap: (index) {
        /// perform action on tab change and to update pages you can update pages without pages
        _pageController.jumpToPage(index);
      },
    );
  }
}
