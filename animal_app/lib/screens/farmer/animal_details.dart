import 'package:animal_app/components/custom_background.dart';
import 'package:animal_app/screens/farmer/animal_category.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text.dart';

class AnimalDetails extends StatefulWidget {
  const AnimalDetails({super.key});

  @override
  State<AnimalDetails> createState() => _AnimalDetailsState();
}

class _AnimalDetailsState extends State<AnimalDetails> {
  List<PlatformFile> _animalImages = []; // Store multiple selected files

  // Function to pick multiple image files
  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png'], // Only image files
      allowMultiple: true, // Allow multiple file selection
    );

    if (result != null) {
      setState(() {
        _animalImages = result.files; // Store all selected files
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
          text: 'Animal Details',
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
                    const SizedBox(height: 20),
                    // Animal Details Section
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
                              text: 'Animal Details',
                              color: Colors.black,
                              fsize: 20,
                              fweight: FontWeight.w500,
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
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
                    const SizedBox(height: 20),

                    // Attach Images Section
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF004fff),
                        ),
                        onPressed: _pickFiles,
                        child: CustomText(
                          text: 'Attach Images',
                          color: Colors.white,
                          fsize: 20,
                          fweight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    if (_animalImages.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics:
                              const NeverScrollableScrollPhysics(), // Use parent scrolling
                          itemCount: _animalImages.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.memory(
                                  _animalImages[index].bytes!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
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
                      builder: (context) => const AnimalCategory(),
                    ),
                  );
                },
                text: 'Send',
                buttonColor: const Color(0xFF004fff),
                textColor: Colors.white,
                height: size.height * 0.08,
                width: size.width * 0.6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
