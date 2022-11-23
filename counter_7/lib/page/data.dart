import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/mywatchlist_page.dart';


class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text("counter_7"),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyDataPage()),
                  );
                },
              ),
              ListTile(
                      title: const Text('My Watch List'),
                      onTap: () {
                        // Route menu ke halaman My Watch List
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                        );
                      },
                    ),
            ],
          ),
        ),
        body: ListView.builder(
            itemCount: TampilBudget.contain.length,
            itemBuilder: (context, index) {
              final item = TampilBudget.contain[index];
              return ListTile(
                title: Text(item.namaJudul),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.nominal.toString()),
                      Text(item.jenisBudget)
                    ]),
              );
            }));
  }
}