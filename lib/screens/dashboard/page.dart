import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:loan_mobile_app/constants/colors.dart';

import 'controller.dart';

class DashboardDetails extends GetView<DashboardDetailsController> {
  const DashboardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Quick Financials";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        centerTitle: true,
        backgroundColor: primaryColor800,
        elevation: 4,
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: primaryColor800,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(

                      image: AssetImage('assets/images/user4.png'),

                  width: 100, height: 100,),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Chanda Chewe',style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('chewec03@gmail.com',style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('0973750029',style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w600))
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
      body: const Center(),
    );
  }
}
