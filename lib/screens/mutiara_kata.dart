import 'package:flutter/material.dart';

const textStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

class MutiaraKata extends StatelessWidget {
  static const id = 'mutiara_kata';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mutiara Kata'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text(
                      'Mutiara Kata Pengerusi',
                      style: TextStyle(
                        color: Colors.indigo[800],
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Image(
                      height: 250,
                      image: AssetImage('assets/ds.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Yayasan Prihatin Nasional (PRIHATIN) ditubuhkan dengan matlamat mahu memanifestasi rasa syukur dan sifat saling membantu kepada yang memerlukan menerusi aktiviti kebajikan dan kesukarelawanan yang dilaksanakan.',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dengan peluang dan manfaat yang telah diberikan, sewajarnya saya mengucapkan tahniah kepada PRIHATIN kerana telah berjaya melebar luas peluang dan aksessibiliti kebajikan, khususnya dalam menterjemah aspirasi kerajaan untuk membantu rakyat kurang berkemampuan terutama dalam bidang pendidikan, kini tercapai.',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pada hari ini, pelbagai transformasi pendidikan tinggi global telah berlaku dengan begitu pesat sekali. Arus dari ledakan globalisasi telah menjadi daya penggerak yang membentuk hala tuju baharu pengajian tinggi dunia. Lantaran, kita tidak mahu anak-anak kita yang layak ini tidak dibantu dan diberi peluang untuk meneruskan pelajaran mereka hanya kerana jurang pendapatan dan kemiskinan. Ini kerana satu hari nanti, mereka inilah yang akan menjadi generasi peneraju legasi masa depan negara.',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Janganlah kita biarkan kemiskinan menjadi warisan kita. Saya amat tersentuh sekali, kerana, saya sendiri tidak mahu melihat rakyat dan negara ini menjadi miskin. Dan di sinilah peranan PRIHATIN selaku penggerak utama membantu kerajaan dalam menyediakan pelbagai bantuan kepada golongan miskin dan tidak berkemampuan ke arah kehidupan yang lebih baik.',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Atas dasar kesedaran dan cakna kepada golongan muda terutamanya golongan mahasiswa, PRIHATIN kini berusaha mengumpul dana untuk disalurkan sebagai dermasiswa dan bentuk bantuan lain kepada kumpulan sasar termasuk pemimpin-pemimpin pelajar yang kurang berkemampuan dari segi kewangan.',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Saya juga sentiasa mengharapkan sokongan dan sumbangan dari pelbagai pihak termasuk agensi kerajaan, GLC, korporat dan individu perseorangan dalam membantu dan menjayakan misi PRIHATIN. Semua pihak memainkan peranan yang tidak kurang pentingnya sebagai salah satu corporate social responsibility (CSR) mereka dalam membantu pihak PRIHATIN menjana kewangan untuk disalurkan ke Tabung Pendidikan Anak Bangsa dan Dana Prihatin. ',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Salam PRIHATIN,',
                    style: textStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'YB DATO’ SRI ISMAIL SABRI BIN YAAKOB',
                    style: TextStyle(
                      color: Colors.indigo[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Menteri Kanan Pertahanan Malaysia Merangkap',
                    style: TextStyle(
                      color: Colors.indigo[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Pengerusi Yayasan Prihatin Nasional',
                    style: TextStyle(
                      color: Colors.indigo[800],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'KAMI PRIHATIN ❤️ WE CARE',
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
