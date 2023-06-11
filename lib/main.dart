import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "Honda Activa 110cc",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/activa-image.webp",
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 2, right: 2, bottom: 2, left: 2),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 242, 242, 242),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Colors.green,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Online",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 138, 138, 138)),
                              )
                            ],
                          ),
                        )),
                    const Positioned(
                        top: 125,
                        right: 10,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 30,
                        )),
                    Positioned(
                        bottom: 20,
                        left: 155,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 7),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(234, 234, 233, 230),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.circle,
                                color: Color.fromARGB(255, 75, 72, 201),
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.circle,
                                color: Color.fromARGB(255, 185, 187, 185),
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.circle,
                                color: Color.fromARGB(255, 185, 187, 185),
                                size: 10,
                              ),
                            ],
                          ),
                        ))
                  ],
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  const Text(
                    "Honda Activa 110cc",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.star,
                          size: 15, color: Color.fromARGB(255, 75, 72, 201)),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.3",
                        style: TextStyle(
                            color: Color.fromARGB(255, 75, 72, 201),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "(44 rides)",
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 10),
              child: Row(
                children: const [
                  Text("MH"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("12"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("KP"),
                  SizedBox(
                    width: 5,
                  ),
                  Text("3431"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            Container(
              width: 150,
              margin: const EdgeInsets.only(left: 30, top: 15),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: Row(
                children: const [
                  Text("Vehicle Preview"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.remove_red_eye),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: CupertinoSwitch(
                      value: true,
                      onChanged: (bool) {},
                      activeColor: const Color.fromARGB(255, 224, 224, 224),
                      thumbColor: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    "Accepting Rides",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30, top: 10),
              child: const Text(
                "SETTINGS",
                style: TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SettingsRow(icon: Icons.currency_rupee, title: "Pricing"),
            const Divider(
              thickness: 2,
            ),
            const SettingsRow(
                icon: Icons.location_on_outlined, title: "Pickup Location"),
            const Divider(
              thickness: 2,
            ),
            const SettingsRow(
                icon: Icons.camera_alt_outlined, title: "Vehicle Photos"),
            const Divider(
              thickness: 2,
            ),
            const SettingsRow(icon: Icons.notes, title: "Vehicle Description"),
            const Divider(
              thickness: 2,
            ),
            const SettingsRow(icon: Icons.date_range, title: "Set availbility"),
            const Divider(
              thickness: 2,
            ),
            const SettingsRow(icon: Icons.note, title: "Notes for pickup"),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.center,
                child: const Text(
                  "Remove this vehicle",
                  style: TextStyle(
                      color: Color.fromARGB(255, 196, 13, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsRow extends StatelessWidget {
  const SettingsRow({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 20, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 90, 90, 90)),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Color.fromARGB(255, 90, 90, 90),
          ),
        ],
      ),
    );
  }
}
