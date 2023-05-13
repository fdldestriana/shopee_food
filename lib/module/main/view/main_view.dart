import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/core.dart';
import 'package:shopee_food/utils/color_lib.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  Widget build(context, MainController controller) {
    controller.view = this;
    List<String> listImages = ['24_Hours', 'Near_Me', 'Promo', 'Top_Selling'];
    List<String> listCards = ['free_delivery', 'discount'];

    return Scaffold(
      backgroundColor: ColorLib.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 108.5,
            left: 48,
            child: Column(
              children: [
                Text(
                  'Hi Naufal!',
                  style: GoogleFonts.poppins(
                      color: ColorLib.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 14),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Jl. Lorem ipsum dolor sit am No 1...',
                        style: GoogleFonts.poppins(
                            color: ColorLib.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: ColorLib.white,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: '#FAFAFA'.toColor(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 6),
                        Text(
                          'Search menus or restaurants',
                          style: GoogleFonts.poppins(
                              color: '#191919'.toColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 277,
            child: Container(
              width: Get.width,
              height: 565,
              decoration: BoxDecoration(
                color: ColorLib.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 22),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Text(
                  //             'Category',
                  //             style: GoogleFonts.poppins(
                  //                 color: ColorLib.darkBlack,
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.w700),
                  //           ),
                  //           InkWell(
                  //             onTap: () {},
                  //             child: Container(
                  //               width: 48,
                  //               height: 22,
                  //               decoration: BoxDecoration(
                  //                 color: const Color.fromARGB(16, 255, 121, 46),
                  //                 borderRadius: BorderRadius.circular(12),
                  //               ),
                  //               child: Center(
                  //                 child: Text(
                  //                   'See all',
                  //                   style: GoogleFonts.poppins(
                  //                       color: ColorLib.primaryColor,
                  //                       fontSize: 10,
                  //                       fontWeight: FontWeight.w600),
                  //                 ),
                  //               ),
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //       const SizedBox(height: 16),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //         children: [
                  //           ...List.generate(
                  //             listImages.length,
                  //             (index) => InkWell(
                  //               onTap: () {},
                  //               child: Column(
                  //                 children: [
                  //                   Image.asset(
                  //                       'assets/images/categories/${listImages[index].toLowerCase()}.png'),
                  //                   const SizedBox(height: 8),
                  //                   Text(
                  //                     listImages[index].replaceAll("_", " "),
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //           )
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 196,
                  //   child: Column(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Text(
                  //               'Promo & Cashback',
                  //               style: GoogleFonts.poppins(
                  //                   color: ColorLib.darkBlack,
                  //                   fontSize: 16,
                  //                   fontWeight: FontWeight.w700),
                  //             ),
                  //             InkWell(
                  //               onTap: () {},
                  //               child: Container(
                  //                 width: 48,
                  //                 height: 22,
                  //                 decoration: BoxDecoration(
                  //                   color:
                  //                       const Color.fromARGB(16, 255, 121, 46),
                  //                   borderRadius: BorderRadius.circular(12),
                  //                 ),
                  //                 child: Center(
                  //                   child: Text(
                  //                     'See all',
                  //                     style: GoogleFonts.poppins(
                  //                         color: ColorLib.primaryColor,
                  //                         fontSize: 10,
                  //                         fontWeight: FontWeight.w600),
                  //                   ),
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //       const SizedBox(height: 16),
                  //       SizedBox(
                  //         width: MediaQuery.of(context).size.width,
                  //         height: 157,
                  //         child: PageView.builder(
                  //           scrollBehavior:
                  //               ScrollConfiguration.of(context).copyWith(
                  //             dragDevices: {
                  //               PointerDeviceKind.touch,
                  //               PointerDeviceKind.mouse,
                  //               PointerDeviceKind.trackpad,
                  //             },
                  //           ),
                  //           controller: controller.pageController,
                  //           itemCount: listCards.length,
                  //           pageSnapping: false,
                  //           padEnds: false,
                  //           itemBuilder: (context, index) => Padding(
                  //             padding: const EdgeInsets.only(right: 10),
                  //             child: Center(
                  //               child: ClipRRect(
                  //                 borderRadius: BorderRadius.circular(14),
                  //                 child: Image.asset(
                  //                   'assets/images/cards/${listCards[index]}.png',
                  //                   width: 265,
                  //                   height: double.infinity,
                  //                   fit: BoxFit.fill,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 28, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Main Course',
                              style: GoogleFonts.poppins(
                                  color: ColorLib.darkBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 48,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(16, 255, 121, 46),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    'See all',
                                    style: GoogleFonts.poppins(
                                        color: ColorLib.primaryColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => SizedBox(
                                  width: 336,
                                  height: 97,
                                  child: ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'assets/images/foods/japanese_noodle.png',
                                        width: 88,
                                        height: 88,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Salty Bolognese Spaghetti',
                                          style: GoogleFonts.poppins(
                                              color: ColorLib.darkBlack,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Image.asset(
                                            'assets/images/discount/discount.png')
                                      ],
                                    ),
                                    subtitle: Column(
                                      children: [
                                        Text(
                                          'Western Food, Main Course, Halal, Pasta, Sauce...',
                                          style: GoogleFonts.poppins(
                                              color: ColorLib.darkBlack,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(
                                                Icons.share_location_outlined),
                                            Text(
                                              '500 m',
                                              style: GoogleFonts.poppins(
                                                  color: const Color.fromARGB(
                                                      100, 25, 25, 25),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            const Icon(
                                                Icons.circle_notifications),
                                            Text(
                                              '10 minute',
                                              style: GoogleFonts.poppins(
                                                  color: const Color.fromARGB(
                                                      100, 25, 25, 25),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 18),
                            itemCount: 4)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<MainView> createState() => MainController();
}
