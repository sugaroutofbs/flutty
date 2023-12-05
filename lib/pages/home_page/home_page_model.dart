import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/widgets/strength_indicator/strength_indicator_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool isFetchingDevices = false;

  bool isBluetoothEnabled = false;

  List<BTDevicesStruct> foundDevices = [];
  void addToFoundDevices(BTDevicesStruct item) => foundDevices.add(item);
  void removeFromFoundDevices(BTDevicesStruct item) =>
      foundDevices.remove(item);
  void removeAtIndexFromFoundDevices(int index) => foundDevices.removeAt(index);
  void insertAtIndexInFoundDevices(int index, BTDevicesStruct item) =>
      foundDevices.insert(index, item);
  void updateFoundDevicesAtIndex(
          int index, Function(BTDevicesStruct) updateFn) =>
      foundDevices[index] = updateFn(foundDevices[index]);

  BTDevicesStruct? connectedDevices;
  void updateConnectedDevicesStruct(Function(BTDevicesStruct) updateFn) =>
      updateFn(connectedDevices ??= BTDevicesStruct());

  bool? isFetchingConnectedDevices = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel1;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    strengthIndicatorModel1 =
        createModel(context, () => StrengthIndicatorModel());
    strengthIndicatorModel2 =
        createModel(context, () => StrengthIndicatorModel());
  }

  void dispose() {
    unfocusNode.dispose();
    strengthIndicatorModel1.dispose();
    strengthIndicatorModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
