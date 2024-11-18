import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/screens/doctor/online_visit_doctor.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({super.key});

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  PlatformFile? _bill;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
    );

    if (result != null) {
      setState(() {
        _bill = result.files.single; // Store the selected file
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00b4d8),
        title: CustomText(
          text: 'Medicine Details',
          color: Colors.black,
          fsize: 25,
          fweight: FontWeight.w400,
        ),
      ),
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.8,
                      height: size.height * 0.4,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: 'Medicine and Instructions',
                              color: Colors.black,
                              fsize: 20,
                              fweight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            width: size.width * 0.7,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                // label: Text('Medicine and Instructions'),
                              ),
                              maxLines: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(height: 10),
                    CustomText(
                      text: 'Bill:',
                      color: Colors.black,
                      fsize: 20,
                      fweight: FontWeight.w500,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xFF004fff))),
                      onPressed: _pickFile,
                      child: CustomText(
                          text: 'Attach Bill',
                          color: Colors.white,
                          fsize: 20,
                          fweight: FontWeight.w400),
                    ),
                    if (_bill != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('Selected File: ${_bill!.name}'),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.2,
              ),
              CustomButton(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnlineVisitDoctor(),
                        ));
                  },
                  text: 'Done',
                  buttonColor: const Color(0xFF004fff),
                  textColor: Colors.white,
                  height: size.height * 0.08,
                  width: size.width * 0.6),
            ],
          ),
        ),
      ),
    );
  }
}
