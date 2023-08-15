import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:navigator/widgets/app_bar.dart';

late List<CameraDescription> _cameras;

class ScanPage extends StatefulWidget {
  
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {

  late CameraController controller;

  @override
  Future<void> initState() async {
    await initCamera();
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: const CustomAppBar(name: 'Guard Name'),
      body: CameraPreview(controller),
    );
  }

  Future<void> initCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    _cameras = await availableCameras();
  }


}