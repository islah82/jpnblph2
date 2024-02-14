import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WorkernocekCall {
  static Future<ApiCallResponse> call({
    String? cekworkerno = '',
  }) async {
    final ffApiRequestBody = '''
{
  "workerno": "$cekworkerno"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'workernocek',
      apiUrl:
          'https://vzjronpwwgmfetleocnd.supabase.co/rest/v1/rpc/check_workerno',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ6anJvbnB3d2dtZmV0bGVvY25kIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDY1ODE5ODIsImV4cCI6MjAyMjE1Nzk4Mn0.t8xZLOxwhDyJ8Vt4jFSOltl8rDiY1fJuKty3hDBSnLg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static bool? apiresault(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class PdfMonkeyCall {
  static Future<ApiCallResponse> call({
    String? arasbahagian = '',
    String? namapb = '',
    String? jawatanpb = '',
    String? tarikhpb = '',
    String? answer1 = '',
    String? answer2 = '',
    String? answer3 = '',
    String? answer4 = '',
    String? answer5 = '',
    String? answer6 = '',
    String? answer7 = '',
    String? answer8 = '',
    String? answer9 = '',
    String? answer10 = '',
    String? answer11 = '',
    String? answer12 = '',
    String? answer13 = '',
    String? tandatanganpb = '',
    String? waktumula = '',
    String? waktutamat = '',
    String? namappb = '',
    String? tarikhppb = '',
    String? namappkj = '',
    String? tarikhppkj = '',
  }) async {
    final ffApiRequestBody = '''
{
  "document": {
    "document_template_id": "63BA0F26-DC71-483A-BD96-56CEF48D7E3F",
    "status": "pending",
    "payload": {
      "arasbahagian": "$arasbahagian",
      "namapb": "$namapb",
      "jawatanpb": "$jawatanpb",
      "tarikhpb": "$tarikhpb",
      "answer1": "$answer1",
      "answer2": "$answer2",
      "answer3": "$answer3",
      "answer4": "$answer4",
      "answer5": "$answer5",
      "answer6": "$answer6",
      "answer7": "$answer7",
      "answer8": "$answer8",
      "answer9": "$answer9",
      "answer10": "$answer10",
      "answer11": "$answer11",
      "answer12": "$answer12",
      "answer13": "$answer13",
      "waktumula": "$waktumula",
      "waktutamat": "$waktutamat",
      "namappb": "$namappb",
      "tarikhppb": "$tarikhppb",
      "namappkj": "$namappkj",
      "tarikhppkj": "$tarikhppkj"
    },
    "meta": {
      "clientId": "ABC1234-DE",
      "_filename": "jpn_generate.pdf"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PdfMonkey',
      apiUrl: 'https://api.pdfmonkey.io/api/v1/documents',
      callType: ApiCallType.POST,
      headers: {
        'apikey': 'yDsvBMycqNnq7ditmQ3Z',
        'Authorization': 'Bearer yDsvBMycqNnq7ditmQ3Z',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? pdfmonkeyurl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.document.preview_url''',
      ));
  static String? docmonkeyid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.document.id''',
      ));
  static String? monkeychecksum(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.document.checksum''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
