import 'package:flutter/material.dart';

class PageControls extends StatelessWidget {
  final List<PageController> controllers;
  const PageControls({
    Key? key,
    required this.controllers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            openPage(controllers.first.page!.toInt() - 1);
          },
          icon: const Icon(Icons.arrow_left),
        ),
        Expanded(
          child: Center(
            child: AnimatedBuilder(
              animation: controllers.first,
              builder: (context, child) {
                return Text('Current page: ${controllers.first.page}');
              },
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            openPage(controllers.first.page!.toInt() + 1);
          },
          icon: const Icon(Icons.arrow_right),
        ),
      ],
    );
  }

  void openPage(int page) {
    for (final controller in controllers) {
      controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInCubic,
      );
    }
  }
}
