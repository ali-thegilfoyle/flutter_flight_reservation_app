import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'ticket.dart';

class TicketData extends ChangeNotifier {
  String from;
  String to;
  String date;
  // String returnDate;
  int travelers;
  String bookingClass;
  String time;
  String duration;
  String flightNumber;
  String seatNumber = '';
  int price;
  String gateNumber;

  List<Ticket> _tickets = [
    Ticket(
      from: 'Karachi',
      to: 'Istanbul',
      date: 'May 23',
      travelers: 1,
      bookingClass: 'Economy',
      time: '9:25 PM',
      duration: '1 h 23 m',
      flightNumber: 'KH23',
      seatNumber: '23B',
      price: 123,
      gateNumber: 'G3',
    ),
  ];

  UnmodifiableListView<Ticket> get tickets {
    return UnmodifiableListView(_tickets);
  }

  int get totalTickets {
    return _tickets.length;
  }

  void addTicket() {
    _tickets.add(Ticket(
      from: from,
      to: to,
      date: date,
      travelers: travelers,
      bookingClass: bookingClass,
      time: time,
      duration: duration,
      flightNumber: flightNumber,
      seatNumber: seatNumber,
      price: price,
      gateNumber: gateNumber,
    ));
    notifyListeners();
  }

  void addRouteData(
      String from, String to, String date, int travelers, String bookingClass) {
    this.from = from;
    this.to = to;
    this.date = date;
    this.travelers = travelers;
    this.bookingClass = bookingClass;
    notifyListeners();
  }

  void addflightData(
      String flightNumber, String duration, String time, int price) {
    this.flightNumber = flightNumber;
    this.duration = duration;
    this.time = time;
    this.price = price;
    notifyListeners();
  }

  addSeat(String seatNumber) {
    this.seatNumber = seatNumber;
    notifyListeners();
  }

  addGateNumber(String gateNumber) {
    this.gateNumber = gateNumber;
    notifyListeners();
  }
}
