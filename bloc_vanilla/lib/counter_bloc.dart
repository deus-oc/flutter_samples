import 'dart:async';

import 'package:bloc_vanilla/counter_event.dart';

class CounterBloc {
  int _counter = 0;

  // Stream controller is like a box, which is two holes
  final _counterStateController = StreamController<int>();

  // Assume this is connected to one hole, for taking inputs
  // Input -> Sink
  StreamSink<int> get _inCounter => _counterStateController.sink;

  // And, this is connected to the other hole, for getting the output
  // Output -> Stream
  // NOTICE: This is public for the reason that we want to access
  // it from outside this class
  Stream<int> get counter => _counterStateController.stream;

  // Whenever there is an input to the Sink, it will be automatically
  // outputted from the Stream

  final _counterEventController = StreamController<CounterEvent>();

  // Exposing this to get the events as an input
  StreamSink<CounterEvent> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    // Whenever there is a new event, we map it to the state
    // in order to update it.
    _counterEventController.stream.listen(_mapEventToState);
  }

  // Mapping events to state
  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent)
      _counter++;
    else
      _counter--;

    // Adding it to the state sink
    _inCounter.add(_counter);
  }

  // Close the controllers in order to prevent any
  // memory leaks
  void dispose() {
    _counterEventController.close();
    _counterStateController.close();
  }
}
