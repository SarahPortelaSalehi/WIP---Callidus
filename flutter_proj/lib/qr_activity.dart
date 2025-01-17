import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeActivity extends StatelessWidget {
  //const MeuApp({Key? key}) : super(key: key);
  const QRCodeActivity({super.key});
  final String data = '2067a';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2e3040),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171a2c),
        title: const Text('QrCode'),
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
              child: const Text('QrCode'),
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
              child: const Text('Qtd. Impressão'),
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
              child: const Text('QR-Code tamanho'),
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
              child: const Text('Nível de correção'),
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
              child: const Text('Alinhamento'),
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
              child: const Text('Cortar Papel'),
            ),
            const SizedBox(
              width: 200.0,
              height: 240.0,
            ),
            //Texto
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black, fontSize: 20),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.zero)),
                maxLines: 1,
              ),
            ),
            Center(
              child: Column(
                children: <Widget> [
                  Text(
                    'Código gerado com a palavra: $data',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),

                  QrImage(
                    data: data,
                    size: 180,
                    foregroundColor: Colors.white,
                    //backgroundColor: Colors.black,
                    gapless: true,
                    errorCorrectionLevel: QrErrorCorrectLevel.H,
                  ),
                ],
              ),
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
                      onPressed: () {},
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
