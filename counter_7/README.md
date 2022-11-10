# counter_7



1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.<br>
Stateless widget adalah widget yang tidak akan bereaksi atau berubah terhadap user interaction.<br> Sedangkan stateful widget adalah widget yang akan bereaksi atau berubah terhadap user interaction.
2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.<br>
Widget yang digunakan dalam proyek kali ini adalah text widget yang berfungsi untuk Text dan TextStyle untuk menetapkan teks yang muncul pada aplikasi dengan style tertentu. Lalu, widget interactivity yaitu Floating action button untuk fasilitasi user interaction.
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.<br>
setState() berfungsi agar flutter memberikan informasi bahwa terdapat sebuah state yang berubah sehingga akan terjadi perubahan yang dilihat oleh user. Dalam tugas ini, variabel yang terdampak adalah counter.
4. Jelaskan perbedaan antara const dengan final.<br>
Perbedaan const dan final adalah saat compilte time. const akan membuat sebuah variabel menjadi frozen dan immutable saat compile time.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas. <br>
- Membuat sebuah program Flutter baru dengan nama counter_7. <br>
Menggunakan perintah `flutter create counter_7` di cmd pada direktori yang diinginkan.
- Mengimplementasikan logika counter ganjil dan genap<br>
Menambahkan fungsi decrement sebagai berikut:
```py 
  void _decrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter > 0) {
        _counter--;
      }
    });
  }
  ```
  Menambahkan if else saat menampilkan counter ganjil dan genap sebagai berikut:
  ```py
   children: <Widget>[
              _counter % 2 == 0
                  ? const Text(
                      'GENAP',
                      style: TextStyle(color: Colors.red),
                    )
                  : const Text(
                      'GANJIL',
                      style: TextStyle(color: Colors.blue),
                    ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
```
Membuat layouting dan floating action button increment dan decrement sebagai berikut:
```py
floatingActionButton: Stack(
          children: [
            Positioned(
              left: 40,
              bottom: 10,
              child: FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 10,
              child: FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            )
          ],
        )
```

 