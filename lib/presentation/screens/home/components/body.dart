import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required PageController pageController,
    required List<Widget> bottomBarPages,
  })  : _pageController = pageController,
        _bottomBarPages = bottomBarPages;

  final PageController _pageController;
  final List<Widget> _bottomBarPages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              _bottomBarPages.length, (index) => _bottomBarPages[index]),
        ),
        extendBody: true);
  }
}
