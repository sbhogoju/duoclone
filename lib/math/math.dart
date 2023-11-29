import 'package:duoclone/home/widgets/advanced_math.dart';
import 'package:duoclone/home/widgets/basic_math.dart';
import 'package:flutter/material.dart';

class MathCourse extends StatefulWidget {
  @override
  _MathCourseState createState() => _MathCourseState();
}

class _MathCourseState extends State<MathCourse> {
  final List<Color> colors = [
    const Color.fromRGBO(78, 172, 136, 1),
    const Color.fromRGBO(236, 110, 187, 1)
  ];
  late PageController _pageController;
  double _scrollPosition = 0.0;
  Color backgroundColor = Colors.green;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.9,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 2,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            )),
        title: Text(
          'Math Course',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          final color = Color.lerp(
            colors[0],
            colors[1],
            _scrollPosition / MediaQuery.of(context).size.width,
          );
          setState(() {
            _scrollPosition = notification.metrics.pixels;
            if (color != null) {
              backgroundColor = color;
            }
          });
          return false;
        },
        child: PageView.builder(
          controller: _pageController,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return [const BeginnerMath(), const AdvancedMath()][index];
          },
        ),
      ),
    );
  }
}
