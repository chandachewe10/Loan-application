import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:loan_mobile_app/constants/colors.dart';

import '../components/header.dart';
import '../widgets/dashboard.dart';
import 'controller.dart';

class DashboardDetails extends GetView<DashboardDetailsController> {
  const DashboardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Quick Financials";
    return Scaffold(
      appBar: const HeaderComponent(headerText: 'Financial CashExpress', hint: 'Dashboard',),


       drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              color: primaryColor800,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage('assets/images/user4.png'),
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Chanda Chewe',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'chewec03@gmail.com',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0973750029',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const Divider(
              height: 5,
            ),
            const ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Dashboard"),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Personal Profile"),
            ),
            const ListTile(
              leading: Icon(Icons.file_copy),
              title: Text("Loan Application"),
            ),
            const ListTile(
              leading: Icon(Icons.filter),
              title: Text("Loan History"),
            ),
            const ListTile(
              leading: Icon(Icons.money_rounded),
              title: Text("Transactions"),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [

          Container(
            margin: const EdgeInsets.all(50),
            child: const Text(
              "Hi Chanda Chewe Welcome to the Clients Dashboard",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),

          GridView.count(
            shrinkWrap: true, // use it
            crossAxisCount: 3,
            children: [
              DashboardCard(
                icon: Icons.account_circle,
                title: 'My Profile',
              ),
              DashboardCard(
                icon: Icons.file_copy,
                title: 'My Profile',
              ),
              DashboardCard(
                icon: Icons.monetization_on,
                title: 'Transactions',
              ),
              DashboardCard(
                icon: Icons.file_copy_sharp,
                title: 'History',
              ),
              DashboardCard(
                icon: Icons.money_rounded,
                title: 'Payments',
              ),
              DashboardCard(
                icon: Icons.settings,
                title: 'Settings',
              ),

            ],
          ),
        ]),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: primaryColor800,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.money),
          label: "Loans",
          backgroundColor: primaryColor800,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          label: "transactions",
          backgroundColor: primaryColor800,
        ),
      ]),
    );
  }
}
