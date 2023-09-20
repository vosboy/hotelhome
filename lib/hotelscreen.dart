import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final String hotelname, imagePath;

  const HotelScreen({
    super.key,
    required this.hotelname,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              const Positioned(
                bottom: 155,
                left: 305,
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    // 見本icon(星)の中の色が黒で枠は白になってますが、こちらも検索しても解決できず、中が透明の模様にしてます。
                    Icons.star_border,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 297,
                child: Container(
                  height: 37,
                  width: 42,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Center(child: Text('\$40')),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hotelname,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Bouddha, Kathmandu',
                style: TextStyle(fontSize: 13),
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFF4caf51),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFF4caf51),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFF4caf51),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFF4caf51),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFF4caf51),
                  ),
                  Text(
                    '(220 reviews)',
                    style: TextStyle(color: Colors.black45),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
