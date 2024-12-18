import 'package:animal_app/components/custom_background_farmer.dart';
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
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(
                    color: Color.fromRGBO(3, 139, 57, 1),
                  ),
                  Row(
                    children: [
                      CustomText(
                          text: 'Animal Details',
                          color: const Color.fromRGBO(3, 139, 57, 1),
                          fsize: 25,
                          fweight: FontWeight.bold),
                    ],
                  ),
                  const Icon(
                    Icons.menu,
                    color: Color.fromRGBO(3, 139, 57, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          // Background and Scrollable Content
          CustomBackgroundFarmer(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 80.0), // Space for button
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    // Animal Details Section
                    Container(
                      width: size.width * 0.8,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(231, 254, 228, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(140, 248, 136, 0.29),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        maxLines: 9,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Attach Images Section
                    Center(
                        child: GestureDetector(
                      onTap: () {
                        _pickFiles();
                      },
                      child: Container(
                        width: size.width * 0.8,
                        height: size.height * 0.2,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(255, 255, 255, 0.7),
                              Color.fromRGBO(140, 248, 136, 0.7)
                            ]),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: AssetImage(
                                    'lib/assets/drag_and_drop.png'))),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomText(
                              text: 'Animal picture',
                              color: Colors.black,
                              fsize: 18,
                              fweight: FontWeight.w500),
                        ),
                      ),
                    )),
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
                buttonColor: const Color.fromRGBO(4, 204, 58, 1),
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
