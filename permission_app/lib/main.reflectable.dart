// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.9

import 'dart:core';
import 'dart:ui' as prefix7;
import 'main.dart' as prefix1;
import 'package:flutter/src/foundation/diagnostics.dart' as prefix4;
import 'package:flutter/src/foundation/key.dart' as prefix5;
import 'package:flutter/src/widgets/framework.dart' as prefix6;
import 'package:meta/meta.dart' as prefix2;
import 'package:refsample/models/claims.dart' as prefix3;
import 'package:refsample/models/reflector.dart' as prefix0;

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
            r'MyHomePage',
            r'.MyHomePage',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[0, 2, 4],
            const <int>[5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 2, 3],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => ({key, title}) =>
                  b ? prefix1.MyHomePage(key: key, title: title) : null
            },
            0,
            0,
            const <int>[],
            const <Object>[prefix0.reflector],
            null),
        r.NonGenericClassMirrorImpl(
            r'MyHomePageState',
            r'.MyHomePageState',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[18, 19, 20],
            const <int>[
              21,
              6,
              7,
              22,
              9,
              23,
              24,
              25,
              26,
              27,
              28,
              29,
              30,
              31,
              32,
              33,
              34,
              35,
              18,
              19
            ],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix1.MyHomePageState() : null},
            0,
            1,
            const <int>[],
            const <Object>[prefix0.reflector],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'title', 33797, 0, const prefix0.Reflector(), -1,
            2, 2, const <int>[], const []),
        r.VariableMirrorImpl(r'key', 33797, -1, const prefix0.Reflector(), -1,
            3, 3, const <int>[], const []),
        r.MethodMirrorImpl(r'createState', 4325378, 0, -1, 4, 5, const <int>[0],
            const <int>[], const prefix0.Reflector(), const <Object>[override]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 0, 3),
        r.MethodMirrorImpl(r'', 128, 0, -1, 0, 0, const <int>[],
            const <int>[0, 1], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'==',
            131074,
            -1,
            -1,
            6,
            6,
            const <int>[],
            const <int>[2],
            const prefix0.Reflector(),
            const <Object>[override, prefix2.nonVirtual]),
        r.MethodMirrorImpl(
            r'toString',
            131074,
            -1,
            -1,
            7,
            7,
            const <int>[],
            const <int>[3],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1,
            const <int>[], const <int>[4], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'hashCode',
            131075,
            -1,
            -1,
            8,
            8,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[override, prefix2.nonVirtual]),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, 9, 9, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'toStringShort',
            131074,
            -1,
            -1,
            7,
            7,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'toDiagnosticsNode',
            131074,
            -1,
            -1,
            10,
            10,
            const <int>[],
            const <int>[5, 6],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'debugFillProperties',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[7],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'toStringShallow',
            131074,
            -1,
            -1,
            7,
            7,
            const <int>[],
            const <int>[8, 9],
            const prefix0.Reflector(),
            const []),
        r.MethodMirrorImpl(r'toStringDeep', 131074, -1, -1, 7, 7, const <int>[],
            const <int>[10, 11, 12], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'debugDescribeChildren',
            4325378,
            -1,
            -1,
            12,
            13,
            const <int>[10],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected]),
        r.ImplicitGetterMirrorImpl(const prefix0.Reflector(), 1, 16),
        r.MethodMirrorImpl(
            r'createElement',
            131074,
            -1,
            -1,
            14,
            14,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'incrementCounter',
            262146,
            1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[const prefix3.Claims("test")]),
        r.MethodMirrorImpl(
            r'build',
            131074,
            1,
            -1,
            15,
            15,
            const <int>[],
            const <int>[13],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, const <int>[], const <int>[],
            const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'==', 131074, -1, -1, 6, 6, const <int>[],
            const <int>[14], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, 8, 8, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'toStringShort', 131074, -1, -1, 7, 7,
            const <int>[], const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(
            r'toDiagnosticsNode',
            131074,
            -1,
            -1,
            10,
            10,
            const <int>[],
            const <int>[15, 16],
            const prefix0.Reflector(),
            const []),
        r.MethodMirrorImpl(
            r'debugFillProperties',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[17],
            const prefix0.Reflector(),
            const <Object>[override]),
        r.MethodMirrorImpl(
            r'initState',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected, prefix2.mustCallSuper]),
        r.MethodMirrorImpl(
            r'didUpdateWidget',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[18],
            const prefix0.Reflector(),
            const <Object>[prefix2.mustCallSuper, prefix2.protected]),
        r.MethodMirrorImpl(
            r'reassemble',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected, prefix2.mustCallSuper]),
        r.MethodMirrorImpl(
            r'setState',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[19],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected]),
        r.MethodMirrorImpl(
            r'deactivate',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected, prefix2.mustCallSuper]),
        r.MethodMirrorImpl(
            r'dispose',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected, prefix2.mustCallSuper]),
        r.MethodMirrorImpl(
            r'didChangeDependencies',
            262146,
            -1,
            -1,
            11,
            11,
            const <int>[],
            const <int>[],
            const prefix0.Reflector(),
            const <Object>[prefix2.protected, prefix2.mustCallSuper]),
        r.MethodMirrorImpl(r'widget', 3, -1, -1, -1, -1, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'context', 131075, -1, -1, 16, 16, const <int>[],
            const <int>[], const prefix0.Reflector(), const []),
        r.MethodMirrorImpl(r'mounted', 131075, -1, -1, 6, 6, const <int>[],
            const <int>[], const prefix0.Reflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(r'key', 45062, 4, const prefix0.Reflector(), -1,
            17, 17, const <int>[], const [], null, #key),
        r.ParameterMirrorImpl(r'title', 46086, 4, const prefix0.Reflector(), -1,
            2, 2, const <int>[], const [], null, #title),
        r.ParameterMirrorImpl(r'other', 32774, 5, const prefix0.Reflector(), -1,
            18, 18, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(
            r'minLevel',
            47110,
            6,
            const prefix0.Reflector(),
            -1,
            19,
            19,
            const <int>[],
            const [],
            prefix4.DiagnosticLevel.info,
            #minLevel),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            7,
            const prefix0.Reflector(),
            -1,
            20,
            20,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(r'name', 45062, 11, const prefix0.Reflector(), -1,
            21, 21, const <int>[], const [], null, #name),
        r.ParameterMirrorImpl(r'style', 45062, 11, const prefix0.Reflector(),
            -1, 22, 22, const <int>[], const [], null, #style),
        r.ParameterMirrorImpl(
            r'properties',
            32774,
            12,
            const prefix0.Reflector(),
            -1,
            23,
            23,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(r'joiner', 47110, 13, const prefix0.Reflector(),
            -1, 7, 7, const <int>[], const [], ', ', #joiner),
        r.ParameterMirrorImpl(
            r'minLevel',
            47110,
            13,
            const prefix0.Reflector(),
            -1,
            19,
            19,
            const <int>[],
            const [],
            prefix4.DiagnosticLevel.debug,
            #minLevel),
        r.ParameterMirrorImpl(
            r'prefixLineOne',
            47110,
            14,
            const prefix0.Reflector(),
            -1,
            7,
            7,
            const <int>[],
            const [],
            '',
            #prefixLineOne),
        r.ParameterMirrorImpl(
            r'prefixOtherLines',
            45062,
            14,
            const prefix0.Reflector(),
            -1,
            21,
            21,
            const <int>[],
            const [],
            null,
            #prefixOtherLines),
        r.ParameterMirrorImpl(
            r'minLevel',
            47110,
            14,
            const prefix0.Reflector(),
            -1,
            19,
            19,
            const <int>[],
            const [],
            prefix4.DiagnosticLevel.debug,
            #minLevel),
        r.ParameterMirrorImpl(r'context', 32774, 19, const prefix0.Reflector(),
            -1, 24, 24, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'other', 32774, 21, const prefix0.Reflector(),
            -1, 18, 18, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'name', 45062, 24, const prefix0.Reflector(), -1,
            21, 21, const <int>[], const [], null, #name),
        r.ParameterMirrorImpl(r'style', 45062, 24, const prefix0.Reflector(),
            -1, 22, 22, const <int>[], const [], null, #style),
        r.ParameterMirrorImpl(
            r'properties',
            32774,
            25,
            const prefix0.Reflector(),
            -1,
            23,
            23,
            const <int>[],
            const [],
            null,
            null),
        r.ParameterMirrorImpl(r'oldWidget', 6, 27, const prefix0.Reflector(),
            -1, -1, -1, const <int>[], const [], null, null),
        r.ParameterMirrorImpl(r'fn', 6, 29, const prefix0.Reflector(), -1, 25,
            25, const <int>[], const [], null, null)
      ],
      <Type>[
        prefix1.MyHomePage,
        prefix1.MyHomePageState,
        String,
        prefix5.Key,
        const m.TypeValue<prefix6.State<prefix1.MyHomePage>>().type,
        prefix6.State,
        bool,
        String,
        int,
        Type,
        prefix4.DiagnosticsNode,
        const m.TypeValue<void>().type,
        const m.TypeValue<List<prefix4.DiagnosticsNode>>().type,
        List,
        prefix6.StatefulElement,
        prefix6.Widget,
        prefix6.BuildContext,
        prefix5.Key,
        Object,
        prefix4.DiagnosticLevel,
        Invocation,
        String,
        prefix4.DiagnosticsTreeStyle,
        prefix4.DiagnosticPropertiesBuilder,
        prefix6.BuildContext,
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
        r'toStringShallow': (dynamic instance) => instance.toStringShallow,
        r'toStringDeep': (dynamic instance) => instance.toStringDeep,
        r'debugDescribeChildren': (dynamic instance) =>
            instance.debugDescribeChildren,
        r'key': (dynamic instance) => instance.key,
        r'createElement': (dynamic instance) => instance.createElement,
        r'createState': (dynamic instance) => instance.createState,
        r'title': (dynamic instance) => instance.title,
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
        r'build': (dynamic instance) => instance.build
      },
      {},
      <m.LibraryMirror>[
        r.LibraryMirrorImpl(r'', Uri.parse(r'reflectable://0/'),
            const prefix0.Reflector(), const <int>[], {}, {}, const [], null)
      ],
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
