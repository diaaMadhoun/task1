import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:task1/screens/onescreen.dart';
import 'package:task1/screens/twoscreen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<HomeScreen> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgPicture.asset('icons/notification.svg')),
        ],
        leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SvgPicture.asset('icons/existing.svg')),
      ),
      backgroundColor:   const Color(0xFF333742),
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF454D5A),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: GNav(
            backgroundColor: Color(0xFF454D5A),
            tabBackgroundColor: Color(0xFF333742),
            activeColor: Colors.white,
            color: Colors.white,
            gap: 8,
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'HOME',
              ),
              GButton(
                icon: Icons.luggage,
                text: 'BIG',
              ),
              GButton(
                icon: Icons.person_outline_rounded,
                text: 'USER',
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                 margin: const EdgeInsets.only(bottom: 20),
                 child: TabBar(
                   labelStyle:  GoogleFonts.poppins(
                     fontSize: 14,
                     fontWeight: FontWeight.bold,
                   ),
                   controller: _tabController,
                   labelPadding: const EdgeInsets.only(left: 20, right: 20),
                   isScrollable: true,
                   unselectedLabelColor: Colors.grey,
                  indicator: CustomTabIndicator(),

                  tabs: const [
                    Tab(text: 'ALL',),
                    Tab(text: 'PS5',),
                    Tab(text: 'PS4',),
                    Tab(text: 'xbox one',),
                    Tab(text: 'xbox one',),
                  ],
              ),
               ),
               Expanded(
                 child: SizedBox(
                   width: double.infinity,
                   height: double.maxFinite,
                   child: TabBarView(
                     controller: _tabController,
                       children: const [
                         OneScreen(),
                         TwoScreen(),
                         Text('tab 3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         Text('tab 4',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         Text('tab 5',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                   ]),
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomTabIndicatorPainter(this, onChanged);
  }
}

class _CustomTabIndicatorPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomTabIndicatorPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill;
    final double tabCenter = offset.dx + (configuration.size!.width / 4);
    const double offsetDifference = 4;

    canvas.drawCircle(
      Offset(tabCenter , offsetDifference + 8),
      3,
      paint,
    );

  }

}


