import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 66,
              height: 65,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: SvgPicture.asset('lib/app/Fig/Map_pin.svg'),
            ),
            const Text(
              'WERILI',
              style: TextStyle(
                color: Color(0xFF001952),
                fontSize: 80,
                fontFamily: 'Lilita One',
                fontWeight: FontWeight.w400,
                height: 0.76,
              ),
            ),
            const Text(
              'Smarter routes, smoother rides!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Aclonica',
                fontWeight: FontWeight.w400,
                letterSpacing: 1.98,
              ),
            ),
            Container(
              width: 405,
              height: 405,
              padding: const EdgeInsets.only(
                top: 79,
                left: 188,
                right: 145,
                bottom: 79,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/app/Fig/Frame 15.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 73,
                    height: 57,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://placehold.co/73x57"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 231,
              height: 53,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, 0.50),
                  end: Alignment(1.00, 0.50),
                  colors: [Color(0xFF011950), Color(0xFF043AB6)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x30000000),
                    blurRadius: 7,
                    offset: Offset(0, 5),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 1.75,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
