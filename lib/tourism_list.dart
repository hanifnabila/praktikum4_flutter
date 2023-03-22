import 'package:flutter/material.dart';
import 'package:layout/list_item.dart';
import 'package:layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'detail_screen.dart';
import 'model/tourism_place.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      openingDays: 'Open Everyday',
      openingHours: '08.00 - 21.00',
      ticketPrice: 'Rp 10.000,-',
      description: 'Submarine Monument, or abbreviated as Monkasel, is a submarine museum found in Embong Kaliasin, Genteng, Surabaya. Located in the city center, namely on Jalan Pemuda, right next to Plaza Surabaya, and there is an access door to access the mall from inside the monument.',
      gallery: ['assets/images/monkasel_2.jpg', 'assets/images/monkasel_3.jpg','assets/images/monkasel_4.jpg', 'assets/images/monkasel_5.jpg'],

    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpg',
      openingDays: 'Open Everyday',
      openingHours: '07.00 - 20.00',
      ticketPrice: 'Rp 10.000,-',
      description: 'Sanggar Agung Temple or Hong San Tang Temple is a temple in the city of Surabaya. The address is on Jalan Sukolilo Number 100, Ria Kenjeran Beach, Surabaya. This temple, in addition to being a place of worship for adherents of Tridharma, is also a tourist destination for tourists.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpg',
      openingDays: 'Open Everyday',
      openingHours: '09.00 - 18.00',
      ticketPrice: 'Free',
      description: 'House of Sampoerna is a tobacco museum and Sampoerna headquarters located in Surabaya. The architectural style of its main building which is influenced by the Dutch colonial style was built in 1862 and is now a historical site.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpg',
      openingDays: 'Tuesday - Sunday',
      openingHours: '08.00 - 15.00',
      ticketPrice: 'Rp 5.000,-',
      description: 'Museum Ten November Surabaya is one of the museums located in the city of Surabaya, built in 1945. The museum was built with the aim of studying and deepening the Battle of November 1945, the November ten museum is located at Jalan Pahlawan, Surabaya.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby.jpg',
      openingDays: 'Open Everyday',
      openingHours: '24 hours',
      ticketPrice: 'Free',
      description: 'The Sura and Baya Statue is a statue which is the symbol of the city of Surabaya. This statue is in front of the Surabaya Zoo. This statue consists of two animals namely crocodiles and sharks which inspire the names of the city of Surabaya: Sura and Baya Fish.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],
    ),
    TourismPlace(
      name: 'Kebun Binatang Surabaya',
      location: 'Jl. Setail No.1, Darmo, Kec. Wonokromo',
      imageAsset: 'assets/images/kebunbinatang.jpg',
      openingDays: 'Open Everday',
      openingHours: '08.00 - 16.00',
      ticketPrice: 'Rp 15.000,-',
      description: 'Surabaya Zoo is one of the popular zoos in Indonesia and is located in Surabaya. KBS is the most complete zoo in Southeast Asia, in it there are more than 230 different species of animals consisting of more than 2179 animals.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],

    ),
    TourismPlace(
      name: 'Alun-Alun Surabaya',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/alunalun.jpg',
      openingDays: 'Open Everyday',
      openingHours: '07.00 - 22.00',
      ticketPrice: 'Rp 5.000,-',
      description: 'Alun-alun Surabaya is a public square located in the heart of Surabaya, the second-largest city in Indonesia. It is commonly referred to as "Alun-alun Pemerintah" or "Alun-alun Utara" to distinguish it from the other alun-alun (public square) located in the southern part of the city.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],
    ),
    TourismPlace(
      name: 'Museum 10 November',
      location: 'Jl Pahlawan',
      imageAsset: 'assets/images/museum.jpg',
      openingDays: 'Tuesday - Sunday',
      openingHours: '08.00 - 15.00',
      ticketPrice: 'Rp 5.000,-',
      description: 'Museum 10 November, also known as the Museum of Heroes 10 November, is a historical museum located in Surabaya, Indonesia. The museum was established to commemorate the Battle of Surabaya, which took place on November 10, 1945, during the Indonesian National Revolution.',
      gallery: ['assets/images/klenteng.jpg', 'assets/images/museum.jpg'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place,);
            }));
          },
          child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget){
                return ListItem(
                  place: place,
                  isDone: data.doneToursimPlaceList.contains(place),
                  onCheckboxClick: (bool? value){
                    setState((){
                      if(value!=null) {
                        value
                            ? data.doneToursimPlaceList.add(place)
                            : data.doneToursimPlaceList.remove(place);
                      }
                    });
                  },
            );
          })
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}