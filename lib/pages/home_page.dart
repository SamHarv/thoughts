import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../post_data.dart';

import '../providers/favourite_provider.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/post_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final provider = Provider.of<FavouriteProvider>(context);

    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(id: '/'),
      body: Container(
        padding: kPadding,
        child: CustomScrollView(
          slivers: [
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: mediaWidth <= 750 ? 2 : 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.2,
              ),
              delegate: SliverChildBuilderDelegate(
                childCount: postData.length,
                (context, postIndex) {
                  final post = postData[postIndex];
                  return PostTile(
                    title: post.title,
                    image: post.image,
                    datePosted: post.datePosted,
                    isFavourite: post.isFavourite,
                    onTap: () => context.go(
                      '/article',
                      extra: postIndex,
                    ),
                    icon: provider.isInFavourites(post)
                        ? IconButton(
                            icon: const Icon(Icons.star),
                            onPressed: () {
                              provider.toggleFavourite(post);
                            },
                            color: thirdColor,
                          )
                        : IconButton(
                            icon: const Icon(Icons.star_border),
                            onPressed: () {
                              provider.toggleFavourite(post);
                            },
                            color: thirdColor,
                          ),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  width:
                      mediaWidth <= 750 ? mediaWidth * 0.8 : mediaWidth * 0.4,
                  child: Padding(
                    padding: kPadding,
                    child: Image.asset(fullLogo),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/favourites'),
        backgroundColor: secondaryColor,
        child: const Icon(
          Icons.star,
          color: thirdColor,
        ),
      ),
    );
  }
}
