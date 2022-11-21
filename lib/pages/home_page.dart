import 'package:flutter/material.dart';
import 'package:flutter_warming_up/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                const Text(
                  'Profile Picture',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: colorPrimary,
                  ),
                ),
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/ImageOne.png',
                  width: 140,
                  height: 140,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Ada Lovelace',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Programmer',
                  style: TextStyle(color: colorGrey, fontSize: 16),
                ),
                const SizedBox(height: 70),
                // todo Wrap pengganti Row/flexibel layout row
                Wrap(
                  spacing: 70,
                  runSpacing: 40,
                  children: [
                    Image.asset(
                      'assets/images/ImageTwo.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/ImageTwo.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/ImageTwo.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/ImageThree.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/ImageTwo.png',
                      width: 80,
                      height: 80,
                    ),
                    Image.asset(
                      'assets/images/ImageTwo.png',
                      width: 80,
                      height: 80,
                    ),
                  ],
                ),
                const SizedBox(height: 70),

                // todo Button Update Profile
                SizedBox(
                  width: 224,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {
                        // print('on click');
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: const EdgeInsets.symmetric(vertical: 50),
                              height: 290,
                              child: Column(
                                children: <Widget>[
                                  const Text(
                                    'Upload Photo',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  const Text(
                                    'You are only able to change \n the picture profile once',
                                    style: TextStyle(color: colorGrey),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 30),
                                  SizedBox(
                                    height: 55,
                                    width: 224,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                colorOrange),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        )),
                                      ),
                                      child: const Text(
                                        'Continue',
                                        style: TextStyle(
                                            color: colorWhite,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colorWhite),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      child: const Text(
                        'Update Profile',
                        style: TextStyle(
                            color: colorPrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                const SizedBox(height: 76),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
