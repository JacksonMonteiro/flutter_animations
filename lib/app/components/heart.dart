import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  bool isFavorite = false;
  
  late AnimationController _animationController;
  late Animation _colorAnimation;
  
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(_animationController);


    _animationController.addListener(() {
      
    });

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFavorite = true;
        });
      } 

      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFavorite = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: 30,
          ),
          onPressed: () {
            isFavorite ? _animationController.reverse() : _animationController.forward();
          },
        );
      },
    );
  }
}
