import 'package:flutter/material.dart';
import 'package:hotelhome/hotelscreen.dart';
import 'package:hotelhome/icon_widget.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe0e0e0),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            toolbarHeight: 160,
            backgroundColor: const Color(0xFF06bcd4),
            leading: const IconButton(
              //uiでも作動はしてないのでnullにしてます。
              onPressed: null,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            actions: const [
              IconButton(
                //uiでも作動はしてないのでnullにしてます。
                onPressed: null,
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Type your Location',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    child: TextField(
                      cursorColor: Colors.red,
                      decoration: InputDecoration(
                          //見本はタッチし、アイコンの色が変わりますが、できず、タッチ後の色にしてます。
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.red,
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: "Bouddha,kathmandu"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 9, right: 10, left: 22),
              child: SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconWidget(
                      purposecolor: Color(0xFFe91e63),
                      purposeicon: Icons.hotel,
                      purpose: 'Hotel',
                    ),
                    IconWidget(
                      purposecolor: Color(0xff2096f3),
                      purposeicon: Icons.restaurant,
                      purpose: 'Restaurant',
                    ),
                    IconWidget(
                      purposecolor: Color(0xFFff9800),
                      purposeicon: Icons.local_cafe_rounded,
                      purpose: 'Cafe',
                    ),
                  ],
                ),
              ),
            ),
          ),
          //こちらからは反復になりますので、３回転までしてます。
          SliverToBoxAdapter(
            //sliverToBoxAdapterやpaddingをwidgetととして（topとheightをポジションパラメータとして使い）作りたかったですが、縦幅のエラーが解消できず、columnから作ってます。
            child: Padding(
              padding: const EdgeInsets.only(
                  //ダウンロードした写真の大きさバラバラでpaddingとheightを別々に設定してます。
                  top: 10,
                  bottom: 15,
                  right: 20,
                  left: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFffffff),
                ),
                height: 304,
                child: const HotelScreen(
                  imagePath: 'lib/images/hotel1.jpg',
                  hotelname: 'Awesome room near Bouddha',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 304,
                  child: const HotelScreen(
                    hotelname: 'Beautiful Room',
                    imagePath: 'lib/images/hotel2.jpg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 335,
                  child: const HotelScreen(
                    hotelname: 'Beautiful Room',
                    //見本と写真の大きさが違く、全体大きさ異なります。
                    imagePath: 'lib/images/hotel3.jpg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 378,
                  child: const HotelScreen(
                    hotelname: 'Vintage room near Pashupatinath',
                    imagePath: 'lib/images/hotel4.jpeg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFffffff),
                ),
                height: 304,
                child: const HotelScreen(
                  imagePath: 'lib/images/hotel1.jpg',
                  hotelname: 'Awesome room near Bouddha',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 304,
                  child: const HotelScreen(
                    hotelname: 'Beautiful Room',
                    imagePath: 'lib/images/hotel2.jpg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 335,
                  child: const HotelScreen(
                    hotelname: 'Beautiful Room',
                    imagePath: 'lib/images/hotel3.jpg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 378,
                  child: const HotelScreen(
                    hotelname: 'Vintage room near Pashupatinath',
                    imagePath: 'lib/images/hotel4.jpeg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFffffff),
                ),
                height: 304,
                child: const HotelScreen(
                  imagePath: 'lib/images/hotel1.jpg',
                  hotelname: 'Awesome room near Bouddha',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 304,
                  child: const HotelScreen(
                    hotelname: 'Beautiful Room',
                    imagePath: 'lib/images/hotel2.jpg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 335,
                  child: const HotelScreen(
                    hotelname: 'Beautiful Room',
                    imagePath: 'lib/images/hotel3.jpg',
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, bottom: 15, right: 20, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFffffff),
                  ),
                  height: 378,
                  child: const HotelScreen(
                    hotelname: 'Vintage room near Pashupatinath',
                    imagePath: 'lib/images/hotel4.jpeg',
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
