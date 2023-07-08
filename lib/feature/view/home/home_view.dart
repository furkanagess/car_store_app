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
                controller: PageController(viewportFraction: 0.9),
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: context.paddingLowHorizontal,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.network(
                      fit: BoxFit.fill,
                      'https://picsum.photos/200/300',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: context.paddingNormalVertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: context.textTheme.titleLarge,
                  ),
                  Text("See all"),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: context.dynamicWidth(0.42),
                      height: context.dynamicHeight(0.25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://picsum.photos/200",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      "Suzuki S",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Rs. 5,85,000",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
