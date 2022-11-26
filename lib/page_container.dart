import 'package:flutter/material.dart';
import 'package:flutter_examples/page_controls.dart';

class PageContainer extends StatefulWidget {
  const PageContainer({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _PageContainerState();
  }
}

class _PageContainerState extends State<PageContainer> {
  final _controller1 = PageController();
  final _controller2 = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _controller1,
            children: [
              Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  'First page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  'Second page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  'Third page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        PageControls(controllers: [
          _controller1,
          _controller2,
        ]),
        Expanded(
          child: PageView(
            controller: _controller2,
            children: [
              Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text(
                  'Fourth page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  'Fifth page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  'Sixth page',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
