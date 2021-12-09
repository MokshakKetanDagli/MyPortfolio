import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/components/mydrawer.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneContactScreen extends StatelessWidget {
  const PhoneContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title: const Text('Contact Me'),
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [ContactDetailWidget(), QueryFormWidget(), ContactLinksWidget()],
        ),
      ),
    );
  }
}

class ContactLinksWidget extends StatelessWidget {
  const ContactLinksWidget({
    Key? key,
  }) : super(key: key);

  Future openURL({required String url, required bool inApp}) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: inApp, forceWebView: inApp, enableJavaScript: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.all(16.0),
        color: Colors.blue.shade100,
        elevation: 3,
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Follow me here',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () async {
                        const String instaURL = 'https://www.instagram.com/mokshak_14/';
                        openURL(url: instaURL, inApp: true);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.instagramSquare,
                        color: Colors.black45,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const String facebookURL =
                            'https://m.facebook.com/people/Mokshak-Dagli/100006151514743';
                        openURL(url: facebookURL, inApp: true);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.facebookSquare,
                        color: Colors.black45,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const String linkedinURL =
                            'https://in.linkedin.com/in/mokshakketandagli?trk=public_profile_browsemap';
                        openURL(url: linkedinURL, inApp: true);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.black45,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const String githubURL = 'https://github.com/mokshakketandagli';
                        openURL(url: githubURL, inApp: true);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.githubSquare,
                        color: Colors.black45,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const String twitterURL = 'https://twitter.com/mokshak14';
                        openURL(url: twitterURL, inApp: true);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.twitterSquare,
                        color: Colors.black45,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Center(
                child: Text(
                  'Copyright © 2021 All rights reserved',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QueryFormWidget extends StatelessWidget {
  const QueryFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.only(right: 16.0, left: 16.0),
        color: Colors.blue.shade100,
        elevation: 3,
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Message Form',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(decoration: const InputDecoration(hintText: 'Name')),
                      TextFormField(decoration: const InputDecoration(hintText: 'Email Address')),
                      TextFormField(decoration: const InputDecoration(hintText: 'Subject')),
                      TextFormField(
                        minLines: 5,
                        maxLines: 8,
                        decoration: const InputDecoration(hintText: 'Message'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Send Message',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactDetailWidget extends StatelessWidget {
  const ContactDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.all(16.0),
        color: Colors.blue.shade100,
        elevation: 3,
        borderOnForeground: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Contact Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'I am open for any suggestions or just to have chat',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 15),
              ContactHeader(val: 'Address'),
              SizedBox(height: 5),
              ContactValue(
                  val:
                      '6/1214,J3 Sunrise Apartment Flat - D3 Indian Chamber Road Kochi, Mattancherry, Ernakulam, Kerala, India.'),
              SizedBox(height: 15),
              ContactHeader(val: 'Email Address'),
              SizedBox(height: 5),
              ContactValue(val: 'daglimokshak@gmail.com'),
              SizedBox(height: 15),
              ContactHeader(val: 'Phone Number'),
              SizedBox(height: 5),
              ContactValue(val: '+91-7736271855')
            ],
          ),
        ),
      ),
    );
  }
}

class ContactValue extends StatelessWidget {
  const ContactValue({
    required this.val,
    Key? key,
  }) : super(key: key);

  final String? val;

  @override
  Widget build(BuildContext context) {
    return Text(
      val.toString(),
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 18,
        height: 1.5,
      ),
    );
  }
}

class ContactHeader extends StatelessWidget {
  const ContactHeader({
    Key? key,
    required this.val,
  }) : super(key: key);

  final String? val;

  @override
  Widget build(BuildContext context) {
    return Text(
      val.toString(),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
