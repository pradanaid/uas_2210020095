## Tugas UAS 2210020095
Nama : Pradana Iqbal Anshori</br>
NRP : 2210020095</br>
Kelas : 5A NonReg SI BJM</br>

### Preview (old):
<p>
<img src="https://user-images.githubusercontent.com/26644007/212778975-36bfac84-9273-4005-97e9-89137c898dd8.png" width="100" />
<img src="https://user-images.githubusercontent.com/26644007/212779016-f3bce673-5e45-4b41-8536-b0b03b778777.png" width="100" />
<img src="https://user-images.githubusercontent.com/26644007/212779013-c080d0c5-8e32-45f7-a8e8-13e7cabcc278.png" width="100" />
<img src="https://user-images.githubusercontent.com/26644007/212779005-ab8db604-4c3f-4e3e-8409-727948039bc8.png" width="100" />
</p>

### Preview (update_3):
<p>
<img src="https://user-images.githubusercontent.com/26644007/213221578-d7d4b7f8-1aac-4e8e-9eb9-317880e44c3a.png" width="150" />
<img src="https://user-images.githubusercontent.com/26644007/213218570-199c6eba-ed96-48e1-b9fe-67947becc7b3.png" width="150" />
<img src="https://user-images.githubusercontent.com/26644007/213218644-552bb8bd-ede2-4c66-8323-85e50904faed.png" width="150" />
<img src="https://user-images.githubusercontent.com/26644007/213222206-46fd3f7f-e549-4788-bd30-a112f5c16b4f.png" width="150" />
<img src="https://user-images.githubusercontent.com/26644007/213221548-2f0f2ca8-dc5d-413f-842d-8fc259b8aeff.png" width="150" />
</p>

### Update_3 Code -> Backgroud Image :
```
return Stack(
  children: <Widget>[
    Image.asset(
      "assets/images/PastelBlue.jpg",
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
      ),
    Scaffold(
      backgroundColor: Colors.transparent, //wajib
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(83, 0, 102, 255),
        ),
      body : (),//Body
    ),
  ],
);
```
### Update_3 Code -> SplashScreen :
```
import 'dart:async';

void initState() {
    super.initState();
    openSplashScreen();
  }
 
 openSplashScreen() async {
    return Timer(
      const Duration(seconds: 5), //Dulasi SplashScreen
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => menuAwal()));
      },
    );
  }

```

### import :
```
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
```
### pubspec.yaml :
```
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
  font_awesome_flutter: ^10.3.0
  google_fonts: ^3.0.1
```
```
  assets:
    - assets/
    - assets/images/
```

## Getting Started

This project is a starting point for a Flutter application.
A few resources to get you started if this is your first Flutter project:
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)


