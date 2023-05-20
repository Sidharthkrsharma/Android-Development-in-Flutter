import "package:flutter/material.dart";
import '../common_widgets/pageLayoutWidgets.dart';
import '../common_widgets/common_widgets.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
@@ -24,67 +26,27 @@ class _HomeScreenState extends State<HomeScreen> {
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/bookingScreen");
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFECEBEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8,
                      ),
                    ),
                  ),
                ),
                child: BloodBankInfo(
                  bloodBankName: "Sarita",
                  distance: 7,
                  isGovernment: false,
                ),
              BloodBankInfo(
                bloodBankName: "Sarita",
                distance: 7,
                isGovernment: false,
              ),

              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFECEBEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8,
                      ),
                    ),
                  ),
                ),
                child: BloodBankInfo(
                  bloodBankName: "Red Cross",
                  distance: 6,
                  isGovernment: false,
                ),
              BloodBankInfo(
                bloodBankName: "Sarita",
                distance: 7,
                isGovernment: false,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFECEBEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8,
                      ),
                    ),
                  ),
                ),
                child: BloodBankInfo(
                  bloodBankName: "Madarsa",
                  distance: 9,
                  isGovernment: true,
                ),
              BloodBankInfo(
                bloodBankName: "Sita Raman",
                distance: 5.5,
                isGovernment: true,
              ),
              BloodBankInfo(
                bloodBankName: "People",
                distance: 7,
                isGovernment: true,
              ),
            ],
          ),
@@ -93,146 +55,3 @@ class _HomeScreenState extends State<HomeScreen> {
    );
  }
}

class BloodBankInfo extends StatelessWidget {
  const BloodBankInfo({
    Key? key,
    required this.bloodBankName,
    required this.distance,
    required this.isGovernment,
    this.displayBloodGroupAvailability = false,
  }) : super(key: key);

  final String bloodBankName;
  final double distance;
  final bool isGovernment;
  final bool displayBloodGroupAvailability;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              BloodBankTypeIndicator(isGovernment: isGovernment),
              SizedBox(
                width: 15,
              ),
              BloodBankNameDisplay(bloodBankName: bloodBankName),
            ],
          ),
          Text(
            "${distance} km",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class PageSubtitle extends StatelessWidget {
  const PageSubtitle({
    Key? key,
    required this.subtitle,
  }) : super(key: key);

  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  PageTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class BloodBankTypeIndicator extends StatelessWidget {
  const BloodBankTypeIndicator({Key? key, required this.isGovernment})
      : super(key: key);

  final bool isGovernment;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: isGovernment ? Color(0xFFEA6C6C) : Color(0xFF699B61),
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class BloodBankNameDisplay extends StatelessWidget {
  const BloodBankNameDisplay({Key? key, required this.bloodBankName})
      : super(key: key);

  final String bloodBankName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bloodBankName,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        Text(
          "Blood Bank",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
