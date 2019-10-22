import 'dart:async';

import 'package:bloc_provider/bloc_provider.dart';
import 'package:flutter/material.dart';
import 'package:nowart/ui/page/top/top_page.dart';
import 'package:rxdart/rxdart.dart';

class MapContentsBloc extends Bloc {
  MapContentsBloc() {
    _widgets.stream.transform(
      StreamTransformer<List<Widget>, Widget>.fromHandlers(
        handleData: (List<Widget> data, EventSink<Widget> sink) {
          sink.add(data.last);
        },
      ),
    ).pipe(_currentWidget);
  }

  final BehaviorSubject<List<Widget>> _widgets = BehaviorSubject<List<Widget>>.seeded(
    <Widget>[
      TopPage.create(),
    ],
  );

  final BehaviorSubject<Widget> _currentWidget = BehaviorSubject<Widget>();

  Stream<Widget> get currentWidget => _currentWidget.stream;

  void push(Widget widget) {
    _widgets.sink.add(
      _widgets.value..add(widget),
    );
  }

  bool pop() {
    if (_widgets.value.length == 1) {
      return true;
    }

    if (_widgets.value.isNotEmpty) {
      _widgets.sink.add(
        _widgets.value..removeLast(),
      );
    } else {
      return true;
    }
    return false;
  }

  @override
  void dispose() {
    _widgets.close();
    _currentWidget.close();
  }
}
