import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'widgets/custom_button.dart';
import 'widgets/grid_view.dart';
import 'widgets/post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white, foregroundColor: Colors.black),
        primarySwatch: Colors.blue,
      ),
      home: const SocialProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SocialProfilePage extends StatelessWidget {
  const SocialProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940')),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Martin Smith',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Full Stack Developer/Designer |',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 3,
              ),
              CircleAvatar(
                  radius: 15,
                  child: Text('FSD', style: TextStyle(fontSize: 12)))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                foregroundColor: Colors.pink[400],
                backgroundColor: Colors.pink[50],
                child: const Icon(AntDesign.dribbble, size: 20),
              ),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                foregroundColor: Colors.blue,
                backgroundColor: Color(0xFFEBF2FF),
                child: Icon(AntDesign.behance, size: 20),
              ),
              const SizedBox(
                width: 15,
              ),
              const CircleAvatar(
                foregroundColor: Colors.pinkAccent,
                backgroundColor: Color(0xFFF7F0ED),
                child: Icon(
                  AntDesign.instagram,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const CircleAvatar(
                foregroundColor: Colors.blue,
                backgroundColor: Color(0xFFE9F7FF),
                child: Icon(Entypo.linkedin, size: 20),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              PostWidget(
                title: '6',
                subtitle: 'Posts',
              ),
              PostWidget(
                title: '69K',
                subtitle: 'Followers',
              ),
              PostWidget(
                title: '105',
                subtitle: 'Following',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  title: 'Message',
                  textColor: const Color(0xFF1E41FF),
                  borderColor: const Color(0xFFB3BFFF),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              const SizedBox(
                width: 30,
              ),
              CustomButton(
                  borderColor: const Color(0xFF1E41FF),
                  title: 'Follow',
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF1E41FF))),
            ],
          ),
          const SizedBox(height: 20),
          Flexible(child: GridViews())
        ],
      ),
    );
  }
}






