import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'frmlistborang_model.dart';
export 'frmlistborang_model.dart';

class FrmlistborangWidget extends StatefulWidget {
  const FrmlistborangWidget({super.key});

  @override
  State<FrmlistborangWidget> createState() => _FrmlistborangWidgetState();
}

class _FrmlistborangWidgetState extends State<FrmlistborangWidget>
    with TickerProviderStateMixin {
  late FrmlistborangModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrmlistborangModel());

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
      future: JpnTblformTable().queryRows(
        queryFn: (q) => q.order('fldcreated_at'),
      ),
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
        List<JpnTblformRow> frmlistborangJpnTblformRowList = snapshot.data!;
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
                'Senarai Borang',
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
                          frmlistborangJpnTblformRowList.length.toString(),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final queryListBorang = frmlistborangJpnTblformRowList
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
                                          size: 50.0,
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
                                                  'Tarikh borang:${dateTimeFormat('dd/MMM/yyyy', queryListBorangItem.fldcreatedAt)}',
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
                                                        'Petugas harian: ${queryListBorangItem.fldnama}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                        'Jawatam: ${queryListBorangItem.fldjawatan}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                  jawatanpb: queryListBorangItem
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
                                                  answer11: queryListBorangItem
                                                      .fldsebelas,
                                                  answer12: queryListBorangItem
                                                      .fldduabelas,
                                                  answer13: queryListBorangItem
                                                      .fldtigabelas,
                                                  tandatanganpb:
                                                      queryListBorangItem
                                                          .fldtandatanganPh,
                                                  waktumula: queryListBorangItem
                                                      .fldmulatugas
                                                      ?.toString(),
                                                  waktutamat:
                                                      queryListBorangItem
                                                          .fldtamattugas
                                                          ?.toString(),
                                                );
                                                if ((_model.apiResultwjk
                                                        ?.succeeded ??
                                                    true)) {
                                                  setState(() {
                                                    _model.textFieldsearchController
                                                            ?.text =
                                                        'https://preview.pdfmonkey.io/document-render/${PdfMonkeyCall.docmonkeyid(
                                                      (_model.apiResultwjk
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}/${PdfMonkeyCall.monkeychecksum(
                                                      (_model.apiResultwjk
                                                              ?.jsonBody ??
                                                          ''),
                                                    )}';
                                                  });
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 2000));
                                                  await launchURL(_model
                                                      .textFieldsearchController
                                                      .text);
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
                                                        content:
                                                            const Text('Data error'),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
