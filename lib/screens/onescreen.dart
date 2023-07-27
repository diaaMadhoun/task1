import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1/model/product.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({Key? key}) : super(key: key);

  @override
  State<OneScreen> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<OneScreen> {
  final bool _isCarouselSlider = false;

  @override
  Widget build(BuildContext context) {
    List<ProductModel> list = [
      ProductModel(
        "Sony",
        "Playstation 5",
        "images/ps5-photo.png",
        "\$ 890.00",
        '\$ 900',
      ),
      ProductModel(
        "Sony",
        "Playstation 5",
        "images/ps5-photo.png",
        "\$ 890.00",
        '\$ 900',
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Search Products...',
                  hintStyle: const TextStyle(color: Colors.white),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  fillColor: const Color(0xFF454D5A),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(21),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF454D5A),
                borderRadius: BorderRadius.circular(18),
              ),
              child: SvgPicture.asset('icons/filter.svg'),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            print('diaaa');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
            ),
            margin: const EdgeInsets.only(top: 45),
            child: CarouselSlider.builder(
              options: CarouselOptions(
                enlargeCenterPage: true,
                initialPage: 0,
                height: 440,
                reverse: false,
                aspectRatio: 0.5,
                pauseAutoPlayOnTouch: true,
                enableInfiniteScroll: false,
                padEnds: false,
              ),
              itemCount: list.length,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  width: 284,
                  decoration: BoxDecoration(
                    color: const Color(0xFF454D5A),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(list[index].nameProduct,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 13)),
                             Padding(
                               padding: EdgeInsets.all(15),
                                 child: SvgPicture.asset('icons/favarite_border.svg',color: Colors.white,width: 19,height: 16,))
                          ],
                        ),
                        SizedBox(height: 4,),
                        Text(list[index].subNameProduct,
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        Expanded(
                          child: Image.asset(
                            list[index].image,
                            height: 271,
                            fit: _isCarouselSlider
                                ? BoxFit.cover
                                : BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF333742),
                            ),
                            width: 23.59,
                            height: 23.59,
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                width: 23.59,
                                height: 23.59,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xFF707070),
                              ),
                              height: 40,
                              width: 138,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      list[index].price,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(width: 5,),
                                    Text(
                                      list[index].rival,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
