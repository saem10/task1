import 'package:flutter/material.dart';

class PropertyCategoryBar extends StatelessWidget {
   PropertyCategoryBar({
    super.key,
  });
  final List<String> menuItems = [
    "House",
    "Apartment",
    "Hotel",
    "Villa",
    "Wallpaper",
    "Natural Sound",
    // add more if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        color:  Colors.white, // match your background color
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: menuItems.map((item) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.grey,
                          side: const BorderSide(color: Colors.blueGrey),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(item),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}