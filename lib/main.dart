import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

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
                  textColor: Color(0xFF1E41FF),
                  borderColor: Color(0xFFB3BFFF),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              const SizedBox(
                width: 30,
              ),
              CustomButton(
                  borderColor: Color(0xFF1E41FF),
                  title: 'Follow',
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF1E41FF))),
            ],
          ),
          SizedBox(height: 20),
          Flexible(child: GridViews())
        ],
      ),
    );
  }
}

class GridViews extends StatelessWidget {
  GridViews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.8,
            children: <Widget>[
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/1319911/pexels-photo-1319911.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              ),
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/1580270/pexels-photo-1580270.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              ),
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/10346632/pexels-photo-10346632.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              ),
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/9469740/pexels-photo-9469740.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
              ),
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/1106466/pexels-photo-1106466.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              ),
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/10161004/pexels-photo-10161004.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
              ),
              postedImagesContainer(
                imageUrl:
                    'https://images.pexels.com/photos/1580270/pexels-photo-1580270.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class postedImagesContainer extends StatelessWidget {
  postedImagesContainer({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.backgroundColor,
      required this.title,
      required this.borderColor,
      this.textColor})
      : super(key: key);
  MaterialStateProperty<Color> backgroundColor;
  String title;
  Color? textColor;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: SizedBox(
            height: 40,
            width: 120,
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
          style: ButtonStyle(
              backgroundColor: backgroundColor,
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
              side: MaterialStateProperty.all(
                  BorderSide(width: 2.0, color: borderColor))),
        ),
      ],
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 120,
        ),
        Text(subtitle),
      ],
    );
  }
}
