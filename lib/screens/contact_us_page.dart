import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: 6,
          separatorBuilder: (context, index) => SizedBox(height: 16),
          itemBuilder: (context, index) {
            return ContactInfoItem(
              icon: _getIconData(index),
              label: _getLabel(index),
              value: _getValue(index),
              iconColor: Colors.red,
              onPressed: () {
                _launchURL(_getValue(index));
              },
            );
          },
        ),
      ),
    );
  }

  IconData _getIconData(int index) {
    switch (index) {
      case 0:
        return EvaIcons.phone;
      case 1:
        return EvaIcons.globe;
      case 2:
        return EvaIcons.email;
      case 3:
        return EvaIcons.facebook;
      case 4:
        return EvaIcons.twitter;
      case 5:
        return EvaIcons.twitter;
      default:
        return EvaIcons.phone;
    }
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return 'Phone Number';
      case 1:
        return 'Website';
      case 2:
        return 'Email';
      case 3:
        return 'Facebook';
      case 4:
        return 'Twitter';
      case 5:
        return 'Instagram';
      default:
        return '';
    }
  }

  String _getValue(int index) {
    switch (index) {
      case 0:
        return '+1 123-456-7890';
      case 1:
        return 'https://www.example.com';
      case 2:
        return 'mailto:contact@example.com';
      case 3:
        return 'https://www.facebook.com/example';
      case 4:
        return 'https://www.twitter.com/example';
      case 5:
        return 'https://www.instagram.com/example';
      default:
        return '';
    }
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color iconColor;
  final VoidCallback onPressed;

  const ContactInfoItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: iconColor,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
