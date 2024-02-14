import '/flutter_flow/flutter_flow_util.dart';
import 'frm_borang_autoriti_sah_widget.dart' show FrmBorangAutoritiSahWidget;
import 'package:flutter/material.dart';

class FrmBorangAutoritiSahModel
    extends FlutterFlowModel<FrmBorangAutoritiSahWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtbahagianaras widget.
  FocusNode? txtbahagianarasFocusNode;
  TextEditingController? txtbahagianarasController;
  String? Function(BuildContext, String?)? txtbahagianarasControllerValidator;
  // State field(s) for txtpegawaibertugas widget.
  FocusNode? txtpegawaibertugasFocusNode;
  TextEditingController? txtpegawaibertugasController;
  String? Function(BuildContext, String?)?
      txtpegawaibertugasControllerValidator;
  // State field(s) for txtjawatan widget.
  FocusNode? txtjawatanFocusNode;
  TextEditingController? txtjawatanController;
  String? Function(BuildContext, String?)? txtjawatanControllerValidator;
  // State field(s) for txttarikhb1 widget.
  FocusNode? txttarikhb1FocusNode;
  TextEditingController? txttarikhb1Controller;
  String? Function(BuildContext, String?)? txttarikhb1ControllerValidator;
  // State field(s) for Switch1 widget.
  bool? switch1Value;
  // State field(s) for Switch2 widget.
  bool? switch2Value;
  // State field(s) for Switch3 widget.
  bool? switch3Value;
  // State field(s) for Switch4 widget.
  bool? switch4Value;
  // State field(s) for Switch5 widget.
  bool? switch5Value;
  // State field(s) for Switch6 widget.
  bool? switch6Value;
  // State field(s) for Switch7 widget.
  bool? switch7Value;
  // State field(s) for Switch8 widget.
  bool? switch8Value;
  // State field(s) for Switch9 widget.
  bool? switch9Value;
  // State field(s) for Switch10 widget.
  bool? switch10Value;
  DateTime? datePicked1;
  // State field(s) for txtjamb2 widget.
  FocusNode? txtjamb2FocusNode;
  TextEditingController? txtjamb2Controller;
  String? Function(BuildContext, String?)? txtjamb2ControllerValidator;
  // State field(s) for txtfld12 widget.
  FocusNode? txtfld12FocusNode;
  TextEditingController? txtfld12Controller;
  String? Function(BuildContext, String?)? txtfld12ControllerValidator;
  // State field(s) for txtfld13 widget.
  FocusNode? txtfld13FocusNode;
  TextEditingController? txtfld13Controller;
  String? Function(BuildContext, String?)? txtfld13ControllerValidator;
  // State field(s) for ttph_nama widget.
  FocusNode? ttphNamaFocusNode;
  TextEditingController? ttphNamaController;
  String? Function(BuildContext, String?)? ttphNamaControllerValidator;
  // State field(s) for ttph_tarikhb3 widget.
  FocusNode? ttphTarikhb3FocusNode;
  TextEditingController? ttphTarikhb3Controller;
  String? Function(BuildContext, String?)? ttphTarikhb3ControllerValidator;
  DateTime? datePicked2;
  DateTime? datePicked3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    txtbahagianarasFocusNode?.dispose();
    txtbahagianarasController?.dispose();

    txtpegawaibertugasFocusNode?.dispose();
    txtpegawaibertugasController?.dispose();

    txtjawatanFocusNode?.dispose();
    txtjawatanController?.dispose();

    txttarikhb1FocusNode?.dispose();
    txttarikhb1Controller?.dispose();

    txtjamb2FocusNode?.dispose();
    txtjamb2Controller?.dispose();

    txtfld12FocusNode?.dispose();
    txtfld12Controller?.dispose();

    txtfld13FocusNode?.dispose();
    txtfld13Controller?.dispose();

    ttphNamaFocusNode?.dispose();
    ttphNamaController?.dispose();

    ttphTarikhb3FocusNode?.dispose();
    ttphTarikhb3Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
