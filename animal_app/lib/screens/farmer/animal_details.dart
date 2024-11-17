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
        title: CustomText(
          text: 'Animal Details',
          color: Colors.black,
          fsize: 25,
          fweight: FontWeight.w400,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Attach animal pictures and details:',
                  color: Colors.black,
                  fsize: 20,
                  fweight: FontWeight.w300,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * 0.8,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Type here...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    maxLines: 10,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: _pickFiles,
                  child: CustomText(
                    text: 'Attach images',
                    color: Colors.black,
                    fsize: 20,
                    fweight: FontWeight.w300,
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
                buttonColor: Colors.amber,
                textColor: Colors.black,
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
