import 'package:directory_bloc/model/person.dart';

enum EventType { add }

class PersonEvent {
  Person person;
  int personIdex;
  EventType eventType;

  PersonEvent();

  PersonEvent.add(Person person) {
    this.eventType = EventType.add;
    this.person = person;
  }
}
