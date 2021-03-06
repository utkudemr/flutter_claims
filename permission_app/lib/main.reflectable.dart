// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.9

import 'dart:core';
import 'dart:ui' as prefix7;
import 'package:flutter/src/foundation/diagnostics.dart' as prefix5;
import 'package:flutter/src/widgets/framework.dart' as prefix6;
import 'package:meta/meta.dart' as prefix4;
import 'package:refsample/models/claims.dart' as prefix3;
import 'package:refsample/models/reflector.dart' as prefix0;
import 'package:refsample/widgets/first_page.dart' as prefix1;
import 'package:refsample/widgets/secon_page.dart' as prefix2;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'MyHomePageState',
            r'.MyHomePageState',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[0, 1, 2, 3, 4],
            const <int>[
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              0,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              1,
              2,
              3
            ],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix1.MyHomePageState() : null},
            0,
            0,
            const <int>[],
            const <Object>[prefix0.reflector],
            null),
        r.NonGenericClassMirrorImpl(
            r'SecondPageState',
            r'.SecondPageState',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[22, 23, 24, 25, 26],
            const <int>[
              5,
              6,
              7,
              8,
              9,
              10,
              11,
              12,
              22,
              13,
              14,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              23,
              24,
              25
            ],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.SecondPageState() : null},
            1,
            1,
            const <int>[],
            const <Object>[prefix0.reflector],
            null)
      ],
      <m.DeclarationMirror>[
        r.MethodMirrorImpl(r'initState', 262146, 0, -1, 2, 2, const <int>[],
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(r'incrementCounter', 262146, 0, -1, 2, 2,
            const <int>[], const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'build',
            131074,
            0,
            -1,
            3,
            3,
            const <int>[],
            const <int>[0],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'floatButton',
            131075,
            0,
            -1,
            3,
            3,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[const prefix3.Claims("clickButton")]),
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, const <int>[], const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'==', 131074, -1, -1, 4, 4, const <int>[],
            const <int>[1], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'toString',
            131074,
            -1,
            -1,
            5,
            5,
            const <int>[],
            const <int>[2],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1,
            const <int>[], const <int>[3], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, 6, 6, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, 7, 7, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toStringShort', 131074, -1, -1, 5, 5,
            const <int>[], const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'toDiagnosticsNode',
            131074,
            -1,
            -1,
            8,
            8,
            const <int>[],
            const <int>[4, 5],
            const prefix0.Reflector(),
            const []),
        r.MethodMirrorImpl(
            r'debugFillProperties',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[6],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'didUpdateWidget',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[7],
            const prefix0.Reflector(),
            const <Object>[prefix4.mustCallSuper, prefix4.protected]),
        r.MethodMirrorImpl(
            r'reassemble',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix4.protected, prefix4.mustCallSuper]),
        r.MethodMirrorImpl(
            r'setState',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[8],
            const prefix0.Reflector(),
            const <Object>[prefix4.protected]),
        r.MethodMirrorImpl(
            r'deactivate',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix4.protected, prefix4.mustCallSuper]),
        r.MethodMirrorImpl(
            r'dispose',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix4.protected, prefix4.mustCallSuper]),
        r.MethodMirrorImpl(
            r'didChangeDependencies',
            262146,
            -1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix4.protected, prefix4.mustCallSuper]),
        r.MethodMirrorImpl(r'widget', 3, -1, -1, -1, -1, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'context', 131075, -1, -1, 9, 9, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'mounted', 131075, -1, -1, 4, 4, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'initState', 262146, 1, -1, 2, 2, const <int>[],
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.MethodMirrorImpl(
            r'incrementCounter',
            262146,
            1,
            -1,
            2,
            2,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[const prefix3.Claims("testa")]),
        r.MethodMirrorImpl(
            r'build',
            131074,
            1,
            -1,
            3,
            3,
            const <int>[],
            const <int>[9],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'floatButton',
            131075,
            1,
            -1,
            3,
            3,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[const prefix3.Claims("test2a")]),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, const <int>[], const <int>[],
            const prefix0.Reflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'context', 32774, 2, const prefix0.Reflector(),
            -1, 10, 10, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 5, const prefix0.Reflector(), -1,
            11, 11, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(
            r'minLevel',
            47110,
            6,
            const prefix0.Reflector(),
            -1,
            12,
            12,
            const <int>[],
            const [],
            prefix5.DiagnosticLevel.info,
            #minLevel),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            7,
            const prefix0.Reflector(),
            -1,
            13,
            13,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(r'name', 45062, 11, const prefix0.Reflector(), -1,
            14, 14, const <int>[], const [], null, #name),
        r.ParameterMirrorImpl(r'style', 45062, 11, const prefix0.Reflector(),
            -1, 15, 15, const <int>[], const [], null, #style),
        r.ParameterMirrorImpl(
            r'properties',
            32774,
            12,
            const prefix0.Reflector(),
            -1,
            16,
            16,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(r'oldWidget', 6, 13, const prefix0.Reflector(),
            -1, -1, -1, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'fn', 6, 15, const prefix0.Reflector(), -1, 17,
            17, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'context', 32774, 24, const prefix0.Reflector(),
            -1, 10, 10, const <int>[], const [], null, null)
      ],
      <Type>[
        prefix1.MyHomePageState,
        prefix2.SecondPageState,
        const m.TypeValue<void>().type,
        prefix6.Widget,
        bool,
        String,
        int,
        Type,
        prefix5.DiagnosticsNode,
        prefix6.BuildContext,
        prefix6.BuildContext,
        Object,
        prefix5.DiagnosticLevel,
        Invocation,
        String,
        prefix5.DiagnosticsTreeStyle,
        prefix5.DiagnosticPropertiesBuilder,
        prefix7.VoidCallback
      ],
      2,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'toStringShort': (dynamic instance) => instance.toStringShort,
        r'toDiagnosticsNode': (dynamic instance) => instance.toDiagnosticsNode,
        r'debugFillProperties': (dynamic instance) =>
            instance.debugFillProperties,
        r'initState': (dynamic instance) => instance.initState,
        r'didUpdateWidget': (dynamic instance) => instance.didUpdateWidget,
        r'reassemble': (dynamic instance) => instance.reassemble,
        r'setState': (dynamic instance) => instance.setState,
        r'deactivate': (dynamic instance) => instance.deactivate,
        r'dispose': (dynamic instance) => instance.dispose,
        r'didChangeDependencies': (dynamic instance) =>
            instance.didChangeDependencies,
        r'widget': (dynamic instance) => instance.widget,
        r'context': (dynamic instance) => instance.context,
        r'mounted': (dynamic instance) => instance.mounted,
        r'incrementCounter': (dynamic instance) => instance.incrementCounter,
        r'build': (dynamic instance) => instance.build,
        r'floatButton': (dynamic instance) => instance.floatButton
      },
      {},
      <m.LibraryMirror>[
        r.LibraryMirrorImpl(r'', Uri.parse(r'reflectable://0/'),
            const prefix0.Reflector(), const <int>[], {}, {}, const [], null),
        r.LibraryMirrorImpl(r'', Uri.parse(r'reflectable://1/'),
            const prefix0.Reflector(), const <int>[], {}, {}, const [], null)
      ],
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
