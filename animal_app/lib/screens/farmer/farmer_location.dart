import 'package:animal_app/components/custom_background.dart';
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
        backgroundColor: const Color(0xFF00b4d8),
      ),
      body: CustomBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  CustomText(
                    text: 'Select Province:',
                    color: Colors.black,
                    fsize: 20,
                    fweight: FontWeight.w400,
                  ),
                  Container(
                    width: size.width * 0.5,
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButton<String>(
                      value: selectedProvince,
                      isExpanded: true,
                      underline:
                          const SizedBox(), // Remove the default underline
                      items: provinceDistrictMap.keys.map((String province) {
                        return DropdownMenuItem<String>(
                          value: province,
                          child: Text(province),
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
                  CustomText(
                    text: 'Select District:',
                    color: Colors.black,
                    fsize: 20,
                    fweight: FontWeight.w400,
                  ),
                  Container(
                    width: size.width * 0.5,
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                      hint: const Text('Choose a district'),
                      items: districts.map((String district) {
                        return DropdownMenuItem<String>(
                          value: district,
                          child: Text(district),
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
                      buttonColor: const Color(0xFF004fff),
                      textColor: Colors.white,
                      height: size.height * 0.07,
                      width: size.width * 0.4)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
