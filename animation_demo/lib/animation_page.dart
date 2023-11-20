import 'package:animation_demo/page_view.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:badges/badges.dart';
import 'package:badges/badges.dart' as badges;

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool sizeSmallSelected = false;
  bool sizeMediumSelected = false;
  bool sizeLargeSelected = false;
  String selectedImage = "assets/black.glb";
  bool showCheckout = false;
  bool badgeSelected = false;
  var pages = PageViewExample();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0.1,
        actions: [
          showCheckout ? Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 2,color: Colors.grey)),
              child: Align(
                alignment: Alignment.center,
                child: badges.Badge(
                  badgeContent: const Text('1'),
                  position: badges.BadgePosition.topEnd(top: -15, end: -12),
                  showBadge: badgeSelected,
                  child: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ) : Container(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(

                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    pages,
                    Container(color: Colors.grey.shade50,height: 10,)
                  ],

                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Color',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {

                    setState(() {
                      selectedImage = 'assets/black.glb';
                      pages.blackItem();

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const SizedBox(
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selectedImage = 'assets/grey.glb';
                      pages.greyItem();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: const SizedBox(
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(

                  onTap: () {

                    setState(() {
                      selectedImage = 'assets/white.glb';
                      pages.whiteItem();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(width: 1,color: Colors.grey.shade200),
                    ),
                    child: const SizedBox(
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Size',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    sizeSmallSelected = !sizeSmallSelected;
                    sizeMediumSelected = false;
                    sizeLargeSelected = false;
                    setState(() {
                    });
                  },
                  child: Container(
                    width: 45,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: sizeSmallSelected ? Colors.black : Colors.white,
                      border: Border.all(
                          width: 2,
                          color:
                              sizeSmallSelected ? Colors.black : Colors.grey),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'S',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: sizeSmallSelected
                                  ? Colors.white
                                  : Colors.grey),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    sizeSmallSelected = false;
                    sizeMediumSelected = !sizeMediumSelected;
                    sizeLargeSelected = false;
                    setState(() {});
                  },
                  child: Container(
                    width: 45,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: sizeMediumSelected ? Colors.black : Colors.white,
                      border: Border.all(
                          width: 2,
                          color:
                          sizeMediumSelected ? Colors.black : Colors.grey),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'M',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: sizeMediumSelected
                                  ? Colors.white
                                  : Colors.grey),
                        )),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    sizeSmallSelected = false;
                    sizeMediumSelected = false;
                    sizeLargeSelected = !sizeLargeSelected;
                    setState(() {});
                  },
                  child: Container(
                    width: 45,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: sizeLargeSelected ? Colors.black : Colors.white,
                      border: Border.all(
                          width: 2,
                          color:
                          sizeLargeSelected ? Colors.black : Colors.grey),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'L',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: sizeLargeSelected
                                  ? Colors.white
                                  : Colors.grey),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    badgeSelected = true;
                    showCheckout= true;
                    setState(() {});
                    _showCheckoutDialog(selectedImage);
                  },
                  child: const Text(
                    'Add to Cart',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _showCheckoutDialog(String selectedImage) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
                badgeSelected = false;
                setState(() {});
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.close),
              ),
            ),
          ),
          content: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                const Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      ModelViewer(
                        backgroundColor: Colors.transparent,
                        src: selectedImage,
                        disableZoom: true,
                        disableTap: true,
                        arModes: ['scene-viewer', 'webxr', 'quick-look'],
                      ),
                      Container(color: Colors.white,height: 10,)
                    ],

                  ),
                ),
                const Text(
                  'Do you want to proceed to checkout?',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  Navigator.of(context).pop();
                  _showPaymentDialog();
                },
                child: const Text('Checkout')),
          ],
        );
      },
    );
  }

  Future<void> _showPaymentDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 1,
          title: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Text('Credit Form'),
          ),
          content: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                // Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    cursorWidth: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Credit Card Number',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        // fontSize: 18
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    cursorWidth: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Cvv Number',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        // fontSize: 18
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    cursorWidth: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Expiry Date',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        // fontSize: 18
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      Navigator.of(context).pop();
                      badgeSelected = false;
                      showCheckout = false;
                      setState(() {});

                      _showPromptDialog();
                    },
                    child: const Text('Purchase Now')),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showPromptDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Thank you for your purchase',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close')),
            ),
          ],
        );
      },
    );
  }
}
