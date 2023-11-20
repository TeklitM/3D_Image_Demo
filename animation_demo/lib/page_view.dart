import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';



class PageViewExample extends StatelessWidget {
   PageViewExample({super.key});
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {

    return PageView(
      controller: controller,
      children: const <Widget>[
        Center(
          child:   ModelViewer(
            backgroundColor: Colors.transparent,
            src: 'assets/black.glb',
            disableZoom: true,
            disableTap: true,
            arModes: ['scene-viewer', 'webxr', 'quick-look'],
          ),
        ),
        Center(
          child: ModelViewer(
            backgroundColor: Colors.transparent,
            src: 'assets/grey.glb',
            disableZoom: true,
            disableTap: true,
            arModes: ['scene-viewer', 'webxr', 'quick-look'],
          ),
        ),
        Center(
          child:ModelViewer(
            backgroundColor: Colors.transparent,
            src: 'assets/white.glb',
            disableZoom: true,
            disableTap: true,
            arModes: ['scene-viewer', 'webxr', 'quick-look'],
          ),
        ),
      ],
    );
  }
   void blackItem(){
     controller.jumpToPage(0,

     );
   }
  void greyItem(){
    controller.jumpToPage(1,
    );
  }
   void whiteItem(){
     controller.jumpToPage(2,
     );

   }
}
