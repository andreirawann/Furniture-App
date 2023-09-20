import 'package:bwaspace/widgets/product_grid_item.dart';
import 'package:bwaspace/widgets/skeleton_item.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import '../widgets/product_list_item.dart';

class SearchResultPage extends StatefulWidget {
  const SearchResultPage({super.key});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  bool isLoading = true;
  bool isShowGrid = true;

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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 110),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhiteColor,
            elevation: 0,
            title: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: kBlackColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteGreyColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            onFieldSubmitted: (value) {
                              Navigator.pushNamed(context, 'search-result');
                            },
                            decoration: InputDecoration.collapsed(
                              hintText: 'Search Furniture',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.close,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Image.asset(
                  'assets/icon_filter.png',
                  width: 24,
                ),
              ],
            ),
            bottom: TabBar(
              indicatorColor: kBlackColor,
              labelColor: kBlackColor,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Chair',
                ),
                Tab(
                  text: 'Table',
                ),
                Tab(
                  text: 'Accessories',
                ),
                Tab(
                  text: 'Living Room',
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            buildBody(),
            buildBody(),
            buildBody(),
            buildBody(),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for : Poan Chair',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isShowGrid = !isShowGrid;
                });
              },
              child: Image.asset(
                isShowGrid ? 'assets/icon_grid.png' : 'assets/icon_list.png',
                width: 24,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        isLoading
            ? buildLoading()
            : isShowGrid
                ? buildGrid()
                : buildList(),
      ],
    );
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

  Widget buildList() {
    return Column(
      children: [
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list1.png',
          price: 25,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list2.png',
          price: 55,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list3.png',
          price: 36,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list4.png',
          price: 48,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list1.png',
          price: 25,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list2.png',
          price: 55,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list3.png',
          price: 36,
        ),
        ProductListItem(
          title: 'Poan Chair',
          imageUrl: 'assets/image_product_list4.png',
          price: 48,
        ),
      ],
    );
  }
}
