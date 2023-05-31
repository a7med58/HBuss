import 'package:flutter/material.dart';
import 'package:HBuss/screens/about_page.dart';
import 'package:HBuss/screens/contact_us_page.dart';
import 'package:HBuss/screens/login_page.dart';
import 'package:HBuss/screens/registration_screen.dart';
import 'package:HBuss/screens/users/view_profile.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void _goToProfile(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserProfileScreen()),
    );
  }

  void _goToRegUser(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegistrationScreen()),
    );
  }

  void _goAboutPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutPage()),
    );
  }

  void _goToContactUsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ContactUsPage()),
    );
  }

  void _goToLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome IN HBuss Application'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'login') {
                Navigator.pushNamed(context, '/login');
              } else if (value == 'about') {
                Navigator.pushNamed(context, '/about');
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: '_goToLoginPage',
                child: Text('Login'),
              ),
              PopupMenuItem<String>(
                value: '_goAboutPage',
                child: Text('About'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: 'assets/images/a_dot_burr.jpeg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 16),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            Offset(0, 2), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => _goToLoginPage(context),
                    child: Text('Sing In'),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            Offset(0, 2), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => _goToProfile(context),
                    child: Text('Profile'),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            Offset(0, 2), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => _goToRegUser(context),
                    child: Text('Sing Up'),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            Offset(0, 2), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => _goAboutPage(context),
                    child: Text('About'),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset:
                            Offset(0, 2), // changes the position of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => _goToContactUsPage(context),
                    child: Text('Contact US'),
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
