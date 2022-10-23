import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return register();
  }
}

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool ishiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Register',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextFormField(
              obscureText: ishiddenpassword,
              decoration: InputDecoration(
                  hintText: "Masukan Nama Lengkap Anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people)),
            ),
            TextFormField(
              obscureText: ishiddenpassword,
              decoration: InputDecoration(
                  hintText: "Masukan email Anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Email",
                  icon: Icon(Icons.people)),
            ),
            TextFormField(
              obscureText: ishiddenpassword,
              decoration: InputDecoration(
                  suffixIcon: InkWell(
                      onTap: togglePassword, child: Icon(Icons.visibility)),
                  hintText: "Masukan password Anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Password",
                  icon: Icon(Icons.people)),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Masukan nomor hp Anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "No hp",
                  icon: Icon(Icons.people)),
            ),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: true,
              ),
              items: ["Mahasiswa", "Dosen"],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Status",
                  icon: Icon(Icons.people),
                  hintText: "Pilih status anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: true,
              ),
              items: ["Laki-laki", "Perempuan"],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Jenis kelamin",
                  icon: Icon(Icons.people),
                  hintText: "Pilih jenis kelamin anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Masukkan alamat anda",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  labelText: "Alamat",
                  icon: Icon(Icons.people)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/home');
              },
              child: Text(
                "Daftar",
                style: TextStyle(fontSize: 17),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0041C4),
                fixedSize: Size(307, 52),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void togglePassword() {
    setState(() {
      ishiddenpassword = !ishiddenpassword;
    });
  }
}
