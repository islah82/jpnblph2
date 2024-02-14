import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'frmlistpegawai_widget.dart' show FrmlistpegawaiWidget;
import 'package:flutter/material.dart';

class FrmlistpegawaiModel extends FlutterFlowModel<FrmlistpegawaiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // State field(s) for TextFieldPB widget.
  final textFieldPBKey = GlobalKey();
  FocusNode? textFieldPBFocusNode;
  TextEditingController? textFieldPBController;
  String? textFieldPBSelectedOption;
  String? Function(BuildContext, String?)? textFieldPBControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();

    textFieldPBFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
