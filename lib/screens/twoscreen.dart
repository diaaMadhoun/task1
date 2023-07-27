import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/model/products.dart';
import 'package:task1/screens/threescreen.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  @override
  Widget build(BuildContext context) {

    double topPosition = 0;

    List<Products> list = [
      Products(
          '4.6',
          'icons/starr.svg',
          'icons/favarite_border.svg',
          'images/ps5-2.png',
          'icons/shopping.svg',
          'PlayStation 5',
          null,
          '\$ 890.00',
          '\$ 900'),
      Products('4.6', 'icons/starr.svg', 'icons/favarite.svg', 'images/ps5.png',
          'icons/shopping.svg', 'PlayStation 5', null, '\$ 890.00', '\$ 900'),
      Products(
          '4.6',
          'icons/starr.svg',
          'icons/favarite.svg',
          'images/earphone.png',
          'icons/shopping.svg',
          'PULES 3D',
          'Wireless Headset',
          '\$ 179.95',
          '\$ 180.95'),
      Products(
          '4.6',
          'icons/starr.svg',
          'icons/favarite_border.svg',
          'images/remote.png',
          'icons/shopping.svg',
          'Media Remote',
          null,
          '\$ 54.95',
          '\$ 60.95'),
      Products(
          '4.6',
          'icons/starr.svg',
          'icons/favarite_border.svg',
          'images/image.png',
          'icons/shopping.svg',
          'Media Remote',
          null,
          '\$ 54.95',
          '\$ 60.95'),
      Products(
          '4.6',
          'icons/starr.svg',
          'icons/favarite_border.svg',
          'images/control.png',
          'icons/shopping.svg',
          'Media Remote',
          null,
          '\$ 54.95',
          '\$ 60.95'),
    ];

    return Container(
      color: const Color(0xFF333742),
      child: GridView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {

          if (index == 0) {
            topPosition = 40.0;
          } else if (index == 1) {
            topPosition = 30.0;
          } else if (index == 2) {
            topPosition = 50.0;
          } else if(index == 3){
            topPosition = 63.0;
          }else if (index == 4){
            topPosition =45;
          }

          return GestureDetector(
            onTap: () {
                Navigator.push(context ,MaterialPageRoute(builder: (context) => ThreeScreen(),));
            },

            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xFF454D5A),
              clipBehavior: Clip.antiAlias,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF454D5A),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.black.withOpacity(0.1),
                            Colors.white.withOpacity(0.1),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: const Color(0xFF333742),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  list[index].evaluation,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(list[index].iconStarr),
                              ],
                            ),
                          ),
                          SvgPicture.asset(list[index].favarite),
                        ],
                      ),
                    ),
                    Positioned(
                        top: topPosition,
                        child: Image.asset(list[index].image)),
                    Positioned(
                      bottom:10,
                      left: 8,
                      child: Row(
                        children: [
                          Text(
                            list[index].price,
                            style:  GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            list[index].rival,
                            style:  GoogleFonts.poppins(
                            color: Colors.white,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 45,
                        left: 8,
                        child: Text(
                          list[index].nameProduct,
                          style:  GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      bottom: 29,
                      left: 8,
                      child: Text(
                        list[index].titelProducts ?? '',
                        style:  GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 70,
                      right: 12,
                      child: Container(
                        width: 39,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xFF333742),
                        ),
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              list[index].iconShopping,
                              height: 10,
                              width: 10,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.68,
        ),
      ),
    );
  }
}
