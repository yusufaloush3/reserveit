import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerModals {
  String? id;
  String? name;
  String? email;
  AddressModals? addressModals;

  MarkerModals({
    this.id,
    this.name,
    this.email,
    this.addressModals,
  });

  MarkerModals.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    addressModals = json['addressModals'];
  }
}

class AddressModals {
  String? street;
  String? suite;
  String? city;
  String? zipCode;
  Geo? geo;

  AddressModals({
    this.street,
    this.suite,
    this.city,
    this.geo,
    this.zipCode,
  });

  AddressModals.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    geo = json['geo'];
    zipCode = json['zipCode'];
  }
}

class Geo {
  String? lat;
  String? long;

  Geo({
    this.lat,
    this.long,
  });

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
  }
}

class PlacedMapScreen extends StatefulWidget {
  PlacedMapScreen({Key? key}) : super(key: key);

  @override
  State<PlacedMapScreen> createState() => _PlacedMapScreenState();
}

class _PlacedMapScreenState extends State<PlacedMapScreen> {
  var myMarker = HashSet<Marker>();

  late GoogleMapController mapController;

  List<MarkerModals> listOfMarker = [
    MarkerModals(
        id: '1',
        name: 'car1',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.010025079622235', long: '31.422945629799504'))),
    MarkerModals(
        id: '2',
        name: 'car2',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.383360390731738', long: '31.726367406988462'))),
    MarkerModals(
        id: '3',
        name: 'car3',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.218752816997906', long: '31.829235708515686'))),
    MarkerModals(
        id: '4',
        name: 'car4',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.217871989670396', long: '31.760828649731764'))),
    MarkerModals(
        id: '5',
        name: 'car5',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.25554085948311', long: '31.60910871245252'))),
    MarkerModals(
        id: '6',
        name: 'car6',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.18859440206293', long: '31.4955493966214'))),
    MarkerModals(
        id: '7',
        name: 'car7',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.16960270001194', long: '31.400697490717615'))),
    MarkerModals(
        id: '8',
        name: 'car8',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.209833818745324', long: '31.371798811087178'))),
    MarkerModals(
        id: '9',
        name: 'car9',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.220295467583103', long: '31.357579039579583'))),
    MarkerModals(
        id: '10',
        name: 'car10',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: ' 31.2643990440557', long: '31.333879613681393'))),
    MarkerModals(
        id: '11',
        name: 'car11',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.314322981558718', long: '31.370821110477834'))),
    MarkerModals(
        id: '12',
        name: 'car12',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.301141416004842', long: '31.35215293572298'))),
    MarkerModals(
        id: '13',
        name: 'car13',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '  31.13012134040107', long: '31.330248676039023'))),
    MarkerModals(
        id: '14',
        name: 'car14',
        email: 'car1@gmail.com',
        addressModals: AddressModals(
            street: 'kom eldarby',
            suite: 'Apt. 556',
            city: 'mansoura',
            geo: Geo(lat: '31.044337958620048', long: ' 31.38741310698099'))),
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      listOfMarker.forEach((element) {
        myMarker.add(
          Marker(
            markerId: MarkerId(element.id.toString()),
            position: LatLng(
                double.parse(element.addressModals!.geo!.lat.toString()),
                double.parse(element.addressModals!.geo!.long.toString())),
            infoWindow: InfoWindow(
              title: element.name,
              snippet: element.addressModals!.street,
              onTap: () {
                print('working click on marker id marker${element.id}');
              },
            ),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(31.010025079622235, 31.422945629799504),
          zoom: 11.0,
        ),
        markers: myMarker,
      ),
    );
  }
}
