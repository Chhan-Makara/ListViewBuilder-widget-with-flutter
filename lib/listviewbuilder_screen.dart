import 'package:flutter/material.dart';

class ListviewbuilderScreen extends StatelessWidget {
  ListviewbuilderScreen({super.key});

  List lstImages = [
    "https://m.tourismcambodia.com/img/600_battambang.jpg",
    "https://www.cantravelwilltravel.com/wp-content/uploads/kampot-and-kep-cambodia-durian-roundabout-kampot.jpg",
    "https://www.asiakingtravel.com/cuploads/files/Banteay%20Meanchey%20-%202.jpg",
    "https://champameuanglao.com/wp-content/uploads/2023/08/1-Koh-Song-Saa-copy.jpg",
    "https://i0.wp.com/www.cambodialifestyle.com/wp-content/uploads/2024/04/Svay-Rieng-3.jpg?fit=1023%2C685&ssl=1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "ListviewBuilder widget",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: lstImages.length,
          itemBuilder: (context, index) {
            final img = lstImages[index];
            return Image.network(img);
          }),
    );
  }
}
