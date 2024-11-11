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
        title: CustomText(
          text: 'Medicine Details',
          color: Colors.black,
          fsize: 25,
          fweight: FontWeight.w400,
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Medicine and Instructions',
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      label: Text('Medicine and Instructions'),
                    ),
                    maxLines: 10,
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
                  fweight: FontWeight.w300,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.amber)),
                  onPressed: _pickFile,
                  child: CustomText(
                      text: 'Attach Bill',
                      color: Colors.black,
                      fsize: 20,
                      fweight: FontWeight.w300),
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
              buttonColor: Colors.amber,
              textColor: Colors.black,
              height: size.height * 0.08,
              width: size.width * 0.6),
        ],
      ),
    );
  }
}
