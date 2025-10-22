import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> houses = [
      {
        "image": "assets/images/house1.jpg",
        "title": "Dreamsville House",
        "location": "Jl. Sultan Iskandar Muda",
        "distance": "1.8 km",
      },
      {
        "image": "assets/images/house2.jpg",
        "title": "Ascot House",
        "location": "Jl. Cilandak Tengah",
        "distance": "2.5 km",
      },
      {
        "image": "assets/images/house3.jpg",
        "title": "Emerald Villa",
        "location": "Jl. Raya Pondok Indah",
        "distance": "3.2 km",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Section Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Near from you",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "See more",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),

        /// Horizontal Property List
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: houses.length,
            itemBuilder: (context, index) {
              final house = houses[index];

              return Container(
                margin: const EdgeInsets.only(right: 16),
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(house["image"]!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    ///Distance Badge
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on,
                                size: 14, color: Colors.white),
                            const SizedBox(width: 4),
                            Text(
                              house["distance"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///Gradient Overlay + Info
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.6),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              house["title"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              house["location"]!,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
