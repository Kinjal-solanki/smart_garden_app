import 'package:flutter/material.dart';
import 'package:smart_garden_app/AppWidgets/carousel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Carousel(height: 200, callback: (){}),
                      Positioned(bottom: 5, left: 70, right: 70,child: buildTransparentCard(context),)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  //_buildGrid(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _getFirstItemRow(),
                        _getSecondItemRow(),
                        _getThirdItemRow()
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Card buildTransparentCard(BuildContext context) {
    return Card(
      elevation: 1.0, // Remove card's elevation to make it flat
      color: Colors.white, // Set the card's color to transparent
      child: Container(
        height: 80,width: 200,
        padding: EdgeInsets.all(16), // Adjust padding as needed
        decoration: BoxDecoration(
          color: Colors.white, // Set the color of the content container
          borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upstairs pod',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ), Text("ID:1344567890", style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGrid() {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.cyan,// Constrain the height of the container
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3, // Total number of items in the grid (3x3)
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          childAspectRatio: 1.0
        ),
        itemBuilder: (BuildContext context, int index) {
          return _buildGridItem(index);
        },
      ),
    );
  }

  Widget _buildGridItem(int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(8),
      child: Center(
        child: Text(
          'Item $index',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _getFirstItemRow() {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 3,
      child: GridView.builder(
        padding: const EdgeInsets.only(left: 16, right: 8),
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0, // Aspect ratio to make the items square
        ),
        itemBuilder: (BuildContext context, int index) {
          return _getItemCard();
        },
      ),
    );
  }

  Widget _getSecondItemRow() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 8),
      height: MediaQuery.of(context).size.width/3,
      child: Row(
        children: [
          _getItemCard(),
          Expanded(child: _getItemCard())
        ],
      ),
    );
  }

  Widget _getThirdItemRow() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 8, top: 8),
      height: MediaQuery.of(context).size.width/3,
      child: Row(
        children: [
          Expanded(
              child: _getItemCard()
          ),
          _getItemCard(),
        ],
      ),
    );
  }

  Widget _getItemCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(right: 8),
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 3,
      child: const Center(
        child: Text(
          'Item',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}