// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UsersDelegate {
  const UsersDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Users?> findUnique({
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'findUniqueusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Users> findUniqueOrThrow({
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'findUniqueusersOrThrow',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Users?> findFirst({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsersScalar, Iterable<_i3.UsersScalar>>? distinct,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'findFirstusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Users> findFirstOrThrow({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsersScalar, Iterable<_i3.UsersScalar>>? distinct,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'findFirstusersOrThrow',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Users>> findMany({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsersScalar, Iterable<_i3.UsersScalar>>? distinct,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Users>>(
      action: 'findManyusers',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Users.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Users> create({
    required _i1
        .PrismaUnion<_i3.UsersCreateInput, _i3.UsersUncheckedCreateInput>
        data,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'createOneusers',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.UsersCreateManyInput,
            Iterable<_i3.UsersCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyusers',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyusersAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.UsersCreateManyInput,
            Iterable<_i3.UsersCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyusersAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyusersAndReturnOutputType>>(
      action: 'createManyusersAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyusersAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Users?> update({
    required _i1
        .PrismaUnion<_i3.UsersUpdateInput, _i3.UsersUncheckedUpdateInput>
        data,
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'updateOneusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UsersUpdateManyMutationInput,
            _i3.UsersUncheckedUpdateManyInput>
        data,
    _i3.UsersWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyusers',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Users> upsert({
    required _i3.UsersWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.UsersCreateInput, _i3.UsersUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.UsersUpdateInput, _i3.UsersUncheckedUpdateInput>
        update,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'upsertOneusers',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Users?> delete({
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'deleteOneusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UsersWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyusers',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UsersGroupByOutputType>> groupBy({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithAggregationInput>,
            _i3.UsersOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UsersScalar>, _i3.UsersScalar> by,
    _i3.UsersScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UsersGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UsersGroupByOutputType>>(
      action: 'groupByusers',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UsersGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUsers> aggregate({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUsersSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUsers>(
      action: 'aggregateusers',
      result: result,
      factory: (e) => _i3.AggregateUsers.fromJson(e),
    );
  }
}

class AssignmentsDelegate {
  const AssignmentsDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Assignments?> findUnique({
    required _i3.AssignmentsWhereUniqueInput where,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments?>(
      action: 'findUniqueassignments',
      result: result,
      factory: (e) => e != null ? _i2.Assignments.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Assignments> findUniqueOrThrow({
    required _i3.AssignmentsWhereUniqueInput where,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments>(
      action: 'findUniqueassignmentsOrThrow',
      result: result,
      factory: (e) => _i2.Assignments.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Assignments?> findFirst({
    _i3.AssignmentsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AssignmentsOrderByWithRelationInput>,
            _i3.AssignmentsOrderByWithRelationInput>?
        orderBy,
    _i3.AssignmentsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AssignmentsScalar, Iterable<_i3.AssignmentsScalar>>?
        distinct,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments?>(
      action: 'findFirstassignments',
      result: result,
      factory: (e) => e != null ? _i2.Assignments.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Assignments> findFirstOrThrow({
    _i3.AssignmentsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AssignmentsOrderByWithRelationInput>,
            _i3.AssignmentsOrderByWithRelationInput>?
        orderBy,
    _i3.AssignmentsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AssignmentsScalar, Iterable<_i3.AssignmentsScalar>>?
        distinct,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments>(
      action: 'findFirstassignmentsOrThrow',
      result: result,
      factory: (e) => _i2.Assignments.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Assignments>> findMany({
    _i3.AssignmentsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AssignmentsOrderByWithRelationInput>,
            _i3.AssignmentsOrderByWithRelationInput>?
        orderBy,
    _i3.AssignmentsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AssignmentsScalar, Iterable<_i3.AssignmentsScalar>>?
        distinct,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Assignments>>(
      action: 'findManyassignments',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Assignments.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Assignments> create({
    required _i1.PrismaUnion<_i3.AssignmentsCreateInput,
            _i3.AssignmentsUncheckedCreateInput>
        data,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments>(
      action: 'createOneassignments',
      result: result,
      factory: (e) => _i2.Assignments.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.AssignmentsCreateManyInput,
            Iterable<_i3.AssignmentsCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyassignments',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyassignmentsAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.AssignmentsCreateManyInput,
            Iterable<_i3.AssignmentsCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyassignmentsAndReturnOutputTypeSelect? select,
    _i3.CreateManyassignmentsAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyassignmentsAndReturnOutputType>>(
      action: 'createManyassignmentsAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyassignmentsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Assignments?> update({
    required _i1.PrismaUnion<_i3.AssignmentsUpdateInput,
            _i3.AssignmentsUncheckedUpdateInput>
        data,
    required _i3.AssignmentsWhereUniqueInput where,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments?>(
      action: 'updateOneassignments',
      result: result,
      factory: (e) => e != null ? _i2.Assignments.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.AssignmentsUpdateManyMutationInput,
            _i3.AssignmentsUncheckedUpdateManyInput>
        data,
    _i3.AssignmentsWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyassignments',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Assignments> upsert({
    required _i3.AssignmentsWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.AssignmentsCreateInput,
            _i3.AssignmentsUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.AssignmentsUpdateInput,
            _i3.AssignmentsUncheckedUpdateInput>
        update,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments>(
      action: 'upsertOneassignments',
      result: result,
      factory: (e) => _i2.Assignments.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Assignments?> delete({
    required _i3.AssignmentsWhereUniqueInput where,
    _i3.AssignmentsSelect? select,
    _i3.AssignmentsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Assignments?>(
      action: 'deleteOneassignments',
      result: result,
      factory: (e) => e != null ? _i2.Assignments.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.AssignmentsWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyassignments',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AssignmentsGroupByOutputType>> groupBy({
    _i3.AssignmentsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AssignmentsOrderByWithAggregationInput>,
            _i3.AssignmentsOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.AssignmentsScalar>, _i3.AssignmentsScalar>
        by,
    _i3.AssignmentsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AssignmentsGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AssignmentsGroupByOutputType>>(
      action: 'groupByassignments',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.AssignmentsGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateAssignments> aggregate({
    _i3.AssignmentsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.AssignmentsOrderByWithRelationInput>,
            _i3.AssignmentsOrderByWithRelationInput>?
        orderBy,
    _i3.AssignmentsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAssignmentsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'assignments',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAssignments>(
      action: 'aggregateassignments',
      result: result,
      factory: (e) => _i3.AggregateAssignments.fromJson(e),
    );
  }
}

class TasksDelegate {
  const TasksDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Tasks?> findUnique({
    required _i3.TasksWhereUniqueInput where,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks?>(
      action: 'findUniquetasks',
      result: result,
      factory: (e) => e != null ? _i2.Tasks.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tasks> findUniqueOrThrow({
    required _i3.TasksWhereUniqueInput where,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks>(
      action: 'findUniquetasksOrThrow',
      result: result,
      factory: (e) => _i2.Tasks.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tasks?> findFirst({
    _i3.TasksWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TasksOrderByWithRelationInput>,
            _i3.TasksOrderByWithRelationInput>?
        orderBy,
    _i3.TasksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TasksScalar, Iterable<_i3.TasksScalar>>? distinct,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks?>(
      action: 'findFirsttasks',
      result: result,
      factory: (e) => e != null ? _i2.Tasks.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tasks> findFirstOrThrow({
    _i3.TasksWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TasksOrderByWithRelationInput>,
            _i3.TasksOrderByWithRelationInput>?
        orderBy,
    _i3.TasksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TasksScalar, Iterable<_i3.TasksScalar>>? distinct,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks>(
      action: 'findFirsttasksOrThrow',
      result: result,
      factory: (e) => _i2.Tasks.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Tasks>> findMany({
    _i3.TasksWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TasksOrderByWithRelationInput>,
            _i3.TasksOrderByWithRelationInput>?
        orderBy,
    _i3.TasksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TasksScalar, Iterable<_i3.TasksScalar>>? distinct,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Tasks>>(
      action: 'findManytasks',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Tasks.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tasks> create({
    required _i1
        .PrismaUnion<_i3.TasksCreateInput, _i3.TasksUncheckedCreateInput>
        data,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks>(
      action: 'createOnetasks',
      result: result,
      factory: (e) => _i2.Tasks.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.TasksCreateManyInput,
            Iterable<_i3.TasksCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManytasks',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManytasksAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.TasksCreateManyInput,
            Iterable<_i3.TasksCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManytasksAndReturnOutputTypeSelect? select,
    _i3.CreateManytasksAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManytasksAndReturnOutputType>>(
      action: 'createManytasksAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManytasksAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tasks?> update({
    required _i1
        .PrismaUnion<_i3.TasksUpdateInput, _i3.TasksUncheckedUpdateInput>
        data,
    required _i3.TasksWhereUniqueInput where,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks?>(
      action: 'updateOnetasks',
      result: result,
      factory: (e) => e != null ? _i2.Tasks.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TasksUpdateManyMutationInput,
            _i3.TasksUncheckedUpdateManyInput>
        data,
    _i3.TasksWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManytasks',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tasks> upsert({
    required _i3.TasksWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.TasksCreateInput, _i3.TasksUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.TasksUpdateInput, _i3.TasksUncheckedUpdateInput>
        update,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks>(
      action: 'upsertOnetasks',
      result: result,
      factory: (e) => _i2.Tasks.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tasks?> delete({
    required _i3.TasksWhereUniqueInput where,
    _i3.TasksSelect? select,
    _i3.TasksInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tasks?>(
      action: 'deleteOnetasks',
      result: result,
      factory: (e) => e != null ? _i2.Tasks.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TasksWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManytasks',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TasksGroupByOutputType>> groupBy({
    _i3.TasksWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TasksOrderByWithAggregationInput>,
            _i3.TasksOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TasksScalar>, _i3.TasksScalar> by,
    _i3.TasksScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TasksGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TasksGroupByOutputType>>(
      action: 'groupBytasks',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TasksGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTasks> aggregate({
    _i3.TasksWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TasksOrderByWithRelationInput>,
            _i3.TasksOrderByWithRelationInput>?
        orderBy,
    _i3.TasksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTasksSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tasks',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTasks>(
      action: 'aggregatetasks',
      result: result,
      factory: (e) => _i3.AggregateTasks.fromJson(e),
    );
  }
}

class RemindersDelegate {
  const RemindersDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Reminders?> findUnique({
    required _i3.RemindersWhereUniqueInput where,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders?>(
      action: 'findUniquereminders',
      result: result,
      factory: (e) => e != null ? _i2.Reminders.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Reminders> findUniqueOrThrow({
    required _i3.RemindersWhereUniqueInput where,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders>(
      action: 'findUniqueremindersOrThrow',
      result: result,
      factory: (e) => _i2.Reminders.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reminders?> findFirst({
    _i3.RemindersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RemindersOrderByWithRelationInput>,
            _i3.RemindersOrderByWithRelationInput>?
        orderBy,
    _i3.RemindersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RemindersScalar, Iterable<_i3.RemindersScalar>>?
        distinct,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders?>(
      action: 'findFirstreminders',
      result: result,
      factory: (e) => e != null ? _i2.Reminders.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Reminders> findFirstOrThrow({
    _i3.RemindersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RemindersOrderByWithRelationInput>,
            _i3.RemindersOrderByWithRelationInput>?
        orderBy,
    _i3.RemindersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RemindersScalar, Iterable<_i3.RemindersScalar>>?
        distinct,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders>(
      action: 'findFirstremindersOrThrow',
      result: result,
      factory: (e) => _i2.Reminders.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Reminders>> findMany({
    _i3.RemindersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RemindersOrderByWithRelationInput>,
            _i3.RemindersOrderByWithRelationInput>?
        orderBy,
    _i3.RemindersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RemindersScalar, Iterable<_i3.RemindersScalar>>?
        distinct,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Reminders>>(
      action: 'findManyreminders',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Reminders.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Reminders> create({
    required _i1.PrismaUnion<_i3.RemindersCreateInput,
            _i3.RemindersUncheckedCreateInput>
        data,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders>(
      action: 'createOnereminders',
      result: result,
      factory: (e) => _i2.Reminders.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.RemindersCreateManyInput,
            Iterable<_i3.RemindersCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyreminders',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyremindersAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.RemindersCreateManyInput,
            Iterable<_i3.RemindersCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyremindersAndReturnOutputTypeSelect? select,
    _i3.CreateManyremindersAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyremindersAndReturnOutputType>>(
      action: 'createManyremindersAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyremindersAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Reminders?> update({
    required _i1.PrismaUnion<_i3.RemindersUpdateInput,
            _i3.RemindersUncheckedUpdateInput>
        data,
    required _i3.RemindersWhereUniqueInput where,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders?>(
      action: 'updateOnereminders',
      result: result,
      factory: (e) => e != null ? _i2.Reminders.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.RemindersUpdateManyMutationInput,
            _i3.RemindersUncheckedUpdateManyInput>
        data,
    _i3.RemindersWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyreminders',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reminders> upsert({
    required _i3.RemindersWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.RemindersCreateInput,
            _i3.RemindersUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.RemindersUpdateInput,
            _i3.RemindersUncheckedUpdateInput>
        update,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders>(
      action: 'upsertOnereminders',
      result: result,
      factory: (e) => _i2.Reminders.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Reminders?> delete({
    required _i3.RemindersWhereUniqueInput where,
    _i3.RemindersSelect? select,
    _i3.RemindersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Reminders?>(
      action: 'deleteOnereminders',
      result: result,
      factory: (e) => e != null ? _i2.Reminders.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.RemindersWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyreminders',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.RemindersGroupByOutputType>> groupBy({
    _i3.RemindersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RemindersOrderByWithAggregationInput>,
            _i3.RemindersOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.RemindersScalar>, _i3.RemindersScalar>
        by,
    _i3.RemindersScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.RemindersGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.RemindersGroupByOutputType>>(
      action: 'groupByreminders',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.RemindersGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateReminders> aggregate({
    _i3.RemindersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RemindersOrderByWithRelationInput>,
            _i3.RemindersOrderByWithRelationInput>?
        orderBy,
    _i3.RemindersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateRemindersSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'reminders',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateReminders>(
      action: 'aggregatereminders',
      result: result,
      factory: (e) => _i3.AggregateReminders.fromJson(e),
    );
  }
}

class ProjectsDelegate {
  const ProjectsDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Projects?> findUnique({
    required _i3.ProjectsWhereUniqueInput where,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects?>(
      action: 'findUniqueprojects',
      result: result,
      factory: (e) => e != null ? _i2.Projects.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Projects> findUniqueOrThrow({
    required _i3.ProjectsWhereUniqueInput where,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects>(
      action: 'findUniqueprojectsOrThrow',
      result: result,
      factory: (e) => _i2.Projects.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Projects?> findFirst({
    _i3.ProjectsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectsOrderByWithRelationInput>,
            _i3.ProjectsOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectsScalar, Iterable<_i3.ProjectsScalar>>? distinct,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects?>(
      action: 'findFirstprojects',
      result: result,
      factory: (e) => e != null ? _i2.Projects.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Projects> findFirstOrThrow({
    _i3.ProjectsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectsOrderByWithRelationInput>,
            _i3.ProjectsOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectsScalar, Iterable<_i3.ProjectsScalar>>? distinct,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects>(
      action: 'findFirstprojectsOrThrow',
      result: result,
      factory: (e) => _i2.Projects.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Projects>> findMany({
    _i3.ProjectsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectsOrderByWithRelationInput>,
            _i3.ProjectsOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectsScalar, Iterable<_i3.ProjectsScalar>>? distinct,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Projects>>(
      action: 'findManyprojects',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Projects.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Projects> create({
    required _i1
        .PrismaUnion<_i3.ProjectsCreateInput, _i3.ProjectsUncheckedCreateInput>
        data,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects>(
      action: 'createOneprojects',
      result: result,
      factory: (e) => _i2.Projects.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ProjectsCreateManyInput,
            Iterable<_i3.ProjectsCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyprojects',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyprojectsAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ProjectsCreateManyInput,
            Iterable<_i3.ProjectsCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyprojectsAndReturnOutputTypeSelect? select,
    _i3.CreateManyprojectsAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyprojectsAndReturnOutputType>>(
      action: 'createManyprojectsAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyprojectsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Projects?> update({
    required _i1
        .PrismaUnion<_i3.ProjectsUpdateInput, _i3.ProjectsUncheckedUpdateInput>
        data,
    required _i3.ProjectsWhereUniqueInput where,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects?>(
      action: 'updateOneprojects',
      result: result,
      factory: (e) => e != null ? _i2.Projects.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProjectsUpdateManyMutationInput,
            _i3.ProjectsUncheckedUpdateManyInput>
        data,
    _i3.ProjectsWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyprojects',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Projects> upsert({
    required _i3.ProjectsWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ProjectsCreateInput, _i3.ProjectsUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ProjectsUpdateInput, _i3.ProjectsUncheckedUpdateInput>
        update,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects>(
      action: 'upsertOneprojects',
      result: result,
      factory: (e) => _i2.Projects.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Projects?> delete({
    required _i3.ProjectsWhereUniqueInput where,
    _i3.ProjectsSelect? select,
    _i3.ProjectsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Projects?>(
      action: 'deleteOneprojects',
      result: result,
      factory: (e) => e != null ? _i2.Projects.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProjectsWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyprojects',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProjectsGroupByOutputType>> groupBy({
    _i3.ProjectsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectsOrderByWithAggregationInput>,
            _i3.ProjectsOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProjectsScalar>, _i3.ProjectsScalar>
        by,
    _i3.ProjectsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProjectsGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProjectsGroupByOutputType>>(
      action: 'groupByprojects',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProjectsGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProjects> aggregate({
    _i3.ProjectsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectsOrderByWithRelationInput>,
            _i3.ProjectsOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProjectsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'projects',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProjects>(
      action: 'aggregateprojects',
      result: result,
      factory: (e) => _i3.AggregateProjects.fromJson(e),
    );
  }
}

class ProjectMembersDelegate {
  const ProjectMembersDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ProjectMembers?> findUnique({
    required _i3.ProjectMembersWhereUniqueInput where,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers?>(
      action: 'findUniqueproject_members',
      result: result,
      factory: (e) => e != null ? _i2.ProjectMembers.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ProjectMembers> findUniqueOrThrow({
    required _i3.ProjectMembersWhereUniqueInput where,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers>(
      action: 'findUniqueproject_membersOrThrow',
      result: result,
      factory: (e) => _i2.ProjectMembers.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProjectMembers?> findFirst({
    _i3.ProjectMembersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectMembersOrderByWithRelationInput>,
            _i3.ProjectMembersOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectMembersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectMembersScalar,
            Iterable<_i3.ProjectMembersScalar>>?
        distinct,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers?>(
      action: 'findFirstproject_members',
      result: result,
      factory: (e) => e != null ? _i2.ProjectMembers.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ProjectMembers> findFirstOrThrow({
    _i3.ProjectMembersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectMembersOrderByWithRelationInput>,
            _i3.ProjectMembersOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectMembersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectMembersScalar,
            Iterable<_i3.ProjectMembersScalar>>?
        distinct,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers>(
      action: 'findFirstproject_membersOrThrow',
      result: result,
      factory: (e) => _i2.ProjectMembers.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ProjectMembers>> findMany({
    _i3.ProjectMembersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectMembersOrderByWithRelationInput>,
            _i3.ProjectMembersOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectMembersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProjectMembersScalar,
            Iterable<_i3.ProjectMembersScalar>>?
        distinct,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ProjectMembers>>(
      action: 'findManyproject_members',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ProjectMembers.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ProjectMembers> create({
    required _i1.PrismaUnion<_i3.ProjectMembersCreateInput,
            _i3.ProjectMembersUncheckedCreateInput>
        data,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers>(
      action: 'createOneproject_members',
      result: result,
      factory: (e) => _i2.ProjectMembers.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ProjectMembersCreateManyInput,
            Iterable<_i3.ProjectMembersCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyproject_members',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyprojectMembersAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.ProjectMembersCreateManyInput,
            Iterable<_i3.ProjectMembersCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyprojectMembersAndReturnOutputTypeSelect? select,
    _i3.CreateManyprojectMembersAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyprojectMembersAndReturnOutputType>>(
      action: 'createManyproject_membersAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyprojectMembersAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ProjectMembers?> update({
    required _i1.PrismaUnion<_i3.ProjectMembersUpdateInput,
            _i3.ProjectMembersUncheckedUpdateInput>
        data,
    required _i3.ProjectMembersWhereUniqueInput where,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers?>(
      action: 'updateOneproject_members',
      result: result,
      factory: (e) => e != null ? _i2.ProjectMembers.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProjectMembersUpdateManyMutationInput,
            _i3.ProjectMembersUncheckedUpdateManyInput>
        data,
    _i3.ProjectMembersWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyproject_members',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProjectMembers> upsert({
    required _i3.ProjectMembersWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.ProjectMembersCreateInput,
            _i3.ProjectMembersUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.ProjectMembersUpdateInput,
            _i3.ProjectMembersUncheckedUpdateInput>
        update,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers>(
      action: 'upsertOneproject_members',
      result: result,
      factory: (e) => _i2.ProjectMembers.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ProjectMembers?> delete({
    required _i3.ProjectMembersWhereUniqueInput where,
    _i3.ProjectMembersSelect? select,
    _i3.ProjectMembersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ProjectMembers?>(
      action: 'deleteOneproject_members',
      result: result,
      factory: (e) => e != null ? _i2.ProjectMembers.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProjectMembersWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyproject_members',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProjectMembersGroupByOutputType>> groupBy({
    _i3.ProjectMembersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectMembersOrderByWithAggregationInput>,
            _i3.ProjectMembersOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProjectMembersScalar>,
            _i3.ProjectMembersScalar>
        by,
    _i3.ProjectMembersScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProjectMembersGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProjectMembersGroupByOutputType>>(
      action: 'groupByproject_members',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProjectMembersGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProjectMembers> aggregate({
    _i3.ProjectMembersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProjectMembersOrderByWithRelationInput>,
            _i3.ProjectMembersOrderByWithRelationInput>?
        orderBy,
    _i3.ProjectMembersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProjectMembersSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'project_members',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProjectMembers>(
      action: 'aggregateproject_members',
      result: result,
      factory: (e) => _i3.AggregateProjectMembers.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [
      {
        'name': 'assignment_type',
        'values': [
          {
            'name': 'Reminder',
            'dbName': null,
          },
          {
            'name': 'Task',
            'dbName': null,
          },
          {
            'name': 'Project',
            'dbName': null,
          },
        ],
        'dbName': null,
      },
      {
        'name': 'reminder_category',
        'values': [
          {
            'name': 'Event',
            'dbName': null,
          },
          {
            'name': 'Meeting',
            'dbName': null,
          },
          {
            'name': 'Webinar',
            'dbName': null,
          },
          {
            'name': 'Interview',
            'dbName': null,
          },
          {
            'name': 'Tutoring',
            'dbName': null,
          },
          {
            'name': 'Other',
            'dbName': null,
          },
        ],
        'dbName': null,
      },
    ],
    'models': [
      {
        'name': 'users',
        'dbName': null,
        'fields': [
          {
            'name': 'user_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'cuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'signin_method',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'device',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'username',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'password',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'join_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_timezone',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'project_members',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'project_members',
            'relationName': 'project_membersTousers',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assignments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'assignments',
            'relationName': 'assignmentsTousers',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'assignments',
        'dbName': null,
        'fields': [
          {
            'name': 'assignment_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'cuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'create_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updated_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'subject',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'notes',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'due_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assignment_type',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'assignment_type',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'users',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'users',
            'relationName': 'assignmentsTousers',
            'relationFromFields': ['user_id'],
            'relationToFields': ['user_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'projects',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'projects',
            'relationName': 'assignmentsToprojects',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reminders',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'reminders',
            'relationName': 'assignmentsToreminders',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tasks',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'tasks',
            'relationName': 'assignmentsTotasks',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'tasks',
        'dbName': null,
        'fields': [
          {
            'name': 'assignment_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'complete_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'completed',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'parent_project',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assignments',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'assignments',
            'relationName': 'assignmentsTotasks',
            'relationFromFields': ['assignment_id'],
            'relationToFields': ['assignment_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'projects',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'projects',
            'relationName': 'projectsTotasks',
            'relationFromFields': ['parent_project'],
            'relationToFields': ['assignment_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'reminders',
        'dbName': null,
        'fields': [
          {
            'name': 'assignment_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reminder_category',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'reminder_category',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assignments',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'assignments',
            'relationName': 'assignmentsToreminders',
            'relationFromFields': ['assignment_id'],
            'relationToFields': ['assignment_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'projects',
        'dbName': null,
        'fields': [
          {
            'name': 'assignment_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'complete_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'completed',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assignments',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'assignments',
            'relationName': 'assignmentsToprojects',
            'relationFromFields': ['assignment_id'],
            'relationToFields': ['assignment_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tasks',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'tasks',
            'relationName': 'projectsTotasks',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'project_members',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'project_members',
            'relationName': 'project_membersToprojects',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'project_members',
        'dbName': null,
        'fields': [
          {
            'name': 'project_member_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'cuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'assignment_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'member_username',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'project',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'projects',
            'relationName': 'project_membersToprojects',
            'relationFromFields': ['assignment_id'],
            'relationToFields': ['assignment_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'users',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'users',
            'relationName': 'project_membersTousers',
            'relationFromFields': ['member_username'],
            'relationToFields': ['username'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'users',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'user_id'}
        ],
      },
      {
        'model': 'users',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'username'}
        ],
      },
      {
        'model': 'assignments',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'assignment_id'}
        ],
      },
      {
        'model': 'tasks',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'assignment_id'}
        ],
      },
      {
        'model': 'reminders',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'assignment_id'}
        ],
      },
      {
        'model': 'projects',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'assignment_id'}
        ],
      },
      {
        'model': 'project_members',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'project_member_id'}
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n  // output   = "../lib/src/prisma/generated"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n}\n\nmodel users {\n  user_id         String            @id @default(cuid())\n  email           String            @db.VarChar(255)\n  signin_method   String?           @db.VarChar(255)\n  name            String            @db.VarChar(255)\n  device          String?           @db.VarChar(255)\n  username        String            @unique @db.VarChar(255)\n  password        String            @db.VarChar(255)\n  join_date       DateTime          @default(now())\n  user_timezone   Int?\n  project_members project_members[]\n  // todo_lists      todo_lists[]\n  assignments     assignments[]\n}\n\n//  all ids should use cuid and be strings\n// create date should be required\n// create date is mandatory, now()\nmodel assignments {\n  assignment_id   String          @id @default(cuid())\n  create_date     DateTime        @default(now())\n  updated_at      DateTime?       @updatedAt\n  subject         String          @db.VarChar(255)\n  notes           String?\n  due_date        DateTime?       @db.Timestamp(6)\n  user_id         String\n  assignment_type assignment_type\n  users           users           @relation(fields: [user_id], references: [user_id], onDelete: NoAction, onUpdate: NoAction)\n  // list_id         Int\n  // todo_lists      todo_lists        @relation(fields: [list_id], references: [list_id], onDelete: NoAction, onUpdate: NoAction)\n  projects        projects?\n  reminders       reminders?\n  tasks           tasks?\n}\n\nenum assignment_type {\n  Reminder\n  Task\n  Project\n}\n\n// create relation to assignments\nmodel tasks {\n  assignment_id  String      @unique\n  complete_date  DateTime?   @db.Timestamp(6)\n  completed      Boolean\n  parent_project String?\n  assignments    assignments @relation(fields: [assignment_id], references: [assignment_id], onDelete: NoAction, onUpdate: NoAction)\n  projects       projects?   @relation(fields: [parent_project], references: [assignment_id], onDelete: NoAction, onUpdate: NoAction)\n}\n\n// reminder category is required\n// reminder category default is other\nmodel reminders {\n  assignment_id     String            @unique\n  reminder_category reminder_category\n  assignments       assignments       @relation(fields: [assignment_id], references: [assignment_id], onDelete: NoAction, onUpdate: NoAction)\n}\n\n// add type other\nenum reminder_category {\n  Event\n  Meeting\n  Webinar\n  Interview\n  Tutoring\n  Other\n}\n\n// list_id should auto increment like user id\n// user_id should be unique\n// model todo_lists {\n//   user_id     Int\n//   list_id     Int           @id\n//   assignments assignments[]\n//   users       users         @relation(fields: [user_id], references: [user_id], onDelete: NoAction, onUpdate: NoAction)\n// }\n\n// create relation between projects and tasks\nmodel projects {\n  assignment_id   String            @unique\n  complete_date   DateTime?         @db.Timestamp(6)\n  completed       Boolean\n  assignments     assignments       @relation(fields: [assignment_id], references: [assignment_id], onDelete: NoAction, onUpdate: NoAction)\n  tasks           tasks[]\n  project_members project_members[]\n}\n\n// assigned to projects, review later\nmodel project_members {\n  project_member_id String   @id @default(cuid())\n  assignment_id     String\n  member_username   String   @db.VarChar(255)\n  project           projects @relation(fields: [assignment_id], references: [assignment_id], onDelete: NoAction, onUpdate: NoAction)\n  users             users    @relation(fields: [member_username], references: [username], onDelete: NoAction, onUpdate: NoAction)\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  UsersDelegate get users => UsersDelegate._(this);

  AssignmentsDelegate get assignments => AssignmentsDelegate._(this);

  TasksDelegate get tasks => TasksDelegate._(this);

  RemindersDelegate get reminders => RemindersDelegate._(this);

  ProjectsDelegate get projects => ProjectsDelegate._(this);

  ProjectMembersDelegate get projectMembers => ProjectMembersDelegate._(this);
}
