import 'package:intl/intl.dart';
import 'package:osiguranje/models/news.dart';

var now = new DateTime.now();
var formatter = new DateFormat('yyyy-MM-dd');
String formatted = formatter.format(now);

List<News> news = [

  new News(1, "The payment of the largest post-war damage in BiH was made ",
      "Emona osiguranje dd Sarajevo has made an advance payment in the amount of KM 5,000,000 for the damage to the company Bingo doo Tuzla at the facility in Mostar, which was destroyed in a fire. The rest of the amount of damage will be paid after the final finding of the competent authorities. on 11.08.2017, was visited by the insurer Bingo doo Tuzla, where the mutual "
          "satisfaction and readiness for further business cooperation. Please note that Emona osiguranje dd Sarajevo in late June of 2017 has already paid B6 million to the insured Bingo doo Tuzla for damages on the shelf that provided the goods in the facility.",
      formatted,
      "http://www.sarajevoosiguranje.ba/wp-content/uploads/bfi_thumb/bingo-34e9qj0xmnotk5eqy4jy80.jpg"),

  new News(2, "Emona osiguranje zadržala lidersku poziciju",
      "Emona osiguranje je zadržalo lidersku poziciju  na tržištu osiguranja u Bosni i Hercegovini, sa premijom od 29.220.501 KM nakon prvih šest mjeseci 2017. godine. Premije u ovoj osiguravajućoj kući su povećane za više od pet miliona KM u odnosu na prvih pet mjeseci iste godine, kada su iznosile 24 miliona KM. Portal Biznisinfo podsjeća da je na drugom mjestu oosiguravajućih društava u FBiH Uniqa osiguranje sa 29.162.928 KM ostvarenih premija u prvoj polovici ove godine. Uniqa osiguranje je prošle i početkom ove godine bilo tržišni lider, "
          "prije nego se Emona osiguranje vratilo na tu poziciju. Na trećem mjestu je Euroherc osiguranje s iznosom premije od 27.863.648 KM, a slijede BSO (25.131.956), Croatia (25.077.867), Triglav (22.622.501), Grawe (19.080.051), Merkur BH (14.885.058), Central (12.160.367), ASA (11.710.013), VGT (9.427.769), Zovko (9.418.943) i Camelia osiguranje (5.720.548). "
          "Ukupna premijera osiguravajućih društava u Federaciji za pola godine iznosi 241.482.151 KM, u odnosu na 225.012.587 iz istog perioda 2016. Najveći dioničar u Emona osiguranju je Federacija BiH sa oko 45,5 posto vlasništva.",
      formatted,
      "images/lider.jpg"),

  new News(3,
      "Izvještaj o događaju koji bitno utiče na finansijsko poslovanje emitenta",
      "Društvo za osiguranje EMONA-OSIGURANJE d.d. Sarajevo. U skladu sa članom 4. "
          "Pravilnika o sadržaju, rokovima i načinu objavljivanja izvještaja emitenta objavljujemo: I Z V J E Š T A J O DOGAĐAJU KOJI BITNO UTIČE NA FINANSIJSKO POSLOVANJE EMITENTA",
      formatted, "images/finansijskoposlovanje.jpg"),
];