import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const BusinessCardApp());

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 50.0,
                  color: Colors.deepPurple.shade300,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'COMPUTER SCIENCE STUDENT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.deepPurple.shade200,
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.deepPurple.shade300,
                  ),
                  title: Text(
                    '+1 234 567 8900',
                    style: TextStyle(
                      color: Colors.deepPurple.shade200,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.deepPurple.shade300,
                  ),
                  title: Text(
                    'johndoe@email.com',
                    style: TextStyle(
                      color: Colors.deepPurple.shade200,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final url = 'https://www.linkedin.com/in/jennyliu623/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.width * 0.2,
                      child: Image(
                        image: AssetImage('images/linkedin-logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final url = 'https://www.ofjuneskies.com/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.width * 0.2,
                      child: Image(
                        image: AssetImage('images/website-logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final url = 'https://www.instagram.com/ofjuneskies/';
                      if (await canLaunchUrl(Uri.parse(url))) {
                        await launchUrl(Uri.parse(url));
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.width * 0.2,
                      child: Image(
                        image: AssetImage('images/instagram-logo.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
