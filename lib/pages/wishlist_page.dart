import 'package:bwaspace/widgets/product_grid_item.dart';
import 'package:bwaspace/widgets/skeleton_item.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  bool isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteGreyColor,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: AppBar(
            elevation: 0,
            backgroundColor: kWhiteColor,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: kBlackColor,
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Text(
                  'Wishlist',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Spacer(),
                Image.asset(
                  'assets/icon_search.png',
                  width: 24,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kWhiteColor,
            onTap: (value) {
              if (value == 0) {
                Navigator.pushNamed(context, '/home');
              } else if (value == 2) {
                Navigator.pushNamed(context, '/profile');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_home.png',
                  width: 24,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 24,
                  color: kBlueColor,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 24,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            SizedBox(
              height: 30,
            ),
            isLoading ? buildLoading() : buildGrid(),
          ],
        ));
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        ProductGridItem(
          imageUrl: 'assets/image_product_grid1.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid2.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid3.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid4.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid1.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: true,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid2.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid3.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: false,
        ),
        ProductGridItem(
          imageUrl: 'assets/image_product_grid4.png',
          title: 'Poan Chair',
          price: 34,
          isWishlist: true,
        ),
      ],
    );
  }
}
