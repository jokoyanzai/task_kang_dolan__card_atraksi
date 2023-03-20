import 'package:flutter/material.dart';

class ItemAtraksi extends StatelessWidget {
  const ItemAtraksi(
      {super.key,
      required this.poster,
      required this.judul,
      required this.tanggal,
      required this.rating,
      required this.like});

  final String poster;
  final String judul;
  final String tanggal;
  final String rating;
  final String like;
  final double radius = 6;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 172,
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Row(
        children: [
          Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(radius)),
              child: Image.asset(poster)),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul, 
                  style: styleJudul(), 
                  maxLines: 2, 
                  overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: 8),
                Text(tanggal, style: styleTanggal()),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.yellow,
                    ),
                    Text("$rating ($like orang menyukai ini)",
                        style: styleRatingLike())
                  ],
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: styleOutlinedButton(),
                    child: Text(
                      "Beli Tiket",
                      style: styleTextTombolBeli(),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle styleTextTombolBeli() =>
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w500);

  ButtonStyle styleOutlinedButton() {
    return ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.red),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))),
        side:
            MaterialStateProperty.all(const BorderSide(color: Colors.red, width: 1)),
        minimumSize: MaterialStateProperty.all(const Size(129, 25)));
  }

  TextStyle styleRatingLike() {
    return const TextStyle(
        fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xff686868));
  }

  TextStyle styleJudul() =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);
  TextStyle styleTanggal() =>
      const TextStyle(fontSize: 11, fontWeight: FontWeight.w400);
}
