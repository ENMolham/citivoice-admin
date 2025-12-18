import 'dart:io';
import 'package:citivoice_admin/Core/constant/colors_constant.dart';
import 'package:citivoice_admin/Core/extension/screen_size_extension.dart';
import 'package:citivoice_admin/Features/Widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class CustomFileUpload extends StatefulWidget {
  final String text;
  final File? file;
  final ValueChanged<File>? onFilePicked;
  const CustomFileUpload({
    super.key,
    this.file,
    this.onFilePicked,
    required this.text,
  });

  @override
  State<CustomFileUpload> createState() => _CustomFileUploadState();
}

class _CustomFileUploadState extends State<CustomFileUpload> {
  File? _file;
  late String _filename;
  late String _text;

  @override
  void initState() {
    super.initState();
    _file = widget.file;
    _filename = "";
    _text = widget.text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: _text,
          color: ColorConstant.Black,
          size: context.scaleFont(4),
          fontWeight: FontWeight.w400,
          paddingTop: 0,
          paddingright: context.screenWidth * 0.01,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: context.screenHeight * 0.01,
            right: context.screenWidth * 0.01,
          ),
          child: Container(
            width: context.screenWidth * 0.2,
            height: context.screenHeight * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorConstant.LightGrey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomText(
                    text: _file != null ? _filename : "",
                    color: ColorConstant.MainColor,
                    size: context.scaleFont(3),
                    fontWeight: FontWeight.bold,
                    paddingTop: 0,
                    paddingright: context.screenWidth * 0.01,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                  ),
                ),

                IconButton(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(type: FileType.any);

                    if (result != null && result.files.single.path != null) {
                      final pickedFile = result.files.single;

                      if (pickedFile.size > 10 * 1024 * 1024) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              'حجم الملف أكبر من 10 ميغا، يرجى اختيار ملف أصغر',
                              textAlign: TextAlign.right,
                            ),
                            backgroundColor: Colors.red,
                            duration: const Duration(seconds: 3),
                          ),
                        );
                        return;
                      }

                      setState(() {
                        _file = File(pickedFile.path!);
                        _filename = pickedFile.name;
                      });

                      widget.onFilePicked?.call(_file!);
                    }
                  },

                  icon: Icon(
                    Icons.upload_file,
                    color: ColorConstant.MainColor,
                    size: context.scaleIcon(4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
