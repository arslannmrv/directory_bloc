import 'package:directory_bloc/events/person_event.dart';
import 'package:directory_bloc/model/person.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, List<Person>> {
  @override
  // ignore: deprecated_member_use
  List<Person> get initialState => List<Person>();

  @override
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
