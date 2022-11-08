import 'package:flutter/material.dart';
import 'package:flutter_sunmi_printer/flutter_sunmi_printer.dart';

class TextActivity extends StatelessWidget {
  //const MeuApp({Key? key}) : super(key: key);
  const TextActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2e3040),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171a2c),
        title: const Text('Impressão de texto'),
      ),
      body: SafeArea(
        //Text('QrCode', style: TextStyle(fontSize: 30.0, color: Colors.white),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('text typeface'),
            ),
            const SizedBox(
              width: 400.0,
              height: 1.0,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('char set'),
            ),
            const SizedBox(
              width: 400.0,
              height: 1.0,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Tamanho texto'),
            ),
            const SizedBox(
              width: 400.0,
              height: 1.0,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            //Colocar checkbox aqui
            const SizedBox(
              width: 400.0,
              height: 1.0,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            const SizedBox(
              width: 100.0,
              height: 220.0,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF692f36),
                              Color(0xFF8a2a32),
                              Color(0xFFc24450),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //print('teste0');

                        // Test regular text
                        SunmiPrinter.hr();
                        SunmiPrinter.text(
                          'Test Sunmi Printer',
                          styles: const SunmiStyles(align: SunmiAlign.center),
                        );
                        SunmiPrinter.hr();

                        // Test align
                        SunmiPrinter.text(
                          'left',
                          styles: const SunmiStyles(bold: true, underline: true),
                        );
                        SunmiPrinter.text(
                          'center',
                          styles:
                          const SunmiStyles(bold: true, underline: true, align: SunmiAlign.center),
                        );
                        SunmiPrinter.text(
                          'right',
                          styles: const SunmiStyles(bold: true, underline: true, align: SunmiAlign.right),
                        );

                        // Test text size
                        SunmiPrinter.text('Extra small text',
                            styles: const SunmiStyles(size: SunmiSize.xs));
                        SunmiPrinter.text('Medium text', styles: const SunmiStyles(size: SunmiSize.md));
                        SunmiPrinter.text('Large text', styles: const SunmiStyles(size: SunmiSize.lg));
                        SunmiPrinter.text('Extra large text',
                            styles: const SunmiStyles(size: SunmiSize.xl));

                        // Test row
                        SunmiPrinter.row(
                          cols: [
                            SunmiCol(text: 'col1', width: 4),
                            SunmiCol(text: 'col2', width: 4, align: SunmiAlign.center),
                            SunmiCol(text: 'col3', width: 4, align: SunmiAlign.right),
                          ],
                        );

                        // Test image

                        /*
                        ByteData bytes = await rootBundle.load('assets/rabbit_black.jpg');
                        final buffer = bytes.buffer;
                        final imgData = base64.encode(Uint8List.view(buffer));
                        SunmiPrinter.image(imgData);
                        */

                        SunmiPrinter.emptyLines(5);
                        //print('teste1');
                      },
                      child: const Text('Imprimir'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






