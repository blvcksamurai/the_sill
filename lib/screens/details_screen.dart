import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        child: Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
        ),
        Container(
          width: size.width,
          height: size.height * 0.70,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/haworthia.png'),
              fit: BoxFit.fill,
            ),
          ),
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
              Container(
                width: size.width,
                height: size.height * 0.30,
                child: Image(
                  image: AssetImage('assets/images/leaf.png'),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
        Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/sill.svg'),
                  InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     PageRouteBuilder(
                        //         pageBuilder: (context, a, b) =>
                        //             BestSellers()));
                      },
                      child: SvgPicture.asset('assets/images/union.svg')),
                ],
              ),
            ],
          ),
        )
      ],
    ));
  }
}
