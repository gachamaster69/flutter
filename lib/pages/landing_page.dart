import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
                      selectedIndex = index;
                    });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:
                  index == selectedIndex ? Color(0xffFE9980) : Colors.transparent,),
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'background.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Column(
            children: [
              //Navigation

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    width: 72,
                    height: 40,
                  ),
                  Row(
                    children: [
                      navItem(
                        title: 'Guides',
                        index: 0,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Pricing',
                        index: 1,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Team',
                        index: 2,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      navItem(
                        title: 'Stories',
                        index: 3,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  Image.asset(
                    'button_account.png',
                    width: 163,
                    height: 53,
                  )
                ],
              ),
              // Content
              SizedBox(
                height: 36,
              ),
              Image.asset(
                'illustration.png',
                width: 550,
              ),
              //Footer
              SizedBox(
                height: 84,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'icon_more.png',
                    width: 24,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
