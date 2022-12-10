import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset("assets/manProfilPicture.png"),
                  ),
                  const Text("Fotograf"),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text("Ad"),
            const SizedBox(height: 5),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                hintText: "Adınızı Giriniz",
              ),
            ),
            const SizedBox(height: 10),
            const Text("Soyad"),
            const SizedBox(height: 5),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                hintText: "Soyadınızı Giriniz",
              ),
            ),
            const SizedBox(height: 10),
            const Text("E-Mail"),
            const SizedBox(height: 5),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                hintText: "Epostanızı Giriniz",
              ),
            ),
            const SizedBox(height: 10),
            const Text("Pasword"),
            const SizedBox(height: 5),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black,
                  ),
                ),
                hintText: "Soyadınızı Giriniz",
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonAction(
                onPressed: () {},
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class ButtonAction extends StatelessWidget {
  ButtonAction({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text("Kaydet"),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.blue),
        )),
        maximumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
      ),
    );
  }
}
