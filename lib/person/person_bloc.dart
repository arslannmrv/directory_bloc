import 'package:directory_bloc/person/person_event.dart';
import 'package:directory_bloc/model/person.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, List<Person>> {

  PersonBloc(List<Person> initialState) : super(initialState);


  Stream<List<Person>> mapEventToState(PersonEvent event) async* {
    switch (event.eventType) {
      case EventType.add:
        List<Person> newState = List.from(state);
        if (event.person != null) {
          newState.add(event.person);
        }
        yield newState;
        break;
      default:
        throw Exception("Event not found $event");
    }
  }
}

