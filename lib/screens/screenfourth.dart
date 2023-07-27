import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenFourth extends StatelessWidget {
  const ScreenFourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333742),
      appBar: AppBar(
        titleSpacing: -10,
        title: Text(
          'PULSE 3D Wireless Headset',
          style: GoogleFonts.poppins(
            fontSize: 15,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, icon: SvgPicture.asset('icons/path.svg')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('icons/favarite_border.svg')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'PULSE 3D\nWirless Headset',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Category Name',
              style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('icons/eye.svg'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '1.5 K',
                      style: GoogleFonts.poppins(
                        color: Colors.white54,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    SvgPicture.asset(
                      'icons/favarite.svg',
                      color: Colors.white38,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '212',
                      style: GoogleFonts.poppins(
                        color: Colors.white54,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    SvgPicture.asset('icons/luggage.svg'),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '120',
                      style: GoogleFonts.poppins(
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xFF333742),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xFFED5454),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Image.asset('images/earphonepig.png',width: 391,height: 391,),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                height: 6,
                width: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 6,
                width: 8,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ],),
          ],
        ),
      ),
    );
  }
}
