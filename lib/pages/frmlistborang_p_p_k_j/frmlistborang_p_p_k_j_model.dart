import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'frmlistborang_p_p_k_j_widget.dart' show FrmlistborangPPKJWidget;
import 'package:flutter/material.dart';

class FrmlistborangPPKJModel extends FlutterFlowModel<FrmlistborangPPKJWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldsearch widget.
  FocusNode? textFieldsearchFocusNode;
  TextEditingController? textFieldsearchController;
  String? Function(BuildContext, String?)? textFieldsearchControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  Completer<List<JpnTblformRow>>? requestCompleter;
  // Stores action output result for [Backend Call - API (PdfMonkey)] action in Icon widget.
  ApiCallResponse? apiResultwjk;
  // Stores action output result for [Backend Call - API (PdfMonkey)] action in Icon widget.
  ApiCallResponse? apiResultwjkSah;

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

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
