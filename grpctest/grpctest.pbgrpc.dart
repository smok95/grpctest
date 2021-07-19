///
//  Generated code. Do not modify.
//  source: grpctest.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'grpctest.pb.dart' as $0;
export 'grpctest.pb.dart';

class GrpctestServiceClient extends $grpc.Client {
  static final _$sendRequest = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/grpctest.GrpctestService/SendRequest',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  GrpctestServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Response> sendRequest($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendRequest, request, options: options);
  }
}

abstract class GrpctestServiceBase extends $grpc.Service {
  $core.String get $name => 'grpctest.GrpctestService';

  GrpctestServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'SendRequest',
        sendRequest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Response> sendRequest_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return sendRequest(call, await request);
  }

  $async.Future<$0.Response> sendRequest(
      $grpc.ServiceCall call, $0.Request request);
}
