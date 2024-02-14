import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'frmlistborang_widget.dart' show FrmlistborangWidget;
import 'package:flutter/material.dart';

class FrmlistborangModel extends FlutterFlowModel<FrmlistborangWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldsearch widget.
  FocusNode? textFieldsearchFocusNode;
  TextEditingController? textFieldsearchController;
  String? Function(BuildContext, String?)? textFieldsearchControllerValidator;
  // Stores action output result for [Backend Call - API (PdfMonkey)] action in Icon widget.
  ApiCallResponse? apiResultwjk;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldsearchFocusNode?.dispose();
    textFieldsearchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
