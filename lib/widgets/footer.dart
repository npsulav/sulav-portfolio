import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_site/components/text_components.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatefulWidget {
  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  bool facebookHovering = false;
  bool googleHovering = false;
  bool githubHovering = false;
  bool linkedinHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: EdgeInsets.all(30),
      color: Colors.orange,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,bottom: 30),
            child: label(
                label: "Learning new technology every day.",
                fontSize: 20,
                color: Colors.white,
                weight: FontWeight.normal),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onHover: (i) {
                    printInfo(info: "Hovering");
                    setState(() {
                      googleHovering = i;
                    });
                  },
                  onTap: () {
                    launch("mailto:sulavparajuli07@gmail.com");
                  },
                  child:  CircleAvatar(
                    backgroundColor: googleHovering ? Colors.blue: Colors.white,
                    child: FaIcon(FontAwesomeIcons.google, color: !googleHovering ? Colors.orange: Colors.white,),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onHover: (i) {
                    printInfo(info: "Hovering");
                    setState(() {
                      facebookHovering = i;
                    });
                  },
                  onTap: () {
                    launch("https://www.facebook.com/thesulav/");
                  },
                  child:  CircleAvatar(
                    backgroundColor: facebookHovering ? Colors.blue: Colors.white,
                    child: FaIcon(FontAwesomeIcons.facebook, color: !facebookHovering ? Colors.orange: Colors.white,),
                  ),
                ),
              ),
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onHover: (i) {
                    printInfo(info: "Hovering");
                    setState(() {
                      githubHovering = i;
                    });
                  },
                  onTap: () {
                    launch("https://github.com/npsulav");
                  },
                  child:  CircleAvatar(
                    backgroundColor: githubHovering ? Colors.blue: Colors.white,
                    child: FaIcon(FontAwesomeIcons.github, color: !githubHovering ? Colors.orange: Colors.white,),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onHover: (i) {
                    printInfo(info: "Hovering");
                    setState(() {
                      linkedinHovering = i;
                    });
                  },
                  onTap: () {
                    launch("https://np.linkedin.com/in/sulav-parajuli-705652216");
                  },
                  child:  CircleAvatar(
                    backgroundColor: linkedinHovering ? Colors.blue: Colors.white,
                    child: FaIcon(FontAwesomeIcons.linkedin, color: !linkedinHovering ? Colors.orange: Colors.white,),
                  ),
                ),
              ),
            
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0,bottom: 30),
            child: label(
                label: "© Sulav Parajuli",
                fontSize: 20,
                color: Colors.white,
                weight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
