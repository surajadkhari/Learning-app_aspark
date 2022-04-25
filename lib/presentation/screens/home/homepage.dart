import 'package:aspark_ui/utils/components/bottom_nav.dart';
import 'package:aspark_ui/utils/constant/app_constant.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: AppConstant.primaryColor,
        child: Image.asset(AppConstant.menu),
        onPressed: (() {}),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(color: AppConstant.primaryColor),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                      iconSize: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                        height: 80, child: Image.asset(AppConstant.applogo)),
                    IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {},
                      iconSize: 35,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SearchSection(),
                const CustomPromotionCard(),
                SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      dotColor: Colors.white54,
                      activeDotColor: Colors.white,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Popular Courses",
                  style: TextStyle(
                      color: AppConstant.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: AppConstant.secondaryColor),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 200,
              width: 200,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 82,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img245.jpg'))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Level 1"),
                      Text(
                        "Level 1",
                        style: TextStyle(color: AppConstant.secondaryColor),
                      ),
                    ],
                  ),
                  const Text("Mathematics Table"),
                  const Text(
                    "32 Articles Table, 5 Quizes,7 Test",
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: AppConstant.primaryColor),
                        onPressed: () {},
                        child: const Text('Enroll Now'),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomPromotionCard extends StatelessWidget {
  const CustomPromotionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const promotionData = {
      'image': 'assets/onboad.png',
      'title': 'School in the \nPocket ',
      'subTitle': 'Welcome to Pratima Educare'
    };
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
        items: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  height: size.width * .600,
                  padding: const EdgeInsets.all(19.0),
                  decoration: BoxDecoration(
                    color: AppConstant.primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 300,
                        child: Text(
                          promotionData['subTitle'].toString(),
                          style: const TextStyle(
                            fontSize: 15.0,
                            color: AppConstant.secondaryColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        promotionData['title'].toString(),
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      const Spacer(),
                      Container(
                        height: 30.0,
                        width: 120.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xFF0F69A8),
                              spreadRadius: 0.0,
                              blurRadius: 6.0,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: const Text(
                          'Join Today',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: AppConstant.primaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  child: SizedBox(
                    height: size.width * .39,
                    child: Image.asset(
                      promotionData['image'].toString(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        options: CarouselOptions(
          aspectRatio: 16 / 10,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ));
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buidSearchBar(context);
  }
}

Widget _buidSearchBar(context) {
  return Container(
    margin: const EdgeInsets.only(
      top: 8,
      left: 15,
      right: 15,
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 16.0,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(
        12.0,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.075),
          offset: const Offset(0.0, 1.0),
          blurRadius: 15.0,
        )
      ],
    ),
    child: TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
          color: AppConstant.primaryColor,
          size: 30,
        ),
        hintStyle: GoogleFonts.poppins(
          color: AppConstant.primaryColor,
          fontSize: 13,
        ),
        border: InputBorder.none,
        hintText: 'Search for here..',
      ),
    ),
  );
}
