import 'package:flutter/material.dart';

class AnimatedControllerWidget extends StatefulWidget {
  @override
  _AnimatedControllerWidgetState createState() => _AnimatedControllerWidgetState();
}

class _AnimatedControllerWidgetState extends State<AnimatedControllerWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(_animation.value, 0),
                child: Container(
                  width: 115,
                  height: 115,
                  color: Colors.green,
                ),
              );
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_controller.isAnimating) {
                _controller.stop();
              } else {
                _controller.repeat(reverse: true);
              }
            },
            child: Text(_controller.isAnimating ? 'Stop' : 'Start '),
          ),
        ],
      ),
    );
  }
}
