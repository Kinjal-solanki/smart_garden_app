import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final double height;
  final VoidCallback callback;

  Carousel({super.key, required this.height, required this.callback});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _index = 0;
  int listCount = 10;

  @override
  Widget build(BuildContext context) {
    return _buildCarousel(context, 0);
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: widget.height,
            child: PageView.builder(
              itemCount: listCount,
              controller: PageController(viewportFraction: 0.8),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (BuildContext context, int itemIndex) {
                return Transform.scale(
                    scale: itemIndex == _index ? 1 : 0.9,
                    child:
                        _buildCarouselItem(context, carouselIndex, itemIndex));
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: 5,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // Align indicators at the center
                  children: _buildPageIndicator()),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: widget.callback,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < listCount; i++) {
      list.add(i == _index ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return SizedBox(
      height: 5,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 5 : 2.0,
        width: isActive ? 20 : 15,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(2.5)),
          boxShadow: [
            isActive
                ? BoxShadow(
                    color: Color(0XFF2FB7B2).withOpacity(0.72),
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                  )
                : const BoxShadow(
                    color: Colors.transparent,
                  )
          ],
          shape: BoxShape.rectangle,
          color: isActive ? const Color(0XFF6BC4C9) : const Color(0XFFEAEAEA),
        ),
      ),
    );
  }
}
