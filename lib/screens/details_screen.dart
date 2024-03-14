import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'best_sellers.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            // Container(
            //   width: size.width,
            //   height: size.height * 0.70,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/haworthia.png'),
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            ),
            Positioned(
              top: size.height * 0.63,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.40,
                    decoration: ShapeDecoration(
                      color: Color(0xff5b5551),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.30,
                        child: Image(
                          image: AssetImage('assets/images/leaf.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      // Column(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Center(
                      //       child: SizedBox(
                      //         width: 165,
                      //         height: 50,
                      //         child: Text(
                      //           'Faux Calathea Orbifolia',
                      //           textAlign: TextAlign.center,
                      //           style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 14,
                      //             fontFamily: 'Monument',
                      //             fontWeight: FontWeight.w400,
                      //             letterSpacing: 0.20,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Opacity(
                      //       opacity: 0.30,
                      //       child: Text(
                      //         'LARGE / PROSPECT / PALE GREY',
                      //         textAlign: TextAlign.center,
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 12,
                      //           fontFamily: 'Monument',
                      //           fontWeight: FontWeight.w400,
                      //           letterSpacing: 0.24,
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/images/sil_dark.svg'),
                            SvgPicture.asset('assets/images/union.svg'),
                          ],
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: SizedBox(
                              width: 165,
                              height: 50,
                              child: Text(
                                'Best Haworthia Zebra',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Monument',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.28,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: SizedBox(
                              width: 165,
                              height: 50,
                              child: Text(
                                'ARRIVES POTTED IN OUR CERAMIC PLANTER',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFBCAEA3),
                                  fontSize: 10,
                                  fontFamily: 'Monument',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Positioned(
              top: size.height * 0.21,
              child: Container(
                width: 79.71,
                height: 32.49,
                decoration: ShapeDecoration(
                  color: Color(0xFFA1AF66),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '- 10%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Monument',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.24,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        //     child: Stack(
        //   children: [
        //     Container(
        //       height: size.height,
        //       width: size.width,
        //     ),
        //     Container(
        //       width: size.width,
        //       height: size.height * 0.70,
        //       decoration: BoxDecoration(
        //         image: DecorationImage(
        //           image: AssetImage('assets/images/haworthia.png'),
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: size.height * 0.63,
        //       child: Stack(
        //         children: [
        //           Container(
        //             width: size.width,
        //             height: size.height * 0.40,
        //             decoration: ShapeDecoration(
        //               color: Color(0xff5b5551),
        //               shape: RoundedRectangleBorder(
        //                 borderRadius: BorderRadius.only(
        //                   topLeft: Radius.circular(40),
        //                   topRight: Radius.circular(40),
        //                   bottomLeft: Radius.circular(0),
        //                   bottomRight: Radius.circular(0),
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             width: size.width,
        //             height: size.height * 0.30,
        //             child: Image(
        //               image: AssetImage('assets/images/leaf.png'),
        //               fit: BoxFit.fill,
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ],
        // )
      ),
    );
  }
}
