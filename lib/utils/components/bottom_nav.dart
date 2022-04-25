import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      elevation: 0,
      color: AppConstant.primaryColor,
      
      notchMargin: 10,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: AppConstant.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.book,
                        color: Colors.white,
                      ),
                      Text(
                        "Courses",
                        style: TextStyle(color: AppConstant.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.tablet_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Tablets",
                        style: TextStyle(color: AppConstant.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "My Cart",
                        style: TextStyle(color: AppConstant.white),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      shape: const CircularNotchedRectangle(),
    );
  }
}