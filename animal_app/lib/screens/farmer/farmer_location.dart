import 'package:animal_app/components/custom_background_farmer.dart';
import 'package:animal_app/components/custom_button.dart';
import 'package:animal_app/components/custom_text.dart';
import 'package:animal_app/screens/farmer/doctor_list.dart';
import 'package:flutter/material.dart';

final Map<String, List<String>> provinceDistrictMap = {
  'Western': ['Colombo', 'Gampaha', 'Kalutara'],
  'Central': ['Kandy', 'Matale', 'Nuwara Eliya'],
  'Southern': ['Galle', 'Matara', 'Hambantota'],
  'Northern': ['Jaffna', 'Kilinochchi', 'Mannar', 'Vavuniya', 'Mullaitivu'],
  'Eastern': ['Batticaloa', 'Ampara', 'Trincomalee'],
  'North Western': ['Kurunegala', 'Puttalam'],
  'North Central': ['Anuradhapura', 'Polonnaruwa'],
  'Uva': ['Badulla', 'Monaragala'],
  'Sabaragamuwa': ['Ratnapura', 'Kegalle'],
};

class FarmerLocation extends StatefulWidget {
  const FarmerLocation({super.key});

  @override
  State<FarmerLocation> createState() => _FarmerLocationState();
}

class _FarmerLocationState extends State<FarmerLocation> {
  String selectedProvince = provinceDistrictMap.keys.first;
  String? selectedDistrict;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Get the list of districts for the selected province
    final List<String> districts = provinceDistrictMap[selectedProvince]!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(182, 250, 166, 0.50),
        leading: const BackButton(
          color: Color.fromRGBO(3, 139, 57, 1),
        ),
      ),
      body: CustomBackgroundFarmer(
          child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/srilanka.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: size.height * 0.4,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: size.width,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(5, 204, 58, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Center(
                          child: CustomText(
                              text: 'Select your Location',
                              color: Colors.white,
                              fsize: 20,
                              fweight: FontWeight.w400),
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: Container(
                      width: size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(243, 243, 255, 0.57),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.8,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButton<String>(
                              hint: CustomText(
                                  text: 'Province',
                                  color: const Color.fromRGBO(34, 153, 82, 1),
                                  fsize: 18,
                                  fweight: FontWeight.w400),
                              value: selectedProvince,
                              isExpanded: true,
                              underline:
                                  const SizedBox(), // Remove the default underline
                              items: provinceDistrictMap.keys
                                  .map((String province) {
                                return DropdownMenuItem<String>(
                                  value: province,
                                  child: CustomText(
                                      text: province,
                                      color:
                                          const Color.fromRGBO(34, 153, 82, 1),
                                      fsize: 18,
                                      fweight: FontWeight.w400),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedProvince = value!;
                                  // Reset the selected district when province changes
                                  selectedDistrict = null;
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: size.width * 0.8,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: DropdownButton<String>(
                              value: selectedDistrict,
                              isExpanded: true,
                              underline:
                                  const SizedBox(), // Remove the default underline
                              hint: CustomText(
                                  text: 'District',
                                  color: const Color.fromRGBO(34, 153, 82, 1),
                                  fsize: 18,
                                  fweight: FontWeight.w400),
                              items: districts.map((String district) {
                                return DropdownMenuItem<String>(
                                  value: district,
                                  child: CustomText(
                                      text: district,
                                      color:
                                          const Color.fromRGBO(34, 153, 82, 1),
                                      fsize: 18,
                                      fweight: FontWeight.w400),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedDistrict = value!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButton(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DoctorList(),
                                    ));
                              },
                              text: 'Next',
                              buttonColor: const Color.fromRGBO(5, 204, 58, 1),
                              textColor: Colors.white,
                              height: size.height * 0.06,
                              width: size.width * 0.6),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
