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

  // File picker function to allow doctors to upload a bill
  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'], // Only image files allowed
    );

    if (result != null) {
      setState(() {
        _bill = result.files.single; // Store the selected file
      });
    }
  }

  final TextEditingController medicineController = TextEditingController();

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
      body: Stack(
        children: [
          // Background and Scrollable Content
          CustomBackground(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 80.0), // Space for button
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    // Medicine Instructions Section
                    Center(
                      child: Container(
                        width: size.width * 0.8,
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Medicine and Instructions',
                              color: Colors.black,
                              fsize: 20,
                              fweight: FontWeight.w500,
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: medicineController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              maxLines: 9,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF004fff),
                        ),
                        onPressed: _pickFile,
                        child: CustomText(
                          text: 'Attach Bill',
                          color: Colors.white,
                          fsize: 20,
                          fweight: FontWeight.w400,
                        ),
                      ),
                    ),
                    if (_bill != null)
                      Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Container(
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Image.memory(
                                _bill!.bytes!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          // Fixed Button at the Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
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
                  width: size.width * 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
