import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Widget titleText({label, fontSize}) {
  return Text(label,
      style: GoogleFonts.poppins(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: fontSize));
}

Widget menuText({label, selected = false}) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Text(label,
            style: GoogleFonts.poppins(
                color: selected ? Colors.orange : Colors.black,
                fontWeight: selected ? FontWeight.bold : FontWeight.bold)),
      ));
}

Widget buttonPortfolio({label, padding = 15}) {
  return Container(
      decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: padding),
          child: Text(label,
              style: GoogleFonts.poppins(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ));
}

Widget buttonWork({label, padding = 10, width}) {
  return Container(
      width: width,
      child: InkWell(
        onTap: () {
          launch(label);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: padding),
          child: Text(label,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.purple, fontWeight: FontWeight.bold)),
        ),
      ));
}

Widget label(
    {label, fontSize, color = Colors.black54, weight = FontWeight.bold}) {
  return Text(label,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
          color: color, height: 1.5, fontWeight: weight, fontSize: fontSize));
}

Widget workCard(
    {title, desc, date, workedWith, storeLink, codeLink, logo, width}) {
  return Card(
    elevation: 10,
    child: Container(
        margin: const EdgeInsets.all(10),
        width: width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Image.asset(
                logo,
                width: width * 0.7,
                height: 70,
              ),
            ),
            
            Container(
                padding: EdgeInsets.symmetric(horizontal: 0.157 * width),
                child: label(
                    label: desc, color: Colors.black, weight: FontWeight.normal)),
            
            Container(
                padding: EdgeInsets.symmetric(horizontal: 0.157 * width),
                child: label(
                    label: workedWith,
                    color: Colors.black,
                    weight: FontWeight.w800)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 0.157 * width),
              child: buttonWork(
                label: storeLink,
              ),
            )
          ],
        )),
  );
}
