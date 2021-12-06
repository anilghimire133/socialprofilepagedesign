import 'package:design_day_one/widgets/posted_image_container.dart';
import 'package:flutter/material.dart';

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

  // postedImagesContainer({required String imageUrl}) {}

}
