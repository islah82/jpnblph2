import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'frmlistborang_p_p_k_j_model.dart';
export 'frmlistborang_p_p_k_j_model.dart';

class FrmlistborangPPKJWidget extends StatefulWidget {
  const FrmlistborangPPKJWidget({
    super.key,
    required this.ppbnama,
    required this.role,
  });

  final String? ppbnama;
  final String? role;

  @override
  State<FrmlistborangPPKJWidget> createState() =>
      _FrmlistborangPPKJWidgetState();
}

class _FrmlistborangPPKJWidgetState extends State<FrmlistborangPPKJWidget>
    with TickerProviderStateMixin {
  late FrmlistborangPPKJModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrmlistborangPPKJModel());

    _model.textFieldsearchController ??= TextEditingController();
    _model.textFieldsearchFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return FutureBuilder<List<JpnTblformRow>>(
      future: (_model.requestCompleter ??= Completer<List<JpnTblformRow>>()
            ..complete(JpnTblformTable().queryRows(
              queryFn: (q) => q.order('fldcreated_at'),
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<JpnTblformRow> frmlistborangPPKJJpnTblformRowList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Text(
                'Senarai Borang (${widget.role})',
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.0,
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                      child: TextFormField(
                        controller: _model.textFieldsearchController,
                        focusNode: _model.textFieldsearchFocusNode,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Search...',
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        maxLines: null,
                        validator: _model.textFieldsearchControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowChoiceChips(
                      options: const [ChipData('Semua'), ChipData('Belum disahkan')],
                      onChanged: (val) async {
                        setState(() => _model.choiceChipsValue = val?.first);
                        if (_model.choiceChipsValue == 'Semua') {
                          setState(() {
                            FFAppState().ListViewBorangSah = false;
                          });
                        } else {
                          setState(() {
                            FFAppState().ListViewBorangSah = true;
                          });
                        }
                      },
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        iconSize: 18.0,
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).alternate,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        iconSize: 18.0,
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      chipSpacing: 12.0,
                      rowSpacing: 12.0,
                      multiselect: false,
                      initialized: _model.choiceChipsValue != null,
                      alignment: WrapAlignment.start,
                      controller: _model.choiceChipsValueController ??=
                          FormFieldController<List<String>>(
                        ['Semua'],
                      ),
                      wrapped: true,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Rekod',
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            4.0, 12.0, 16.0, 0.0),
                        child: Text(
                          frmlistborangPPKJJpnTblformRowList.length.toString(),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  if (!FFAppState().ListViewBorangSah)
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final queryListBorang =
                                frmlistborangPPKJJpnTblformRowList
                                    .map((e) => e)
                                    .toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: queryListBorang.length,
                              itemBuilder: (context, queryListBorangIndex) {
                                final queryListBorangItem =
                                    queryListBorang[queryListBorangIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 1.0),
                                  child: Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: const Offset(0.0, 1.0),
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.paperclip,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 25.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    dateTimeFormat('dd/MMM/yyyy', queryListBorangItem.fldcreatedAt),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '${queryListBorangItem.fldnama}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Bahagian/Aras: ${queryListBorangItem.fldbahagian}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Text(
                                                          'Jawatan: ${queryListBorangItem.fldjawatan}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                              ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: (queryListBorangItem
                                                                  .fldppkjsah !=
                                                              null &&
                                                          queryListBorangItem
                                                                  .fldppkjsah !=
                                                              '')
                                                      ? null
                                                      : () async {
                                                          await JpnTblformTable()
                                                              .update(
                                                            data: {
                                                              'fldppkjsah':
                                                                  'sah',
                                                              'fldppkj_nama':
                                                                  widget
                                                                      .ppbnama,
                                                              'fldppkj_tarikh':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      getCurrentTimestamp),
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'fldformid',
                                                              queryListBorangItem
                                                                  .fldformid,
                                                            ),
                                                          );
                                                          setState(() => _model
                                                                  .requestCompleter =
                                                              null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                          setState(() {
                                                            FFAppState()
                                                                    .ListViewBorangSah =
                                                                false;
                                                          });
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Pengesahan'),
                                                                content: const Text(
                                                                    'Borang sudah di sahkan.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        },
                                                  text: queryListBorangItem
                                                                  .fldppkjsah ==
                                                              null ||
                                                          queryListBorangItem
                                                                  .fldppkjsah ==
                                                              ''
                                                      ? 'Sahkan'
                                                      : 'Lengkap',
                                                  options: FFButtonOptions(
                                                    height: 28.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall,
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    disabledColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    disabledTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.apiResultwjk =
                                                      await PdfMonkeyCall.call(
                                                    arasbahagian:
                                                        queryListBorangItem
                                                            .fldbahagian,
                                                    jawatanpb:
                                                        queryListBorangItem
                                                            .fldjawatan,
                                                    namapb: queryListBorangItem
                                                        .fldnama,
                                                    tarikhpb: dateTimeFormat(
                                                        'dd/MMM/yyyy',
                                                        queryListBorangItem
                                                            .fldcreatedAt),
                                                    answer1: queryListBorangItem
                                                                .fldsatu ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer2: queryListBorangItem
                                                                .flddua ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer3: queryListBorangItem
                                                                .fldtiga ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer4: queryListBorangItem
                                                                .fldempat ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer5: queryListBorangItem
                                                                .fldlima ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer6: queryListBorangItem
                                                                .fldenam ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer7: queryListBorangItem
                                                                .fldtujuh ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer8: queryListBorangItem
                                                                .fldlapan ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer9: queryListBorangItem
                                                                .fldsembilan ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer10: queryListBorangItem
                                                                .fldsepuluh ==
                                                            true
                                                        ? 'Ya'
                                                        : 'Tidak',
                                                    answer11:
                                                        queryListBorangItem
                                                            .fldsebelas,
                                                    answer12:
                                                        queryListBorangItem
                                                            .fldduabelas,
                                                    answer13:
                                                        queryListBorangItem
                                                            .fldtigabelas,
                                                    waktumula:
                                                        queryListBorangItem
                                                            .fldmulatugas
                                                            ?.toString(),
                                                    waktutamat:
                                                        queryListBorangItem
                                                            .fldtamattugas
                                                            ?.toString(),
                                                    namappb: queryListBorangItem
                                                        .fldppbNama,
                                                    tarikhppb: dateTimeFormat(
                                                        'dd/MMM/yyyy',
                                                        queryListBorangItem
                                                            .fldppbTarikh),
                                                    namappkj:
                                                        queryListBorangItem
                                                            .fldppkjNama,
                                                    tarikhppkj: dateTimeFormat(
                                                        'dd/MMM/yyyy',
                                                        queryListBorangItem
                                                            .fldppkjTarikh),
                                                  );
                                                  if ((_model.apiResultwjk
                                                          ?.succeeded ??
                                                      true)) {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                    await launchURL(
                                                        'https://preview.pdfmonkey.io/document-render/${PdfMonkeyCall.docmonkeyid(
                                                      (_model.apiResultwjk
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}/${PdfMonkeyCall.monkeychecksum(
                                                      (_model.apiResultwjk
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}');
                                                    setState(() {
                                                      _model
                                                          .textFieldsearchController
                                                          ?.clear();
                                                    });
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text('Error'),
                                                          content: const Text(
                                                              'Data error'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }

                                                  setState(() {});
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.solidFilePdf,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  if (FFAppState().ListViewBorangSah)
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                        child: FutureBuilder<List<JpnTblformRow>>(
                          future: JpnTblformTable().queryRows(
                            queryFn: (q) => q
                                .is_(
                                  'fldppkjsah',
                                  null,
                                )
                                .order('fldcreated_at'),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<JpnTblformRow> listViewSahJpnTblformRowList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewSahJpnTblformRowList.length,
                              itemBuilder: (context, listViewSahIndex) {
                                final listViewSahJpnTblformRow =
                                    listViewSahJpnTblformRowList[
                                        listViewSahIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 1.0),
                                  child: Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          offset: const Offset(0.0, 1.0),
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.paperclip,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 25.0,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    dateTimeFormat('dd/MMM/yyyy', listViewSahJpnTblformRow.fldcreatedAt),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '${listViewSahJpnTblformRow.fldnama}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      4.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Bahagian/Aras: ${listViewSahJpnTblformRow.fldbahagian}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                          ),
                                                        ),
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                      ))
                                                        Text(
                                                          'Jawatan: ${listViewSahJpnTblformRow.fldjawatan}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                              ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: (listViewSahJpnTblformRow
                                                                  .fldppkjsah !=
                                                              null &&
                                                          listViewSahJpnTblformRow
                                                                  .fldppkjsah !=
                                                              '')
                                                      ? null
                                                      : () async {
                                                          await JpnTblformTable()
                                                              .update(
                                                            data: {
                                                              'fldppkjsah':
                                                                  'sah',
                                                              'fldppkj_nama':
                                                                  widget
                                                                      .ppbnama,
                                                              'fldppkj_tarikh':
                                                                  supaSerialize<
                                                                          DateTime>(
                                                                      getCurrentTimestamp),
                                                            },
                                                            matchingRows:
                                                                (rows) =>
                                                                    rows.eq(
                                                              'fldformid',
                                                              listViewSahJpnTblformRow
                                                                  .fldformid,
                                                            ),
                                                          );
                                                          setState(() => _model
                                                                  .requestCompleter =
                                                              null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                          setState(() {
                                                            FFAppState()
                                                                    .ListViewBorangSah =
                                                                true;
                                                          });
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'Pengesahan'),
                                                                content: const Text(
                                                                    'Borang sudah disahkan.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        },
                                                  text: listViewSahJpnTblformRow
                                                                  .fldppkjsah ==
                                                              null ||
                                                          listViewSahJpnTblformRow
                                                                  .fldppkjsah ==
                                                              ''
                                                      ? 'Sahkan'
                                                      : 'Lengkap',
                                                  options: FFButtonOptions(
                                                    height: 28.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall,
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            elevation: 1.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40.0),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.apiResultwjkSah =
                                                      await PdfMonkeyCall.call(
                                                    arasbahagian:
                                                        listViewSahJpnTblformRow
                                                            .fldbahagian,
                                                    jawatanpb:
                                                        listViewSahJpnTblformRow
                                                            .fldjawatan,
                                                    namapb:
                                                        listViewSahJpnTblformRow
                                                            .fldnama,
                                                    tarikhpb: dateTimeFormat(
                                                        'dd/MMM/yyyy',
                                                        listViewSahJpnTblformRow
                                                            .fldcreatedAt),
                                                    answer1:
                                                        listViewSahJpnTblformRow
                                                                    .fldsatu ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer2:
                                                        listViewSahJpnTblformRow
                                                                    .flddua ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer3:
                                                        listViewSahJpnTblformRow
                                                                    .fldtiga ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer4:
                                                        listViewSahJpnTblformRow
                                                                    .fldempat ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer5:
                                                        listViewSahJpnTblformRow
                                                                    .fldlima ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer6:
                                                        listViewSahJpnTblformRow
                                                                    .fldenam ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer7:
                                                        listViewSahJpnTblformRow
                                                                    .fldtujuh ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer8:
                                                        listViewSahJpnTblformRow
                                                                    .fldlapan ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer9:
                                                        listViewSahJpnTblformRow
                                                                    .fldsembilan ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer10:
                                                        listViewSahJpnTblformRow
                                                                    .fldsepuluh ==
                                                                true
                                                            ? 'Ya'
                                                            : 'Tidak',
                                                    answer11:
                                                        listViewSahJpnTblformRow
                                                            .fldsebelas,
                                                    answer12:
                                                        listViewSahJpnTblformRow
                                                            .fldduabelas,
                                                    answer13:
                                                        listViewSahJpnTblformRow
                                                            .fldtigabelas,
                                                    waktumula:
                                                        listViewSahJpnTblformRow
                                                            .fldmulatugas
                                                            ?.toString(),
                                                    waktutamat:
                                                        listViewSahJpnTblformRow
                                                            .fldtamattugas
                                                            ?.toString(),
                                                    namappb:
                                                        listViewSahJpnTblformRow
                                                            .fldppbNama,
                                                    tarikhppb: dateTimeFormat(
                                                        'dd/MMM/yyyy',
                                                        listViewSahJpnTblformRow
                                                            .fldppbTarikh),
                                                    namappkj:
                                                        listViewSahJpnTblformRow
                                                            .fldppkjNama,
                                                    tarikhppkj: dateTimeFormat(
                                                        'dd/MMM/yyyy',
                                                        listViewSahJpnTblformRow
                                                            .fldppkjTarikh),
                                                  );
                                                  if ((_model.apiResultwjkSah
                                                          ?.succeeded ??
                                                      true)) {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                    await launchURL(
                                                        'https://preview.pdfmonkey.io/document-render/${PdfMonkeyCall.docmonkeyid(
                                                      (_model.apiResultwjkSah
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}/${PdfMonkeyCall.monkeychecksum(
                                                      (_model.apiResultwjkSah
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}');
                                                    setState(() {
                                                      _model
                                                          .textFieldsearchController
                                                          ?.clear();
                                                    });
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: const Text('Error'),
                                                          content: const Text(
                                                              'Data error'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: const Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }

                                                  setState(() {});
                                                },
                                                child: FaIcon(
                                                  FontAwesomeIcons.solidFilePdf,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
