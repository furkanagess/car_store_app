import 'package:car_store_app/product/constants/app_colors.dart';
import 'package:car_store_app/product/extension/context_extension.dart';
import 'package:car_store_app/product/widgets/stadium_search_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: AppColors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.black,
            ),
          )
        ],
        title: Text(
          'CarStore',
          style: context.textTheme.titleLarge?.copyWith(
            color: AppColors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: context.paddingNormal,
        child: ListView(
          children: [
            Row(
              children: [
                Flexible(
                  child: StadiumSearchBar(
                    hintText: 'Search for cars..',
                    defaultColor: AppColors.textfieldFill,
                    hintColor: AppColors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.manage_search_outlined,
                    size: 35,
                  ),
                )
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            SizedBox(
              height: context.dynamicHeight(0.3),
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Card(
                  child: Image.network(
                    fit: BoxFit.fill,
                    'https://picsum.photos/200/300',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
