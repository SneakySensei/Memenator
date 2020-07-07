import 'package:flutter/material.dart';

class RotateImage extends StatefulWidget {
  final Widget child;
  final Duration duration;

  RotateImage({this.child, this.duration});

  @override
  _RotateImageState createState() => _RotateImageState();
}

class _RotateImageState extends State<RotateImage> with SingleTickerProviderStateMixin{

  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    
    animationController = new AnimationController(
      vsync: this,
      duration: widget.duration
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: widget.child,
      builder: (BuildContext context, Widget widget) {
        return Transform.rotate(
          angle: animationController.value * 6.3,
          child: widget,
        );
      }
    );
  }
}
