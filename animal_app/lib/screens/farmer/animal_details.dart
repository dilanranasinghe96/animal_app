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

  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'png', 'pdf'],
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
      body: CustomBackground(
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
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
                            text: 'Animal Details',
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF004fff),
                    ),
                    onPressed: _pickFiles,
                    child: CustomText(
                      text: 'Attach images',
                      color: Colors.white,
                      fsize: 20,
                      fweight: FontWeight.w400,
                    ),
                  ),
                  if (_animalImages.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _animalImages.map((file) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(file.name),
                          );
                        }).toList(),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
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
      ),
    );
  }
}
