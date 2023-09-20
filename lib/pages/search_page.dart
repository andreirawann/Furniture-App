import 'package:bwaspace/theme.dart';
import 'package:bwaspace/widgets/product_list_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGreyColor,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 80),
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
                            Navigator.pushNamed(context, '/search-result');
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
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          SizedBox(
            height: 41,
          ),
          Text(
            'Recomendation',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 20,
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
      ),
    );
  }
}
