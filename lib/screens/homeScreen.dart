import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../colors.dart';
import '../model/homeData.dart';
import '../widgets/Home/Header.dart';
import '../widgets/Home/HomeScreenBody/main.dart';
import '../widgets/Home/HomeScreenHead/main.dart';
import '../widgets/bottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  HomeData homeData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: isUserInDatabase(),
            builder: (context, status) =>
                status.connectionState == ConnectionState.waiting
                    ? Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: kBackgroundColor,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                        ],
                      )
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            HomeScreenHead(homeData),
                            HomeScreenBody(homeData),
                          ],
                        ),
                      ),
          ),
          Header()
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Future<void> isUserInDatabase() async {
    final url = Uri.parse('https://milkiyat.bangalore2.com/api/home/');
    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          "Accept": "application/json",
        },
      );
      homeData = homeDataFromJson(response.body);
      return;
    } catch (error) {
      print(error.toString());
    }
  }
}
