import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'dart:js' as js;

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 18.0,
          ),
          Text(
            "KAIRN ELLIS\nDE GUZMAN",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "22 year-old aspiring web developer",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                Text(
                  "Currently refreshing knowledge\nand learning new frameworks",
                  style: TextStyle(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: IconButton(
                      onPressed: () {
                        js.context.callMethod("open", [
                          "linkedin.com/in/kairn-ellis-de-guzman-1a5767197/"
                        ]);
                      },
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.blue,
                        size: 40,
                      )),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://github.com/kecdeguzman"]);
                      },
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 40,
                      )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: IconButton(
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://facebook.com/RozenKrone"]);
                      },
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 40,
                      )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {
                  js.context.callMethod("open", [
                    "https://drive.google.com/file/d/1prJpewrnAQGvFkGcdH6zKEXMUyFzQLbt/view?usp=sharing"
                  ]);
                },
                child: Text(
                  "SEE MY RESUME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "images/avatar.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
