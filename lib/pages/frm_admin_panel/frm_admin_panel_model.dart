import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'frm_admin_panel_widget.dart' show FrmAdminPanelWidget;
import 'package:flutter/material.dart';

class FrmAdminPanelModel extends FlutterFlowModel<FrmAdminPanelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNama widget.
  FocusNode? txtNamaFocusNode;
  TextEditingController? txtNamaController;
  String? Function(BuildContext, String?)? txtNamaControllerValidator;
  String? _txtNamaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtid widget.
  FocusNode? txtidFocusNode;
  TextEditingController? txtidController;
  String? Function(BuildContext, String?)? txtidControllerValidator;
  String? _txtidControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtJawatan widget.
  FocusNode? txtJawatanFocusNode;
  TextEditingController? txtJawatanController;
  String? Function(BuildContext, String?)? txtJawatanControllerValidator;
  String? _txtJawatanControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for role widget.
  String? roleValue;
  FormFieldController<String>? roleValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    txtNamaControllerValidator = _txtNamaControllerValidator;
    txtidControllerValidator = _txtidControllerValidator;
    txtJawatanControllerValidator = _txtJawatanControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNamaFocusNode?.dispose();
    txtNamaController?.dispose();

    txtidFocusNode?.dispose();
    txtidController?.dispose();

    txtJawatanFocusNode?.dispose();
    txtJawatanController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
