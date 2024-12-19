// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

class ProjectsCountOutputType {
  const ProjectsCountOutputType({
    this.tasks,
    this.projectMembers,
  });

  factory ProjectsCountOutputType.fromJson(Map json) => ProjectsCountOutputType(
        tasks: json['tasks'],
        projectMembers: json['project_members'],
      );

  final int? tasks;

  final int? projectMembers;

  Map<String, dynamic> toJson() => {
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class UsersCountOutputType {
  const UsersCountOutputType({
    this.projectMembers,
    this.assignments,
  });

  factory UsersCountOutputType.fromJson(Map json) => UsersCountOutputType(
        projectMembers: json['project_members'],
        assignments: json['assignments'],
      );

  final int? projectMembers;

  final int? assignments;

  Map<String, dynamic> toJson() => {
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntNullableFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedDateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DateTimeNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class NestedEnumassignmentTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumassignmentTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.AssignmentType, _i1.Reference<_i3.AssignmentType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? notIn;

  final _i1.PrismaUnion<_i3.AssignmentType, _i2.NestedEnumassignmentTypeFilter>?
      not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumassignmentTypeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumassignmentTypeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.AssignmentType, _i1.Reference<_i3.AssignmentType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? notIn;

  final _i1.PrismaUnion<_i3.AssignmentType, _i2.NestedEnumassignmentTypeFilter>?
      not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class UsersRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.UsersWhereInput? $is;

  final _i2.UsersWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ProjectsNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.ProjectsWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.ProjectsWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class NestedEnumreminderCategoryFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumreminderCategoryFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1
      .PrismaUnion<_i3.ReminderCategory, _i1.Reference<_i3.ReminderCategory>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? notIn;

  final _i1
      .PrismaUnion<_i3.ReminderCategory, _i2.NestedEnumreminderCategoryFilter>?
      not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumreminderCategoryFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumreminderCategoryFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1
      .PrismaUnion<_i3.ReminderCategory, _i1.Reference<_i3.ReminderCategory>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? notIn;

  final _i1
      .PrismaUnion<_i3.ReminderCategory, _i2.NestedEnumreminderCategoryFilter>?
      not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class RemindersWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.reminderCategory,
    this.assignments,
  });

  final _i1
      .PrismaUnion<_i2.RemindersWhereInput, Iterable<_i2.RemindersWhereInput>>?
      AND;

  final Iterable<_i2.RemindersWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.RemindersWhereInput, Iterable<_i2.RemindersWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.EnumreminderCategoryFilter, _i3.ReminderCategory>?
      reminderCategory;

  final _i1
      .PrismaUnion<_i2.AssignmentsRelationFilter, _i2.AssignmentsWhereInput>?
      assignments;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class RemindersNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.RemindersWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.RemindersWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class TasksWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  final _i1.PrismaUnion<_i2.TasksWhereInput, Iterable<_i2.TasksWhereInput>>?
      AND;

  final Iterable<_i2.TasksWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TasksWhereInput, Iterable<_i2.TasksWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? completed;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentProject;

  final _i1
      .PrismaUnion<_i2.AssignmentsRelationFilter, _i2.AssignmentsWhereInput>?
      assignments;

  final _i1.PrismaUnion<_i2.ProjectsNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProjectsWhereInput, _i1.PrismaNull>>? projects;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments,
        'projects': projects,
      };
}

class TasksNullableRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i1.PrismaUnion<_i2.TasksWhereInput, _i1.PrismaNull>? $is;

  final _i1.PrismaUnion<_i2.TasksWhereInput, _i1.PrismaNull>? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class AssignmentsWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<_i2.AssignmentsWhereInput,
      Iterable<_i2.AssignmentsWhereInput>>? AND;

  final Iterable<_i2.AssignmentsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AssignmentsWhereInput,
      Iterable<_i2.AssignmentsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? subject;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.EnumassignmentTypeFilter, _i3.AssignmentType>?
      assignmentType;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  final _i1.PrismaUnion<_i2.ProjectsNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProjectsWhereInput, _i1.PrismaNull>>? projects;

  final _i1.PrismaUnion<_i2.RemindersNullableRelationFilter,
      _i1.PrismaUnion<_i2.RemindersWhereInput, _i1.PrismaNull>>? reminders;

  final _i1.PrismaUnion<_i2.TasksNullableRelationFilter,
      _i1.PrismaUnion<_i2.TasksWhereInput, _i1.PrismaNull>>? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.AssignmentsWhereInput? $is;

  final _i2.AssignmentsWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class TasksListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.TasksWhereInput? every;

  final _i2.TasksWhereInput? some;

  final _i2.TasksWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class ProjectsWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
    this.projectMembers,
  });

  final _i1
      .PrismaUnion<_i2.ProjectsWhereInput, Iterable<_i2.ProjectsWhereInput>>?
      AND;

  final Iterable<_i2.ProjectsWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.ProjectsWhereInput, Iterable<_i2.ProjectsWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? completed;

  final _i1
      .PrismaUnion<_i2.AssignmentsRelationFilter, _i2.AssignmentsWhereInput>?
      assignments;

  final _i2.TasksListRelationFilter? tasks;

  final _i2.ProjectMembersListRelationFilter? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.ProjectsWhereInput? $is;

  final _i2.ProjectsWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class ProjectMembersWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  final _i1.PrismaUnion<_i2.ProjectMembersWhereInput,
      Iterable<_i2.ProjectMembersWhereInput>>? AND;

  final Iterable<_i2.ProjectMembersWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereInput,
      Iterable<_i2.ProjectMembersWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? projectMemberId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? memberUsername;

  final _i1.PrismaUnion<_i2.ProjectsRelationFilter, _i2.ProjectsWhereInput>?
      project;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project,
        'users': users,
      };
}

class ProjectMembersListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.ProjectMembersWhereInput? every;

  final _i2.ProjectMembersWhereInput? some;

  final _i2.ProjectMembersWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class AssignmentsListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.AssignmentsWhereInput? every;

  final _i2.AssignmentsWhereInput? some;

  final _i2.AssignmentsWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UsersWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      AND;

  final Iterable<_i2.UsersWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<_i2.StringFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? joinDate;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      userTimezone;

  final _i2.ProjectMembersListRelationFilter? projectMembers;

  final _i2.AssignmentsListRelationFilter? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class UsersWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersWhereUniqueInput({
    this.userId,
    this.username,
    this.AND,
    this.OR,
    this.NOT,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final String? userId;

  final String? username;

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      AND;

  final Iterable<_i2.UsersWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UsersWhereInput, Iterable<_i2.UsersWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? joinDate;

  final _i1
      .PrismaUnion<_i2.IntNullableFilter, _i1.PrismaUnion<int, _i1.PrismaNull>>?
      userTimezone;

  final _i2.ProjectMembersListRelationFilter? projectMembers;

  final _i2.AssignmentsListRelationFilter? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class AssignmentsUsersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class AssignmentsProjectsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsProjectsArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProjectsWhereInput? where;

  final _i2.ProjectsSelect? select;

  final _i2.ProjectsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class RemindersAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersAssignmentsArgs({
    this.select,
    this.include,
  });

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class RemindersSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersSelect({
    this.assignmentId,
    this.reminderCategory,
    this.assignments,
  });

  final bool? assignmentId;

  final bool? reminderCategory;

  final _i1.PrismaUnion<bool, _i2.RemindersAssignmentsArgs>? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class RemindersInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersInclude({this.assignments});

  final _i1.PrismaUnion<bool, _i2.RemindersAssignmentsArgs>? assignments;

  @override
  Map<String, dynamic> toJson() => {'assignments': assignments};
}

class AssignmentsRemindersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsRemindersArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.RemindersWhereInput? where;

  final _i2.RemindersSelect? select;

  final _i2.RemindersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class TasksAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksAssignmentsArgs({
    this.select,
    this.include,
  });

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class TasksProjectsArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksProjectsArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProjectsWhereInput? where;

  final _i2.ProjectsSelect? select;

  final _i2.ProjectsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class TasksSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? parentProject;

  final _i1.PrismaUnion<bool, _i2.TasksAssignmentsArgs>? assignments;

  final _i1.PrismaUnion<bool, _i2.TasksProjectsArgs>? projects;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments,
        'projects': projects,
      };
}

class TasksInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksInclude({
    this.assignments,
    this.projects,
  });

  final _i1.PrismaUnion<bool, _i2.TasksAssignmentsArgs>? assignments;

  final _i1.PrismaUnion<bool, _i2.TasksProjectsArgs>? projects;

  @override
  Map<String, dynamic> toJson() => {
        'assignments': assignments,
        'projects': projects,
      };
}

class AssignmentsTasksArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsTasksArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.TasksWhereInput? where;

  final _i2.TasksSelect? select;

  final _i2.TasksInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class AssignmentsInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsInclude({
    this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<bool, _i2.AssignmentsUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.AssignmentsProjectsArgs>? projects;

  final _i1.PrismaUnion<bool, _i2.AssignmentsRemindersArgs>? reminders;

  final _i1.PrismaUnion<bool, _i2.AssignmentsTasksArgs>? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class ProjectsAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsAssignmentsArgs({
    this.select,
    this.include,
  });

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class ProjectMembersOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class AssignmentsOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class UsersOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOrderByWithRelationInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? signinMethod;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? device;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  final _i2.SortOrder? joinDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userTimezone;

  final _i2.ProjectMembersOrderByRelationAggregateInput? projectMembers;

  final _i2.AssignmentsOrderByRelationAggregateInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class TasksOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class ProjectsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsOrderByWithRelationInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
    this.projectMembers,
  });

  final _i2.SortOrder? assignmentId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? completeDate;

  final _i2.SortOrder? completed;

  final _i2.AssignmentsOrderByWithRelationInput? assignments;

  final _i2.TasksOrderByRelationAggregateInput? tasks;

  final _i2.ProjectMembersOrderByRelationAggregateInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class RemindersOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersOrderByWithRelationInput({
    this.assignmentId,
    this.reminderCategory,
    this.assignments,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? reminderCategory;

  final _i2.AssignmentsOrderByWithRelationInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class AssignmentsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsOrderByWithRelationInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? createDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? updatedAt;

  final _i2.SortOrder? subject;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? notes;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? dueDate;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? assignmentType;

  final _i2.UsersOrderByWithRelationInput? users;

  final _i2.ProjectsOrderByWithRelationInput? projects;

  final _i2.RemindersOrderByWithRelationInput? reminders;

  final _i2.TasksOrderByWithRelationInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class TasksOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksOrderByWithRelationInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  final _i2.SortOrder? assignmentId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? completeDate;

  final _i2.SortOrder? completed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? parentProject;

  final _i2.AssignmentsOrderByWithRelationInput? assignments;

  final _i2.ProjectsOrderByWithRelationInput? projects;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments,
        'projects': projects,
      };
}

class TasksWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksWhereUniqueInput({
    this.assignmentId,
    this.AND,
    this.OR,
    this.NOT,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  final String? assignmentId;

  final _i1.PrismaUnion<_i2.TasksWhereInput, Iterable<_i2.TasksWhereInput>>?
      AND;

  final Iterable<_i2.TasksWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TasksWhereInput, Iterable<_i2.TasksWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? completed;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentProject;

  final _i1
      .PrismaUnion<_i2.AssignmentsRelationFilter, _i2.AssignmentsWhereInput>?
      assignments;

  final _i1.PrismaUnion<_i2.ProjectsNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProjectsWhereInput, _i1.PrismaNull>>? projects;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments,
        'projects': projects,
      };
}

enum TasksScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  assignmentId<String>('assignment_id', 'tasks'),
  completeDate<DateTime>('complete_date', 'tasks'),
  completed<bool>('completed', 'tasks'),
  parentProject<String>('parent_project', 'tasks');

  const TasksScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProjectsTasksArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsTasksArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.TasksWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.TasksOrderByWithRelationInput>,
      _i2.TasksOrderByWithRelationInput>? orderBy;

  final _i2.TasksWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.TasksScalar, Iterable<_i2.TasksScalar>>? distinct;

  final _i2.TasksSelect? select;

  final _i2.TasksInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProjectMembersOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersOrderByWithRelationInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  final _i2.SortOrder? projectMemberId;

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? memberUsername;

  final _i2.ProjectsOrderByWithRelationInput? project;

  final _i2.UsersOrderByWithRelationInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project,
        'users': users,
      };
}

class ProjectMembersWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersWhereUniqueInput({
    this.projectMemberId,
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  final String? projectMemberId;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereInput,
      Iterable<_i2.ProjectMembersWhereInput>>? AND;

  final Iterable<_i2.ProjectMembersWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereInput,
      Iterable<_i2.ProjectMembersWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? memberUsername;

  final _i1.PrismaUnion<_i2.ProjectsRelationFilter, _i2.ProjectsWhereInput>?
      project;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project,
        'users': users,
      };
}

enum ProjectMembersScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  projectMemberId<String>('project_member_id', 'project_members'),
  assignmentId<String>('assignment_id', 'project_members'),
  memberUsername<String>('member_username', 'project_members');

  const ProjectMembersScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProjectsProjectMembersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsProjectMembersArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProjectMembersWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProjectMembersOrderByWithRelationInput>,
      _i2.ProjectMembersOrderByWithRelationInput>? orderBy;

  final _i2.ProjectMembersWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProjectMembersScalar,
      Iterable<_i2.ProjectMembersScalar>>? distinct;

  final _i2.ProjectMembersSelect? select;

  final _i2.ProjectMembersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class ProjectsCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCountOutputTypeSelect({
    this.tasks,
    this.projectMembers,
  });

  final bool? tasks;

  final bool? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCountArgs({this.select});

  final _i2.ProjectsCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectsInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsInclude({
    this.assignments,
    this.tasks,
    this.projectMembers,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.ProjectsAssignmentsArgs>? assignments;

  final _i1.PrismaUnion<bool, _i2.ProjectsTasksArgs>? tasks;

  final _i1.PrismaUnion<bool, _i2.ProjectsProjectMembersArgs>? projectMembers;

  final _i1.PrismaUnion<bool, _i2.ProjectsCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
        '_count': $count,
      };
}

class ProjectMembersProjectArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersProjectArgs({
    this.select,
    this.include,
  });

  final _i2.ProjectsSelect? select;

  final _i2.ProjectsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ProjectMembersUsersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class ProjectMembersInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersInclude({
    this.project,
    this.users,
  });

  final _i1.PrismaUnion<bool, _i2.ProjectMembersProjectArgs>? project;

  final _i1.PrismaUnion<bool, _i2.ProjectMembersUsersArgs>? users;

  @override
  Map<String, dynamic> toJson() => {
        'project': project,
        'users': users,
      };
}

class UsersProjectMembersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersProjectMembersArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.ProjectMembersWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.ProjectMembersOrderByWithRelationInput>,
      _i2.ProjectMembersOrderByWithRelationInput>? orderBy;

  final _i2.ProjectMembersWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.ProjectMembersScalar,
      Iterable<_i2.ProjectMembersScalar>>? distinct;

  final _i2.ProjectMembersSelect? select;

  final _i2.ProjectMembersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class AssignmentsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsWhereUniqueInput({
    this.assignmentId,
    this.AND,
    this.OR,
    this.NOT,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final _i1.PrismaUnion<_i2.AssignmentsWhereInput,
      Iterable<_i2.AssignmentsWhereInput>>? AND;

  final Iterable<_i2.AssignmentsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AssignmentsWhereInput,
      Iterable<_i2.AssignmentsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? subject;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.EnumassignmentTypeFilter, _i3.AssignmentType>?
      assignmentType;

  final _i1.PrismaUnion<_i2.UsersRelationFilter, _i2.UsersWhereInput>? users;

  final _i1.PrismaUnion<_i2.ProjectsNullableRelationFilter,
      _i1.PrismaUnion<_i2.ProjectsWhereInput, _i1.PrismaNull>>? projects;

  final _i1.PrismaUnion<_i2.RemindersNullableRelationFilter,
      _i1.PrismaUnion<_i2.RemindersWhereInput, _i1.PrismaNull>>? reminders;

  final _i1.PrismaUnion<_i2.TasksNullableRelationFilter,
      _i1.PrismaUnion<_i2.TasksWhereInput, _i1.PrismaNull>>? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

enum AssignmentsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  assignmentId<String>('assignment_id', 'assignments'),
  createDate<DateTime>('create_date', 'assignments'),
  updatedAt<DateTime>('updated_at', 'assignments'),
  subject<String>('subject', 'assignments'),
  notes<String>('notes', 'assignments'),
  dueDate<DateTime>('due_date', 'assignments'),
  userId<String>('user_id', 'assignments'),
  assignmentType<_i3.AssignmentType>('assignment_type', 'assignments');

  const AssignmentsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UsersAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersAssignmentsArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.AssignmentsWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.AssignmentsOrderByWithRelationInput>,
      _i2.AssignmentsOrderByWithRelationInput>? orderBy;

  final _i2.AssignmentsWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.AssignmentsScalar, Iterable<_i2.AssignmentsScalar>>?
      distinct;

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UsersCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountOutputTypeSelect({
    this.projectMembers,
    this.assignments,
  });

  final bool? projectMembers;

  final bool? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class UsersCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountArgs({this.select});

  final _i2.UsersCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersInclude({
    this.projectMembers,
    this.assignments,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UsersProjectMembersArgs>? projectMembers;

  final _i1.PrismaUnion<bool, _i2.UsersAssignmentsArgs>? assignments;

  final _i1.PrismaUnion<bool, _i2.UsersCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'project_members': projectMembers,
        'assignments': assignments,
        '_count': $count,
      };
}

class AssignmentsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsSelect({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final bool? assignmentId;

  final bool? createDate;

  final bool? updatedAt;

  final bool? subject;

  final bool? notes;

  final bool? dueDate;

  final bool? userId;

  final bool? assignmentType;

  final _i1.PrismaUnion<bool, _i2.AssignmentsUsersArgs>? users;

  final _i1.PrismaUnion<bool, _i2.AssignmentsProjectsArgs>? projects;

  final _i1.PrismaUnion<bool, _i2.AssignmentsRemindersArgs>? reminders;

  final _i1.PrismaUnion<bool, _i2.AssignmentsTasksArgs>? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class ProjectsSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
    this.projectMembers,
    this.$count,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final _i1.PrismaUnion<bool, _i2.ProjectsAssignmentsArgs>? assignments;

  final _i1.PrismaUnion<bool, _i2.ProjectsTasksArgs>? tasks;

  final _i1.PrismaUnion<bool, _i2.ProjectsProjectMembersArgs>? projectMembers;

  final _i1.PrismaUnion<bool, _i2.ProjectsCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
        '_count': $count,
      };
}

class ProjectMembersSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersSelect({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  final bool? projectMemberId;

  final bool? assignmentId;

  final bool? memberUsername;

  final _i1.PrismaUnion<bool, _i2.ProjectMembersProjectArgs>? project;

  final _i1.PrismaUnion<bool, _i2.ProjectMembersUsersArgs>? users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project,
        'users': users,
      };
}

class UsersSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersSelect({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
    this.$count,
  });

  final bool? userId;

  final bool? email;

  final bool? signinMethod;

  final bool? name;

  final bool? device;

  final bool? username;

  final bool? password;

  final bool? joinDate;

  final bool? userTimezone;

  final _i1.PrismaUnion<bool, _i2.UsersProjectMembersArgs>? projectMembers;

  final _i1.PrismaUnion<bool, _i2.UsersAssignmentsArgs>? assignments;

  final _i1.PrismaUnion<bool, _i2.UsersCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
        '_count': $count,
      };
}

enum UsersScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  userId<String>('user_id', 'users'),
  email<String>('email', 'users'),
  signinMethod<String>('signin_method', 'users'),
  name$<String>('name', 'users'),
  device<String>('device', 'users'),
  username<String>('username', 'users'),
  password<String>('password', 'users'),
  joinDate<DateTime>('join_date', 'users'),
  userTimezone<int>('user_timezone', 'users');

  const UsersScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UsersCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateWithoutAssignmentsInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  final _i2.ProjectMembersCreateNestedManyWithoutUsersInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
      };
}

class ProjectMembersUncheckedCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedCreateWithoutUsersInput({
    this.projectMemberId,
    required this.assignmentId,
  });

  final String? projectMemberId;

  final String assignmentId;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
      };
}

class ProjectMembersCreateOrConnectWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectMembersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateWithoutUsersInput,
      _i2.ProjectMembersUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectMembersCreateManyUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateManyUsersInput({
    this.projectMemberId,
    required this.assignmentId,
  });

  final String? projectMemberId;

  final String assignmentId;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
      };
}

class ProjectMembersCreateManyUsersInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateManyUsersInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ProjectMembersCreateManyUsersInput,
      Iterable<_i2.ProjectMembersCreateManyUsersInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ProjectMembersUncheckedCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutUsersInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutUsersInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutUsersInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i2.ProjectMembersCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersUncheckedCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedCreateWithoutAssignmentsInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  final _i2.ProjectMembersUncheckedCreateNestedManyWithoutUsersInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
      };
}

class UsersCreateOrConnectWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateOrConnectWithoutAssignmentsInput({
    required this.where,
    required this.create,
  });

  final _i2.UsersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutAssignmentsInput,
      _i2.UsersUncheckedCreateWithoutAssignmentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsersCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutAssignmentsInput,
      _i2.UsersUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.UsersCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.UsersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class RemindersCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCreateWithoutAssignmentsInput(
      {required this.reminderCategory});

  final _i3.ReminderCategory reminderCategory;

  @override
  Map<String, dynamic> toJson() => {'reminder_category': reminderCategory};
}

class RemindersUncheckedCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedCreateWithoutAssignmentsInput(
      {required this.reminderCategory});

  final _i3.ReminderCategory reminderCategory;

  @override
  Map<String, dynamic> toJson() => {'reminder_category': reminderCategory};
}

class RemindersWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersWhereUniqueInput({
    this.assignmentId,
    this.AND,
    this.OR,
    this.NOT,
    this.reminderCategory,
    this.assignments,
  });

  final String? assignmentId;

  final _i1
      .PrismaUnion<_i2.RemindersWhereInput, Iterable<_i2.RemindersWhereInput>>?
      AND;

  final Iterable<_i2.RemindersWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.RemindersWhereInput, Iterable<_i2.RemindersWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.EnumreminderCategoryFilter, _i3.ReminderCategory>?
      reminderCategory;

  final _i1
      .PrismaUnion<_i2.AssignmentsRelationFilter, _i2.AssignmentsWhereInput>?
      assignments;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class RemindersCreateOrConnectWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCreateOrConnectWithoutAssignmentsInput({
    required this.where,
    required this.create,
  });

  final _i2.RemindersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.RemindersCreateWithoutAssignmentsInput,
      _i2.RemindersUncheckedCreateWithoutAssignmentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class RemindersCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.RemindersCreateWithoutAssignmentsInput,
      _i2.RemindersUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.RemindersCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.RemindersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AssignmentsCreateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateWithoutTasksInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
    required this.users,
    this.projects,
    this.reminders,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  final _i2.UsersCreateNestedOneWithoutAssignmentsInput users;

  final _i2.ProjectsCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.RemindersCreateNestedOneWithoutAssignmentsInput? reminders;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
      };
}

class TasksUncheckedCreateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedCreateWithoutProjectsInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class TasksCreateOrConnectWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateOrConnectWithoutProjectsInput({
    required this.where,
    required this.create,
  });

  final _i2.TasksWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TasksCreateWithoutProjectsInput,
      _i2.TasksUncheckedCreateWithoutProjectsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TasksCreateManyProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateManyProjectsInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class TasksCreateManyProjectsInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateManyProjectsInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.TasksCreateManyProjectsInput,
      Iterable<_i2.TasksCreateManyProjectsInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class TasksUncheckedCreateNestedManyWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedCreateNestedManyWithoutProjectsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TasksCreateWithoutProjectsInput,
      _i1.PrismaUnion<
          Iterable<_i2.TasksCreateWithoutProjectsInput>,
          _i1.PrismaUnion<_i2.TasksUncheckedCreateWithoutProjectsInput,
              Iterable<_i2.TasksUncheckedCreateWithoutProjectsInput>>>>? create;

  final _i1.PrismaUnion<_i2.TasksCreateOrConnectWithoutProjectsInput,
      Iterable<_i2.TasksCreateOrConnectWithoutProjectsInput>>? connectOrCreate;

  final _i2.TasksCreateManyProjectsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProjectMembersUncheckedCreateWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedCreateWithoutProjectInput({
    this.projectMemberId,
    required this.memberUsername,
  });

  final String? projectMemberId;

  final String memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'member_username': memberUsername,
      };
}

class ProjectMembersCreateOrConnectWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateOrConnectWithoutProjectInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectMembersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateWithoutProjectInput,
      _i2.ProjectMembersUncheckedCreateWithoutProjectInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectMembersCreateManyProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateManyProjectInput({
    this.projectMemberId,
    required this.memberUsername,
  });

  final String? projectMemberId;

  final String memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'member_username': memberUsername,
      };
}

class ProjectMembersCreateManyProjectInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateManyProjectInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.ProjectMembersCreateManyProjectInput,
      Iterable<_i2.ProjectMembersCreateManyProjectInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class ProjectMembersUncheckedCreateNestedManyWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedCreateNestedManyWithoutProjectInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutProjectInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutProjectInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutProjectInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutProjectInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutProjectInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutProjectInput>>?
      connectOrCreate;

  final _i2.ProjectMembersCreateManyProjectInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProjectsUncheckedCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedCreateWithoutAssignmentsInput({
    this.completeDate,
    required this.completed,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.TasksUncheckedCreateNestedManyWithoutProjectsInput? tasks;

  final _i2.ProjectMembersUncheckedCreateNestedManyWithoutProjectInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsWhereUniqueInput({
    this.assignmentId,
    this.AND,
    this.OR,
    this.NOT,
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
    this.projectMembers,
  });

  final String? assignmentId;

  final _i1
      .PrismaUnion<_i2.ProjectsWhereInput, Iterable<_i2.ProjectsWhereInput>>?
      AND;

  final Iterable<_i2.ProjectsWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.ProjectsWhereInput, Iterable<_i2.ProjectsWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? completed;

  final _i1
      .PrismaUnion<_i2.AssignmentsRelationFilter, _i2.AssignmentsWhereInput>?
      assignments;

  final _i2.TasksListRelationFilter? tasks;

  final _i2.ProjectMembersListRelationFilter? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsCreateOrConnectWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateOrConnectWithoutAssignmentsInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedCreateWithoutAssignmentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectsUncheckedCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.ProjectsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class RemindersUncheckedCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.RemindersCreateWithoutAssignmentsInput,
      _i2.RemindersUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.RemindersCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.RemindersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AssignmentsUncheckedCreateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedCreateWithoutTasksInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.userId,
    required this.assignmentType,
    this.projects,
    this.reminders,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final String userId;

  final _i3.AssignmentType assignmentType;

  final _i2.ProjectsUncheckedCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.RemindersUncheckedCreateNestedOneWithoutAssignmentsInput? reminders;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
      };
}

class AssignmentsCreateOrConnectWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateOrConnectWithoutTasksInput({
    required this.where,
    required this.create,
  });

  final _i2.AssignmentsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutTasksInput,
      _i2.AssignmentsUncheckedCreateWithoutTasksInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AssignmentsCreateNestedOneWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateNestedOneWithoutTasksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutTasksInput,
      _i2.AssignmentsUncheckedCreateWithoutTasksInput>? create;

  final _i2.AssignmentsCreateOrConnectWithoutTasksInput? connectOrCreate;

  final _i2.AssignmentsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TasksCreateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateWithoutProjectsInput({
    this.completeDate,
    required this.completed,
    required this.assignments,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.AssignmentsCreateNestedOneWithoutTasksInput assignments;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
      };
}

class TasksCreateNestedManyWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateNestedManyWithoutProjectsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.TasksCreateWithoutProjectsInput,
      _i1.PrismaUnion<
          Iterable<_i2.TasksCreateWithoutProjectsInput>,
          _i1.PrismaUnion<_i2.TasksUncheckedCreateWithoutProjectsInput,
              Iterable<_i2.TasksUncheckedCreateWithoutProjectsInput>>>>? create;

  final _i1.PrismaUnion<_i2.TasksCreateOrConnectWithoutProjectsInput,
      Iterable<_i2.TasksCreateOrConnectWithoutProjectsInput>>? connectOrCreate;

  final _i2.TasksCreateManyProjectsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProjectsCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateWithoutAssignmentsInput({
    this.completeDate,
    required this.completed,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.TasksCreateNestedManyWithoutProjectsInput? tasks;

  final _i2.ProjectMembersCreateNestedManyWithoutProjectInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.ProjectsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AssignmentsCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateWithoutUsersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  final _i2.ProjectsCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.RemindersCreateNestedOneWithoutAssignmentsInput? reminders;

  final _i2.TasksCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class TasksUncheckedCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedCreateWithoutAssignmentsInput({
    this.completeDate,
    required this.completed,
    this.parentProject,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksCreateOrConnectWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateOrConnectWithoutAssignmentsInput({
    required this.where,
    required this.create,
  });

  final _i2.TasksWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TasksCreateWithoutAssignmentsInput,
      _i2.TasksUncheckedCreateWithoutAssignmentsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class TasksUncheckedCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TasksCreateWithoutAssignmentsInput,
      _i2.TasksUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.TasksCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.TasksWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AssignmentsUncheckedCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedCreateWithoutUsersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  final _i2.ProjectsUncheckedCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.RemindersUncheckedCreateNestedOneWithoutAssignmentsInput? reminders;

  final _i2.TasksUncheckedCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsCreateOrConnectWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  final _i2.AssignmentsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutUsersInput,
      _i2.AssignmentsUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AssignmentsCreateManyUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateManyUsersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
      };
}

class AssignmentsCreateManyUsersInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateManyUsersInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateManyUsersInput,
      Iterable<_i2.AssignmentsCreateManyUsersInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class AssignmentsCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.AssignmentsCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.AssignmentsCreateWithoutUsersInput>,
              _i1.PrismaUnion<_i2.AssignmentsUncheckedCreateWithoutUsersInput,
                  Iterable<_i2.AssignmentsUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.AssignmentsCreateOrConnectWithoutUsersInput,
          Iterable<_i2.AssignmentsCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i2.AssignmentsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersCreateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateWithoutProjectMembersInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
    this.assignments,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  final _i2.AssignmentsCreateNestedManyWithoutUsersInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'assignments': assignments,
      };
}

class AssignmentsUncheckedCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.AssignmentsCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.AssignmentsCreateWithoutUsersInput>,
              _i1.PrismaUnion<_i2.AssignmentsUncheckedCreateWithoutUsersInput,
                  Iterable<_i2.AssignmentsUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.AssignmentsCreateOrConnectWithoutUsersInput,
          Iterable<_i2.AssignmentsCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i2.AssignmentsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersUncheckedCreateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedCreateWithoutProjectMembersInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
    this.assignments,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  final _i2.AssignmentsUncheckedCreateNestedManyWithoutUsersInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'assignments': assignments,
      };
}

class UsersCreateOrConnectWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateOrConnectWithoutProjectMembersInput({
    required this.where,
    required this.create,
  });

  final _i2.UsersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutProjectMembersInput,
      _i2.UsersUncheckedCreateWithoutProjectMembersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UsersCreateNestedOneWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateNestedOneWithoutProjectMembersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutProjectMembersInput,
      _i2.UsersUncheckedCreateWithoutProjectMembersInput>? create;

  final _i2.UsersCreateOrConnectWithoutProjectMembersInput? connectOrCreate;

  final _i2.UsersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProjectMembersCreateWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateWithoutProjectInput({
    this.projectMemberId,
    required this.users,
  });

  final String? projectMemberId;

  final _i2.UsersCreateNestedOneWithoutProjectMembersInput users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'users': users,
      };
}

class ProjectMembersCreateNestedManyWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateNestedManyWithoutProjectInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutProjectInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutProjectInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutProjectInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutProjectInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutProjectInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutProjectInput>>?
      connectOrCreate;

  final _i2.ProjectMembersCreateManyProjectInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class ProjectsCreateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateWithoutTasksInput({
    this.completeDate,
    required this.completed,
    required this.assignments,
    this.projectMembers,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.AssignmentsCreateNestedOneWithoutProjectsInput assignments;

  final _i2.ProjectMembersCreateNestedManyWithoutProjectInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'project_members': projectMembers,
      };
}

class ProjectsUncheckedCreateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedCreateWithoutTasksInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
    this.projectMembers,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.ProjectMembersUncheckedCreateNestedManyWithoutProjectInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'project_members': projectMembers,
      };
}

class ProjectsCreateOrConnectWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateOrConnectWithoutTasksInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutTasksInput,
      _i2.ProjectsUncheckedCreateWithoutTasksInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectsCreateNestedOneWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateNestedOneWithoutTasksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutTasksInput,
      _i2.ProjectsUncheckedCreateWithoutTasksInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutTasksInput? connectOrCreate;

  final _i2.ProjectsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class TasksCreateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateWithoutAssignmentsInput({
    this.completeDate,
    required this.completed,
    this.projects,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.ProjectsCreateNestedOneWithoutTasksInput? projects;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'projects': projects,
      };
}

class TasksCreateNestedOneWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateNestedOneWithoutAssignmentsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.TasksCreateWithoutAssignmentsInput,
      _i2.TasksUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.TasksCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.TasksWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class AssignmentsCreateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateWithoutProjectsInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
    required this.users,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  final _i2.UsersCreateNestedOneWithoutAssignmentsInput users;

  final _i2.RemindersCreateNestedOneWithoutAssignmentsInput? reminders;

  final _i2.TasksCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedCreateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedCreateWithoutProjectsInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.userId,
    required this.assignmentType,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final String userId;

  final _i3.AssignmentType assignmentType;

  final _i2.RemindersUncheckedCreateNestedOneWithoutAssignmentsInput? reminders;

  final _i2.TasksUncheckedCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsCreateOrConnectWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateOrConnectWithoutProjectsInput({
    required this.where,
    required this.create,
  });

  final _i2.AssignmentsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutProjectsInput,
      _i2.AssignmentsUncheckedCreateWithoutProjectsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AssignmentsCreateNestedOneWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateNestedOneWithoutProjectsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutProjectsInput,
      _i2.AssignmentsUncheckedCreateWithoutProjectsInput>? create;

  final _i2.AssignmentsCreateOrConnectWithoutProjectsInput? connectOrCreate;

  final _i2.AssignmentsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProjectsCreateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateWithoutProjectMembersInput({
    this.completeDate,
    required this.completed,
    required this.assignments,
    this.tasks,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.AssignmentsCreateNestedOneWithoutProjectsInput assignments;

  final _i2.TasksCreateNestedManyWithoutProjectsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
      };
}

class ProjectsUncheckedCreateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedCreateWithoutProjectMembersInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
    this.tasks,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.TasksUncheckedCreateNestedManyWithoutProjectsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
      };
}

class ProjectsCreateOrConnectWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateOrConnectWithoutProjectMembersInput({
    required this.where,
    required this.create,
  });

  final _i2.ProjectsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutProjectMembersInput,
      _i2.ProjectsUncheckedCreateWithoutProjectMembersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class ProjectsCreateNestedOneWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateNestedOneWithoutProjectMembersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutProjectMembersInput,
      _i2.ProjectsUncheckedCreateWithoutProjectMembersInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutProjectMembersInput? connectOrCreate;

  final _i2.ProjectsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class ProjectMembersCreateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateWithoutUsersInput({
    this.projectMemberId,
    required this.project,
  });

  final String? projectMemberId;

  final _i2.ProjectsCreateNestedOneWithoutProjectMembersInput project;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'project': project,
      };
}

class ProjectMembersCreateNestedManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutUsersInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutUsersInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutUsersInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i2.ProjectMembersCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UsersCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  final _i2.ProjectMembersCreateNestedManyWithoutUsersInput? projectMembers;

  final _i2.AssignmentsCreateNestedManyWithoutUsersInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class UsersUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedCreateInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  final _i2.ProjectMembersUncheckedCreateNestedManyWithoutUsersInput?
      projectMembers;

  final _i2.AssignmentsUncheckedCreateNestedManyWithoutUsersInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UsersCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCreateManyInput({
    this.userId,
    required this.email,
    this.signinMethod,
    required this.name,
    this.device,
    required this.username,
    required this.password,
    this.joinDate,
    this.userTimezone,
  });

  final String? userId;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? signinMethod;

  final String name;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? device;

  final String username;

  final String password;

  final DateTime? joinDate;

  final _i1.PrismaUnion<int, _i1.PrismaNull>? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class CreateManyusersAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyusersAndReturnOutputTypeSelect({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final bool? userId;

  final bool? email;

  final bool? signinMethod;

  final bool? name;

  final bool? device;

  final bool? username;

  final bool? password;

  final bool? joinDate;

  final bool? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableIntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<int, _i1.PrismaNull>? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class NullableDateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableDateTimeFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class EnumassignmentTypeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumassignmentTypeFieldUpdateOperationsInput({this.set});

  final _i3.AssignmentType? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class UsersUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateWithoutAssignmentsInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  final _i2.ProjectMembersUpdateManyWithoutUsersNestedInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
      };
}

class ProjectMembersUncheckedUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateWithoutUsersInput({
    this.projectMemberId,
    this.assignmentId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
      };
}

class ProjectMembersUpdateWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectMembersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateWithoutUsersInput,
      _i2.ProjectMembersUncheckedUpdateWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectMembersScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereInput,
      Iterable<_i2.ProjectMembersScalarWhereInput>>? AND;

  final Iterable<_i2.ProjectMembersScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereInput,
      Iterable<_i2.ProjectMembersScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? projectMemberId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.StringFilter, String>? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateManyMutationInput({this.projectMemberId});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  @override
  Map<String, dynamic> toJson() => {'project_member_id': projectMemberId};
}

class ProjectMembersUncheckedUpdateManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateManyWithoutUsersInput({
    this.projectMemberId,
    this.assignmentId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
      };
}

class ProjectMembersUpdateManyWithWhereWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateManyWithWhereWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectMembersScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateManyMutationInput,
      _i2.ProjectMembersUncheckedUpdateManyWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectMembersUncheckedUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutUsersInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutUsersInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutUsersInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpsertWithWhereUniqueWithoutUsersInput,
          Iterable<_i2.ProjectMembersUpsertWithWhereUniqueWithoutUsersInput>>?
      upsert;

  final _i2.ProjectMembersCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpdateWithWhereUniqueWithoutUsersInput,
          Iterable<_i2.ProjectMembersUpdateWithWhereUniqueWithoutUsersInput>>?
      update;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateManyWithWhereWithoutUsersInput,
          Iterable<_i2.ProjectMembersUpdateManyWithWhereWithoutUsersInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereInput,
      Iterable<_i2.ProjectMembersScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUncheckedUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateWithoutAssignmentsInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  final _i2.ProjectMembersUncheckedUpdateManyWithoutUsersNestedInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
      };
}

class UsersUpsertWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpsertWithoutAssignmentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutAssignmentsInput,
      _i2.UsersUncheckedUpdateWithoutAssignmentsInput> update;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutAssignmentsInput,
      _i2.UsersUncheckedCreateWithoutAssignmentsInput> create;

  final _i2.UsersWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsersUpdateToOneWithWhereWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateToOneWithWhereWithoutAssignmentsInput({
    this.where,
    required this.data,
  });

  final _i2.UsersWhereInput? where;

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutAssignmentsInput,
      _i2.UsersUncheckedUpdateWithoutAssignmentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersUpdateOneRequiredWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateOneRequiredWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutAssignmentsInput,
      _i2.UsersUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.UsersCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.UsersUpsertWithoutAssignmentsInput? upsert;

  final _i2.UsersWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsersUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.UsersUpdateWithoutAssignmentsInput,
          _i2.UsersUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class EnumreminderCategoryFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumreminderCategoryFieldUpdateOperationsInput({this.set});

  final _i3.ReminderCategory? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class RemindersUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUpdateWithoutAssignmentsInput({this.reminderCategory});

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.EnumreminderCategoryFieldUpdateOperationsInput>? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {'reminder_category': reminderCategory};
}

class RemindersUncheckedUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedUpdateWithoutAssignmentsInput(
      {this.reminderCategory});

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.EnumreminderCategoryFieldUpdateOperationsInput>? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {'reminder_category': reminderCategory};
}

class RemindersUpsertWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUpsertWithoutAssignmentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.RemindersUpdateWithoutAssignmentsInput,
      _i2.RemindersUncheckedUpdateWithoutAssignmentsInput> update;

  final _i1.PrismaUnion<_i2.RemindersCreateWithoutAssignmentsInput,
      _i2.RemindersUncheckedCreateWithoutAssignmentsInput> create;

  final _i2.RemindersWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class RemindersUpdateToOneWithWhereWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUpdateToOneWithWhereWithoutAssignmentsInput({
    this.where,
    required this.data,
  });

  final _i2.RemindersWhereInput? where;

  final _i1.PrismaUnion<_i2.RemindersUpdateWithoutAssignmentsInput,
      _i2.RemindersUncheckedUpdateWithoutAssignmentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class RemindersUpdateOneWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUpdateOneWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.RemindersCreateWithoutAssignmentsInput,
      _i2.RemindersUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.RemindersCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.RemindersUpsertWithoutAssignmentsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.RemindersWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.RemindersWhereInput>? delete;

  final _i2.RemindersWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.RemindersUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.RemindersUpdateWithoutAssignmentsInput,
          _i2.RemindersUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AssignmentsUpdateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateWithoutTasksInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
    this.users,
    this.projects,
    this.reminders,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.UsersUpdateOneRequiredWithoutAssignmentsNestedInput? users;

  final _i2.ProjectsUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.RemindersUpdateOneWithoutAssignmentsNestedInput? reminders;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
      };
}

class TasksUncheckedUpdateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateWithoutProjectsInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class TasksUpdateWithWhereUniqueWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateWithWhereUniqueWithoutProjectsInput({
    required this.where,
    required this.data,
  });

  final _i2.TasksWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TasksUpdateWithoutProjectsInput,
      _i2.TasksUncheckedUpdateWithoutProjectsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TasksScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i1.PrismaUnion<_i2.TasksScalarWhereInput,
      Iterable<_i2.TasksScalarWhereInput>>? AND;

  final Iterable<_i2.TasksScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TasksScalarWhereInput,
      Iterable<_i2.TasksScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? completed;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateManyMutationInput({
    this.completeDate,
    this.completed,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
      };
}

class TasksUncheckedUpdateManyWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateManyWithoutProjectsInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class TasksUpdateManyWithWhereWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateManyWithWhereWithoutProjectsInput({
    required this.where,
    required this.data,
  });

  final _i2.TasksScalarWhereInput where;

  final _i1.PrismaUnion<_i2.TasksUpdateManyMutationInput,
      _i2.TasksUncheckedUpdateManyWithoutProjectsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TasksUncheckedUpdateManyWithoutProjectsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateManyWithoutProjectsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TasksCreateWithoutProjectsInput,
      _i1.PrismaUnion<
          Iterable<_i2.TasksCreateWithoutProjectsInput>,
          _i1.PrismaUnion<_i2.TasksUncheckedCreateWithoutProjectsInput,
              Iterable<_i2.TasksUncheckedCreateWithoutProjectsInput>>>>? create;

  final _i1.PrismaUnion<_i2.TasksCreateOrConnectWithoutProjectsInput,
      Iterable<_i2.TasksCreateOrConnectWithoutProjectsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TasksUpsertWithWhereUniqueWithoutProjectsInput,
      Iterable<_i2.TasksUpsertWithWhereUniqueWithoutProjectsInput>>? upsert;

  final _i2.TasksCreateManyProjectsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TasksUpdateWithWhereUniqueWithoutProjectsInput,
      Iterable<_i2.TasksUpdateWithWhereUniqueWithoutProjectsInput>>? update;

  final _i1.PrismaUnion<_i2.TasksUpdateManyWithWhereWithoutProjectsInput,
      Iterable<_i2.TasksUpdateManyWithWhereWithoutProjectsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TasksScalarWhereInput,
      Iterable<_i2.TasksScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProjectMembersUncheckedUpdateWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateWithoutProjectInput({
    this.projectMemberId,
    this.memberUsername,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'member_username': memberUsername,
      };
}

class ProjectMembersUpdateWithWhereUniqueWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateWithWhereUniqueWithoutProjectInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectMembersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateWithoutProjectInput,
      _i2.ProjectMembersUncheckedUpdateWithoutProjectInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectMembersUncheckedUpdateManyWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateManyWithoutProjectInput({
    this.projectMemberId,
    this.memberUsername,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'member_username': memberUsername,
      };
}

class ProjectMembersUpdateManyWithWhereWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateManyWithWhereWithoutProjectInput({
    required this.where,
    required this.data,
  });

  final _i2.ProjectMembersScalarWhereInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateManyMutationInput,
      _i2.ProjectMembersUncheckedUpdateManyWithoutProjectInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectMembersUncheckedUpdateManyWithoutProjectNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateManyWithoutProjectNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutProjectInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutProjectInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutProjectInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutProjectInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutProjectInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutProjectInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpsertWithWhereUniqueWithoutProjectInput,
          Iterable<_i2.ProjectMembersUpsertWithWhereUniqueWithoutProjectInput>>?
      upsert;

  final _i2.ProjectMembersCreateManyProjectInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpdateWithWhereUniqueWithoutProjectInput,
          Iterable<_i2.ProjectMembersUpdateWithWhereUniqueWithoutProjectInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpdateManyWithWhereWithoutProjectInput,
          Iterable<_i2.ProjectMembersUpdateManyWithWhereWithoutProjectInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereInput,
      Iterable<_i2.ProjectMembersScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProjectsUncheckedUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedUpdateWithoutAssignmentsInput({
    this.completeDate,
    this.completed,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.TasksUncheckedUpdateManyWithoutProjectsNestedInput? tasks;

  final _i2.ProjectMembersUncheckedUpdateManyWithoutProjectNestedInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsUpdateToOneWithWhereWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateToOneWithWhereWithoutAssignmentsInput({
    this.where,
    required this.data,
  });

  final _i2.ProjectsWhereInput? where;

  final _i1.PrismaUnion<_i2.ProjectsUpdateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedUpdateWithoutAssignmentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectsUncheckedUpdateOneWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedUpdateOneWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.ProjectsUpsertWithoutAssignmentsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ProjectsWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ProjectsWhereInput>? delete;

  final _i2.ProjectsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProjectsUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.ProjectsUpdateWithoutAssignmentsInput,
          _i2.ProjectsUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class RemindersUncheckedUpdateOneWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedUpdateOneWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.RemindersCreateWithoutAssignmentsInput,
      _i2.RemindersUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.RemindersCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.RemindersUpsertWithoutAssignmentsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.RemindersWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.RemindersWhereInput>? delete;

  final _i2.RemindersWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.RemindersUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.RemindersUpdateWithoutAssignmentsInput,
          _i2.RemindersUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AssignmentsUncheckedUpdateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateWithoutTasksInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.projects,
    this.reminders,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.ProjectsUncheckedUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.RemindersUncheckedUpdateOneWithoutAssignmentsNestedInput? reminders;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
      };
}

class AssignmentsUpsertWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpsertWithoutTasksInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutTasksInput,
      _i2.AssignmentsUncheckedUpdateWithoutTasksInput> update;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutTasksInput,
      _i2.AssignmentsUncheckedCreateWithoutTasksInput> create;

  final _i2.AssignmentsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AssignmentsUpdateToOneWithWhereWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateToOneWithWhereWithoutTasksInput({
    this.where,
    required this.data,
  });

  final _i2.AssignmentsWhereInput? where;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutTasksInput,
      _i2.AssignmentsUncheckedUpdateWithoutTasksInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AssignmentsUpdateOneRequiredWithoutTasksNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateOneRequiredWithoutTasksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutTasksInput,
      _i2.AssignmentsUncheckedCreateWithoutTasksInput>? create;

  final _i2.AssignmentsCreateOrConnectWithoutTasksInput? connectOrCreate;

  final _i2.AssignmentsUpsertWithoutTasksInput? upsert;

  final _i2.AssignmentsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AssignmentsUpdateToOneWithWhereWithoutTasksInput,
      _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutTasksInput,
          _i2.AssignmentsUncheckedUpdateWithoutTasksInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class TasksUpdateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateWithoutProjectsInput({
    this.completeDate,
    this.completed,
    this.assignments,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.AssignmentsUpdateOneRequiredWithoutTasksNestedInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
      };
}

class TasksUpsertWithWhereUniqueWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpsertWithWhereUniqueWithoutProjectsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.TasksWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.TasksUpdateWithoutProjectsInput,
      _i2.TasksUncheckedUpdateWithoutProjectsInput> update;

  final _i1.PrismaUnion<_i2.TasksCreateWithoutProjectsInput,
      _i2.TasksUncheckedCreateWithoutProjectsInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class TasksUpdateManyWithoutProjectsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateManyWithoutProjectsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.TasksCreateWithoutProjectsInput,
      _i1.PrismaUnion<
          Iterable<_i2.TasksCreateWithoutProjectsInput>,
          _i1.PrismaUnion<_i2.TasksUncheckedCreateWithoutProjectsInput,
              Iterable<_i2.TasksUncheckedCreateWithoutProjectsInput>>>>? create;

  final _i1.PrismaUnion<_i2.TasksCreateOrConnectWithoutProjectsInput,
      Iterable<_i2.TasksCreateOrConnectWithoutProjectsInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.TasksUpsertWithWhereUniqueWithoutProjectsInput,
      Iterable<_i2.TasksUpsertWithWhereUniqueWithoutProjectsInput>>? upsert;

  final _i2.TasksCreateManyProjectsInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.TasksWhereUniqueInput,
      Iterable<_i2.TasksWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.TasksUpdateWithWhereUniqueWithoutProjectsInput,
      Iterable<_i2.TasksUpdateWithWhereUniqueWithoutProjectsInput>>? update;

  final _i1.PrismaUnion<_i2.TasksUpdateManyWithWhereWithoutProjectsInput,
      Iterable<_i2.TasksUpdateManyWithWhereWithoutProjectsInput>>? updateMany;

  final _i1.PrismaUnion<_i2.TasksScalarWhereInput,
      Iterable<_i2.TasksScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProjectsUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateWithoutAssignmentsInput({
    this.completeDate,
    this.completed,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.TasksUpdateManyWithoutProjectsNestedInput? tasks;

  final _i2.ProjectMembersUpdateManyWithoutProjectNestedInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsUpsertWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpsertWithoutAssignmentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProjectsUpdateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedUpdateWithoutAssignmentsInput> update;

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedCreateWithoutAssignmentsInput> create;

  final _i2.ProjectsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProjectsUpdateOneWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateOneWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutAssignmentsInput,
      _i2.ProjectsUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.ProjectsUpsertWithoutAssignmentsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ProjectsWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ProjectsWhereInput>? delete;

  final _i2.ProjectsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProjectsUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.ProjectsUpdateWithoutAssignmentsInput,
          _i2.ProjectsUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AssignmentsUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateWithoutUsersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.ProjectsUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.RemindersUpdateOneWithoutAssignmentsNestedInput? reminders;

  final _i2.TasksUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class TasksUncheckedUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateWithoutAssignmentsInput({
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksUpdateToOneWithWhereWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateToOneWithWhereWithoutAssignmentsInput({
    this.where,
    required this.data,
  });

  final _i2.TasksWhereInput? where;

  final _i1.PrismaUnion<_i2.TasksUpdateWithoutAssignmentsInput,
      _i2.TasksUncheckedUpdateWithoutAssignmentsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class TasksUncheckedUpdateOneWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateOneWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TasksCreateWithoutAssignmentsInput,
      _i2.TasksUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.TasksCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.TasksUpsertWithoutAssignmentsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.TasksWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.TasksWhereInput>? delete;

  final _i2.TasksWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TasksUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.TasksUpdateWithoutAssignmentsInput,
          _i2.TasksUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AssignmentsUncheckedUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateWithoutUsersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.ProjectsUncheckedUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.RemindersUncheckedUpdateOneWithoutAssignmentsNestedInput? reminders;

  final _i2.TasksUncheckedUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUpsertWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpsertWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.AssignmentsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutUsersInput,
      _i2.AssignmentsUncheckedUpdateWithoutUsersInput> update;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutUsersInput,
      _i2.AssignmentsUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class AssignmentsUpdateWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.AssignmentsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutUsersInput,
      _i2.AssignmentsUncheckedUpdateWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AssignmentsScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final _i1.PrismaUnion<_i2.AssignmentsScalarWhereInput,
      Iterable<_i2.AssignmentsScalarWhereInput>>? AND;

  final Iterable<_i2.AssignmentsScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.AssignmentsScalarWhereInput,
      Iterable<_i2.AssignmentsScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? createDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<_i2.StringFilter, String>? subject;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i1.PrismaUnion<_i2.EnumassignmentTypeFilter, _i3.AssignmentType>?
      assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateManyMutationInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
      };
}

class AssignmentsUncheckedUpdateManyWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateManyWithoutUsersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
      };
}

class AssignmentsUpdateManyWithWhereWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateManyWithWhereWithoutUsersInput({
    required this.where,
    required this.data,
  });

  final _i2.AssignmentsScalarWhereInput where;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateManyMutationInput,
      _i2.AssignmentsUncheckedUpdateManyWithoutUsersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AssignmentsUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.AssignmentsCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.AssignmentsCreateWithoutUsersInput>,
              _i1.PrismaUnion<_i2.AssignmentsUncheckedCreateWithoutUsersInput,
                  Iterable<_i2.AssignmentsUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.AssignmentsCreateOrConnectWithoutUsersInput,
          Iterable<_i2.AssignmentsCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.AssignmentsUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.AssignmentsUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i2.AssignmentsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.AssignmentsUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateManyWithWhereWithoutUsersInput,
          Iterable<_i2.AssignmentsUpdateManyWithWhereWithoutUsersInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.AssignmentsScalarWhereInput,
      Iterable<_i2.AssignmentsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUpdateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateWithoutProjectMembersInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.assignments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  final _i2.AssignmentsUpdateManyWithoutUsersNestedInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'assignments': assignments,
      };
}

class AssignmentsUncheckedUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.AssignmentsCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.AssignmentsCreateWithoutUsersInput>,
              _i1.PrismaUnion<_i2.AssignmentsUncheckedCreateWithoutUsersInput,
                  Iterable<_i2.AssignmentsUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.AssignmentsCreateOrConnectWithoutUsersInput,
          Iterable<_i2.AssignmentsCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<_i2.AssignmentsUpsertWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.AssignmentsUpsertWithWhereUniqueWithoutUsersInput>>? upsert;

  final _i2.AssignmentsCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.AssignmentsWhereUniqueInput,
      Iterable<_i2.AssignmentsWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithWhereUniqueWithoutUsersInput,
      Iterable<_i2.AssignmentsUpdateWithWhereUniqueWithoutUsersInput>>? update;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateManyWithWhereWithoutUsersInput,
          Iterable<_i2.AssignmentsUpdateManyWithWhereWithoutUsersInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.AssignmentsScalarWhereInput,
      Iterable<_i2.AssignmentsScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUncheckedUpdateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateWithoutProjectMembersInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.assignments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  final _i2.AssignmentsUncheckedUpdateManyWithoutUsersNestedInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'assignments': assignments,
      };
}

class UsersUpsertWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpsertWithoutProjectMembersInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutProjectMembersInput,
      _i2.UsersUncheckedUpdateWithoutProjectMembersInput> update;

  final _i1.PrismaUnion<_i2.UsersCreateWithoutProjectMembersInput,
      _i2.UsersUncheckedCreateWithoutProjectMembersInput> create;

  final _i2.UsersWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UsersUpdateToOneWithWhereWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateToOneWithWhereWithoutProjectMembersInput({
    this.where,
    required this.data,
  });

  final _i2.UsersWhereInput? where;

  final _i1.PrismaUnion<_i2.UsersUpdateWithoutProjectMembersInput,
      _i2.UsersUncheckedUpdateWithoutProjectMembersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UsersUpdateOneRequiredWithoutProjectMembersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateOneRequiredWithoutProjectMembersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UsersCreateWithoutProjectMembersInput,
      _i2.UsersUncheckedCreateWithoutProjectMembersInput>? create;

  final _i2.UsersCreateOrConnectWithoutProjectMembersInput? connectOrCreate;

  final _i2.UsersUpsertWithoutProjectMembersInput? upsert;

  final _i2.UsersWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UsersUpdateToOneWithWhereWithoutProjectMembersInput,
      _i1.PrismaUnion<_i2.UsersUpdateWithoutProjectMembersInput,
          _i2.UsersUncheckedUpdateWithoutProjectMembersInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProjectMembersUpdateWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateWithoutProjectInput({
    this.projectMemberId,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i2.UsersUpdateOneRequiredWithoutProjectMembersNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'users': users,
      };
}

class ProjectMembersUpsertWithWhereUniqueWithoutProjectInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpsertWithWhereUniqueWithoutProjectInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProjectMembersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateWithoutProjectInput,
      _i2.ProjectMembersUncheckedUpdateWithoutProjectInput> update;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateWithoutProjectInput,
      _i2.ProjectMembersUncheckedCreateWithoutProjectInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProjectMembersUpdateManyWithoutProjectNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateManyWithoutProjectNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutProjectInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutProjectInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutProjectInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutProjectInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutProjectInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutProjectInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpsertWithWhereUniqueWithoutProjectInput,
          Iterable<_i2.ProjectMembersUpsertWithWhereUniqueWithoutProjectInput>>?
      upsert;

  final _i2.ProjectMembersCreateManyProjectInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpdateWithWhereUniqueWithoutProjectInput,
          Iterable<_i2.ProjectMembersUpdateWithWhereUniqueWithoutProjectInput>>?
      update;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpdateManyWithWhereWithoutProjectInput,
          Iterable<_i2.ProjectMembersUpdateManyWithWhereWithoutProjectInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereInput,
      Iterable<_i2.ProjectMembersScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class ProjectsUpdateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateWithoutTasksInput({
    this.completeDate,
    this.completed,
    this.assignments,
    this.projectMembers,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.AssignmentsUpdateOneRequiredWithoutProjectsNestedInput? assignments;

  final _i2.ProjectMembersUpdateManyWithoutProjectNestedInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'project_members': projectMembers,
      };
}

class ProjectsUncheckedUpdateWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedUpdateWithoutTasksInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.projectMembers,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.ProjectMembersUncheckedUpdateManyWithoutProjectNestedInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'project_members': projectMembers,
      };
}

class ProjectsUpsertWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpsertWithoutTasksInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProjectsUpdateWithoutTasksInput,
      _i2.ProjectsUncheckedUpdateWithoutTasksInput> update;

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutTasksInput,
      _i2.ProjectsUncheckedCreateWithoutTasksInput> create;

  final _i2.ProjectsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProjectsUpdateToOneWithWhereWithoutTasksInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateToOneWithWhereWithoutTasksInput({
    this.where,
    required this.data,
  });

  final _i2.ProjectsWhereInput? where;

  final _i1.PrismaUnion<_i2.ProjectsUpdateWithoutTasksInput,
      _i2.ProjectsUncheckedUpdateWithoutTasksInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectsUpdateOneWithoutTasksNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateOneWithoutTasksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutTasksInput,
      _i2.ProjectsUncheckedCreateWithoutTasksInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutTasksInput? connectOrCreate;

  final _i2.ProjectsUpsertWithoutTasksInput? upsert;

  final _i1.PrismaUnion<bool, _i2.ProjectsWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.ProjectsWhereInput>? delete;

  final _i2.ProjectsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProjectsUpdateToOneWithWhereWithoutTasksInput,
      _i1.PrismaUnion<_i2.ProjectsUpdateWithoutTasksInput,
          _i2.ProjectsUncheckedUpdateWithoutTasksInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class TasksUpdateWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateWithoutAssignmentsInput({
    this.completeDate,
    this.completed,
    this.projects,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.ProjectsUpdateOneWithoutTasksNestedInput? projects;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'projects': projects,
      };
}

class TasksUpsertWithoutAssignmentsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpsertWithoutAssignmentsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.TasksUpdateWithoutAssignmentsInput,
      _i2.TasksUncheckedUpdateWithoutAssignmentsInput> update;

  final _i1.PrismaUnion<_i2.TasksCreateWithoutAssignmentsInput,
      _i2.TasksUncheckedCreateWithoutAssignmentsInput> create;

  final _i2.TasksWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class TasksUpdateOneWithoutAssignmentsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateOneWithoutAssignmentsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.TasksCreateWithoutAssignmentsInput,
      _i2.TasksUncheckedCreateWithoutAssignmentsInput>? create;

  final _i2.TasksCreateOrConnectWithoutAssignmentsInput? connectOrCreate;

  final _i2.TasksUpsertWithoutAssignmentsInput? upsert;

  final _i1.PrismaUnion<bool, _i2.TasksWhereInput>? disconnect;

  final _i1.PrismaUnion<bool, _i2.TasksWhereInput>? delete;

  final _i2.TasksWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.TasksUpdateToOneWithWhereWithoutAssignmentsInput,
      _i1.PrismaUnion<_i2.TasksUpdateWithoutAssignmentsInput,
          _i2.TasksUncheckedUpdateWithoutAssignmentsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
      };
}

class AssignmentsUpdateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateWithoutProjectsInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
    this.users,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.UsersUpdateOneRequiredWithoutAssignmentsNestedInput? users;

  final _i2.RemindersUpdateOneWithoutAssignmentsNestedInput? reminders;

  final _i2.TasksUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedUpdateWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateWithoutProjectsInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.RemindersUncheckedUpdateOneWithoutAssignmentsNestedInput? reminders;

  final _i2.TasksUncheckedUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUpsertWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpsertWithoutProjectsInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutProjectsInput,
      _i2.AssignmentsUncheckedUpdateWithoutProjectsInput> update;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutProjectsInput,
      _i2.AssignmentsUncheckedCreateWithoutProjectsInput> create;

  final _i2.AssignmentsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AssignmentsUpdateToOneWithWhereWithoutProjectsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateToOneWithWhereWithoutProjectsInput({
    this.where,
    required this.data,
  });

  final _i2.AssignmentsWhereInput? where;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutProjectsInput,
      _i2.AssignmentsUncheckedUpdateWithoutProjectsInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AssignmentsUpdateOneRequiredWithoutProjectsNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateOneRequiredWithoutProjectsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutProjectsInput,
      _i2.AssignmentsUncheckedCreateWithoutProjectsInput>? create;

  final _i2.AssignmentsCreateOrConnectWithoutProjectsInput? connectOrCreate;

  final _i2.AssignmentsUpsertWithoutProjectsInput? upsert;

  final _i2.AssignmentsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AssignmentsUpdateToOneWithWhereWithoutProjectsInput,
      _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutProjectsInput,
          _i2.AssignmentsUncheckedUpdateWithoutProjectsInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProjectsUpdateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateWithoutProjectMembersInput({
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.AssignmentsUpdateOneRequiredWithoutProjectsNestedInput? assignments;

  final _i2.TasksUpdateManyWithoutProjectsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
      };
}

class ProjectsUncheckedUpdateWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedUpdateWithoutProjectMembersInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.TasksUncheckedUpdateManyWithoutProjectsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
      };
}

class ProjectsUpsertWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpsertWithoutProjectMembersInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.ProjectsUpdateWithoutProjectMembersInput,
      _i2.ProjectsUncheckedUpdateWithoutProjectMembersInput> update;

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutProjectMembersInput,
      _i2.ProjectsUncheckedCreateWithoutProjectMembersInput> create;

  final _i2.ProjectsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class ProjectsUpdateToOneWithWhereWithoutProjectMembersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateToOneWithWhereWithoutProjectMembersInput({
    this.where,
    required this.data,
  });

  final _i2.ProjectsWhereInput? where;

  final _i1.PrismaUnion<_i2.ProjectsUpdateWithoutProjectMembersInput,
      _i2.ProjectsUncheckedUpdateWithoutProjectMembersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class ProjectsUpdateOneRequiredWithoutProjectMembersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateOneRequiredWithoutProjectMembersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.ProjectsCreateWithoutProjectMembersInput,
      _i2.ProjectsUncheckedCreateWithoutProjectMembersInput>? create;

  final _i2.ProjectsCreateOrConnectWithoutProjectMembersInput? connectOrCreate;

  final _i2.ProjectsUpsertWithoutProjectMembersInput? upsert;

  final _i2.ProjectsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.ProjectsUpdateToOneWithWhereWithoutProjectMembersInput,
      _i1.PrismaUnion<_i2.ProjectsUpdateWithoutProjectMembersInput,
          _i2.ProjectsUncheckedUpdateWithoutProjectMembersInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class ProjectMembersUpdateWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateWithoutUsersInput({
    this.projectMemberId,
    this.project,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i2.ProjectsUpdateOneRequiredWithoutProjectMembersNestedInput? project;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'project': project,
      };
}

class ProjectMembersUpsertWithWhereUniqueWithoutUsersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpsertWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.ProjectMembersWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateWithoutUsersInput,
      _i2.ProjectMembersUncheckedUpdateWithoutUsersInput> update;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateWithoutUsersInput,
      _i2.ProjectMembersUncheckedCreateWithoutUsersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class ProjectMembersUpdateManyWithoutUsersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.ProjectMembersCreateWithoutUsersInput,
          _i1.PrismaUnion<
              Iterable<_i2.ProjectMembersCreateWithoutUsersInput>,
              _i1.PrismaUnion<
                  _i2.ProjectMembersUncheckedCreateWithoutUsersInput,
                  Iterable<
                      _i2.ProjectMembersUncheckedCreateWithoutUsersInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.ProjectMembersCreateOrConnectWithoutUsersInput,
          Iterable<_i2.ProjectMembersCreateOrConnectWithoutUsersInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpsertWithWhereUniqueWithoutUsersInput,
          Iterable<_i2.ProjectMembersUpsertWithWhereUniqueWithoutUsersInput>>?
      upsert;

  final _i2.ProjectMembersCreateManyUsersInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.ProjectMembersWhereUniqueInput,
      Iterable<_i2.ProjectMembersWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.ProjectMembersUpdateWithWhereUniqueWithoutUsersInput,
          Iterable<_i2.ProjectMembersUpdateWithWhereUniqueWithoutUsersInput>>?
      update;

  final _i1.PrismaUnion<_i2.ProjectMembersUpdateManyWithWhereWithoutUsersInput,
          Iterable<_i2.ProjectMembersUpdateManyWithWhereWithoutUsersInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereInput,
      Iterable<_i2.ProjectMembersScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UsersUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  final _i2.ProjectMembersUpdateManyWithoutUsersNestedInput? projectMembers;

  final _i2.AssignmentsUpdateManyWithoutUsersNestedInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class UsersUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.projectMembers,
    this.assignments,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  final _i2.ProjectMembersUncheckedUpdateManyWithoutUsersNestedInput?
      projectMembers;

  final _i2.AssignmentsUncheckedUpdateManyWithoutUsersNestedInput? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        'project_members': projectMembers,
        'assignments': assignments,
      };
}

class UsersUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUpdateManyMutationInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersUncheckedUpdateManyInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? username;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      joinDate;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NullableIntFieldUpdateOperationsInput,
          _i1.PrismaNull>>? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersCountAggregateOutputType {
  const UsersCountAggregateOutputType({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.$all,
  });

  factory UsersCountAggregateOutputType.fromJson(Map json) =>
      UsersCountAggregateOutputType(
        userId: json['user_id'],
        email: json['email'],
        signinMethod: json['signin_method'],
        name: json['name'],
        device: json['device'],
        username: json['username'],
        password: json['password'],
        joinDate: json['join_date'],
        userTimezone: json['user_timezone'],
        $all: json['_all'],
      );

  final int? userId;

  final int? email;

  final int? signinMethod;

  final int? name;

  final int? device;

  final int? username;

  final int? password;

  final int? joinDate;

  final int? userTimezone;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        '_all': $all,
      };
}

class UsersAvgAggregateOutputType {
  const UsersAvgAggregateOutputType({this.userTimezone});

  factory UsersAvgAggregateOutputType.fromJson(Map json) =>
      UsersAvgAggregateOutputType(userTimezone: json['user_timezone']);

  final double? userTimezone;

  Map<String, dynamic> toJson() => {'user_timezone': userTimezone};
}

class UsersSumAggregateOutputType {
  const UsersSumAggregateOutputType({this.userTimezone});

  factory UsersSumAggregateOutputType.fromJson(Map json) =>
      UsersSumAggregateOutputType(userTimezone: json['user_timezone']);

  final int? userTimezone;

  Map<String, dynamic> toJson() => {'user_timezone': userTimezone};
}

class UsersMinAggregateOutputType {
  const UsersMinAggregateOutputType({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  factory UsersMinAggregateOutputType.fromJson(Map json) =>
      UsersMinAggregateOutputType(
        userId: json['user_id'],
        email: json['email'],
        signinMethod: json['signin_method'],
        name: json['name'],
        device: json['device'],
        username: json['username'],
        password: json['password'],
        joinDate: switch (json['join_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['join_date']
        },
        userTimezone: json['user_timezone'],
      );

  final String? userId;

  final String? email;

  final String? signinMethod;

  final String? name;

  final String? device;

  final String? username;

  final String? password;

  final DateTime? joinDate;

  final int? userTimezone;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate?.toIso8601String(),
        'user_timezone': userTimezone,
      };
}

class UsersMaxAggregateOutputType {
  const UsersMaxAggregateOutputType({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  factory UsersMaxAggregateOutputType.fromJson(Map json) =>
      UsersMaxAggregateOutputType(
        userId: json['user_id'],
        email: json['email'],
        signinMethod: json['signin_method'],
        name: json['name'],
        device: json['device'],
        username: json['username'],
        password: json['password'],
        joinDate: switch (json['join_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['join_date']
        },
        userTimezone: json['user_timezone'],
      );

  final String? userId;

  final String? email;

  final String? signinMethod;

  final String? name;

  final String? device;

  final String? username;

  final String? password;

  final DateTime? joinDate;

  final int? userTimezone;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate?.toIso8601String(),
        'user_timezone': userTimezone,
      };
}

class UsersGroupByOutputType {
  const UsersGroupByOutputType({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory UsersGroupByOutputType.fromJson(Map json) => UsersGroupByOutputType(
        userId: json['user_id'],
        email: json['email'],
        signinMethod: json['signin_method'],
        name: json['name'],
        device: json['device'],
        username: json['username'],
        password: json['password'],
        joinDate: switch (json['join_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['join_date']
        },
        userTimezone: json['user_timezone'],
        $count: json['_count'] is Map
            ? _i2.UsersCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UsersAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UsersSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? userId;

  final String? email;

  final String? signinMethod;

  final String? name;

  final String? device;

  final String? username;

  final String? password;

  final DateTime? joinDate;

  final int? userTimezone;

  final _i2.UsersCountAggregateOutputType? $count;

  final _i2.UsersAvgAggregateOutputType? $avg;

  final _i2.UsersSumAggregateOutputType? $sum;

  final _i2.UsersMinAggregateOutputType? $min;

  final _i2.UsersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate?.toIso8601String(),
        'user_timezone': userTimezone,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UsersCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountOrderByAggregateInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? email;

  final _i2.SortOrder? signinMethod;

  final _i2.SortOrder? name;

  final _i2.SortOrder? device;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  final _i2.SortOrder? joinDate;

  final _i2.SortOrder? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersAvgOrderByAggregateInput({this.userTimezone});

  final _i2.SortOrder? userTimezone;

  @override
  Map<String, dynamic> toJson() => {'user_timezone': userTimezone};
}

class UsersMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMaxOrderByAggregateInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? email;

  final _i2.SortOrder? signinMethod;

  final _i2.SortOrder? name;

  final _i2.SortOrder? device;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  final _i2.SortOrder? joinDate;

  final _i2.SortOrder? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMinOrderByAggregateInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? email;

  final _i2.SortOrder? signinMethod;

  final _i2.SortOrder? name;

  final _i2.SortOrder? device;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  final _i2.SortOrder? joinDate;

  final _i2.SortOrder? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersSumOrderByAggregateInput({this.userTimezone});

  final _i2.SortOrder? userTimezone;

  @override
  Map<String, dynamic> toJson() => {'user_timezone': userTimezone};
}

class UsersOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersOrderByWithAggregationInput({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? userId;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? signinMethod;

  final _i2.SortOrder? name;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? device;

  final _i2.SortOrder? username;

  final _i2.SortOrder? password;

  final _i2.SortOrder? joinDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? userTimezone;

  final _i2.UsersCountOrderByAggregateInput? $count;

  final _i2.UsersAvgOrderByAggregateInput? $avg;

  final _i2.UsersMaxOrderByAggregateInput? $max;

  final _i2.UsersMinOrderByAggregateInput? $min;

  final _i2.UsersSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      $in;

  final _i1.PrismaUnion<Iterable<DateTime>, _i1.Reference<Iterable<DateTime>>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedFloatNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i1.Reference<double>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<double>,
      _i1.PrismaUnion<_i1.Reference<Iterable<double>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double,
      _i1.PrismaUnion<_i2.NestedFloatNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<
      int,
      _i1.PrismaUnion<_i2.NestedIntNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedFloatNullableFilter? $avg;

  final _i2.NestedIntNullableFilter? $sum;

  final _i2.NestedIntNullableFilter? $min;

  final _i2.NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class UsersScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final _i1.PrismaUnion<_i2.UsersScalarWhereWithAggregatesInput,
      Iterable<_i2.UsersScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UsersScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UsersScalarWhereWithAggregatesInput,
      Iterable<_i2.UsersScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? signinMethod;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? device;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? username;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? joinDate;

  final _i1.PrismaUnion<_i2.IntNullableWithAggregatesFilter,
      _i1.PrismaUnion<int, _i1.PrismaNull>>? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersCountAggregateOutputTypeSelect({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.$all,
  });

  final bool? userId;

  final bool? email;

  final bool? signinMethod;

  final bool? name;

  final bool? device;

  final bool? username;

  final bool? password;

  final bool? joinDate;

  final bool? userTimezone;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        '_all': $all,
      };
}

class UsersGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeCountArgs({this.select});

  final _i2.UsersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersAvgAggregateOutputTypeSelect({this.userTimezone});

  final bool? userTimezone;

  @override
  Map<String, dynamic> toJson() => {'user_timezone': userTimezone};
}

class UsersGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeAvgArgs({this.select});

  final _i2.UsersAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersSumAggregateOutputTypeSelect({this.userTimezone});

  final bool? userTimezone;

  @override
  Map<String, dynamic> toJson() => {'user_timezone': userTimezone};
}

class UsersGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeSumArgs({this.select});

  final _i2.UsersSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMinAggregateOutputTypeSelect({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final bool? userId;

  final bool? email;

  final bool? signinMethod;

  final bool? name;

  final bool? device;

  final bool? username;

  final bool? password;

  final bool? joinDate;

  final bool? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeMinArgs({this.select});

  final _i2.UsersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersMaxAggregateOutputTypeSelect({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
  });

  final bool? userId;

  final bool? email;

  final bool? signinMethod;

  final bool? name;

  final bool? device;

  final bool? username;

  final bool? password;

  final bool? joinDate;

  final bool? userTimezone;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
      };
}

class UsersGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeMaxArgs({this.select});

  final _i2.UsersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UsersGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UsersGroupByOutputTypeSelect({
    this.userId,
    this.email,
    this.signinMethod,
    this.name,
    this.device,
    this.username,
    this.password,
    this.joinDate,
    this.userTimezone,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? userId;

  final bool? email;

  final bool? signinMethod;

  final bool? name;

  final bool? device;

  final bool? username;

  final bool? password;

  final bool? joinDate;

  final bool? userTimezone;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UsersGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'email': email,
        'signin_method': signinMethod,
        'name': name,
        'device': device,
        'username': username,
        'password': password,
        'join_date': joinDate,
        'user_timezone': userTimezone,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUsers {
  const AggregateUsers({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateUsers.fromJson(Map json) => AggregateUsers(
        $count: json['_count'] is Map
            ? _i2.UsersCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.UsersAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.UsersSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UsersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UsersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UsersCountAggregateOutputType? $count;

  final _i2.UsersAvgAggregateOutputType? $avg;

  final _i2.UsersSumAggregateOutputType? $sum;

  final _i2.UsersMinAggregateOutputType? $min;

  final _i2.UsersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUsersCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersCountArgs({this.select});

  final _i2.UsersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersAvgArgs({this.select});

  final _i2.UsersAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersSumArgs({this.select});

  final _i2.UsersSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersMinArgs({this.select});

  final _i2.UsersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersMaxArgs({this.select});

  final _i2.UsersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUsersSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUsersSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUsersCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUsersMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AssignmentsCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
    required this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  final _i2.UsersCreateNestedOneWithoutAssignmentsInput users;

  final _i2.ProjectsCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.RemindersCreateNestedOneWithoutAssignmentsInput? reminders;

  final _i2.TasksCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedCreateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.userId,
    required this.assignmentType,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final String userId;

  final _i3.AssignmentType assignmentType;

  final _i2.ProjectsUncheckedCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.RemindersUncheckedCreateNestedOneWithoutAssignmentsInput? reminders;

  final _i2.TasksUncheckedCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateManyInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.userId,
    required this.assignmentType,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final String userId;

  final _i3.AssignmentType assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class CreateManyassignmentsAndReturnOutputTypeUsersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyassignmentsAndReturnOutputTypeUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyassignmentsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyassignmentsAndReturnOutputTypeSelect({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.users,
  });

  final bool? assignmentId;

  final bool? createDate;

  final bool? updatedAt;

  final bool? subject;

  final bool? notes;

  final bool? dueDate;

  final bool? userId;

  final bool? assignmentType;

  final _i1
      .PrismaUnion<bool, _i2.CreateManyassignmentsAndReturnOutputTypeUsersArgs>?
      users;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'users': users,
      };
}

class CreateManyassignmentsAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyassignmentsAndReturnOutputTypeInclude({this.users});

  final _i1
      .PrismaUnion<bool, _i2.CreateManyassignmentsAndReturnOutputTypeUsersArgs>?
      users;

  @override
  Map<String, dynamic> toJson() => {'users': users};
}

class AssignmentsUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
    this.users,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.UsersUpdateOneRequiredWithoutAssignmentsNestedInput? users;

  final _i2.ProjectsUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.RemindersUpdateOneWithoutAssignmentsNestedInput? reminders;

  final _i2.TasksUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.projects,
    this.reminders,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.ProjectsUncheckedUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.RemindersUncheckedUpdateOneWithoutAssignmentsNestedInput? reminders;

  final _i2.TasksUncheckedUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'projects': projects,
        'reminders': reminders,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateManyInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsCountAggregateOutputType {
  const AssignmentsCountAggregateOutputType({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.$all,
  });

  factory AssignmentsCountAggregateOutputType.fromJson(Map json) =>
      AssignmentsCountAggregateOutputType(
        assignmentId: json['assignment_id'],
        createDate: json['create_date'],
        updatedAt: json['updated_at'],
        subject: json['subject'],
        notes: json['notes'],
        dueDate: json['due_date'],
        userId: json['user_id'],
        assignmentType: json['assignment_type'],
        $all: json['_all'],
      );

  final int? assignmentId;

  final int? createDate;

  final int? updatedAt;

  final int? subject;

  final int? notes;

  final int? dueDate;

  final int? userId;

  final int? assignmentType;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        '_all': $all,
      };
}

class AssignmentsMinAggregateOutputType {
  const AssignmentsMinAggregateOutputType({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  factory AssignmentsMinAggregateOutputType.fromJson(Map json) =>
      AssignmentsMinAggregateOutputType(
        assignmentId: json['assignment_id'],
        createDate: switch (json['create_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['create_date']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
        subject: json['subject'],
        notes: json['notes'],
        dueDate: switch (json['due_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['due_date']
        },
        userId: json['user_id'],
        assignmentType: json['assignment_type'] != null
            ? _i3.AssignmentType.values
                .firstWhere((e) => e.name == json['assignment_type'])
            : null,
      );

  final String? assignmentId;

  final DateTime? createDate;

  final DateTime? updatedAt;

  final String? subject;

  final String? notes;

  final DateTime? dueDate;

  final String? userId;

  final _i3.AssignmentType? assignmentType;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'subject': subject,
        'notes': notes,
        'due_date': dueDate?.toIso8601String(),
        'user_id': userId,
        'assignment_type': assignmentType?.name,
      };
}

class AssignmentsMaxAggregateOutputType {
  const AssignmentsMaxAggregateOutputType({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  factory AssignmentsMaxAggregateOutputType.fromJson(Map json) =>
      AssignmentsMaxAggregateOutputType(
        assignmentId: json['assignment_id'],
        createDate: switch (json['create_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['create_date']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
        subject: json['subject'],
        notes: json['notes'],
        dueDate: switch (json['due_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['due_date']
        },
        userId: json['user_id'],
        assignmentType: json['assignment_type'] != null
            ? _i3.AssignmentType.values
                .firstWhere((e) => e.name == json['assignment_type'])
            : null,
      );

  final String? assignmentId;

  final DateTime? createDate;

  final DateTime? updatedAt;

  final String? subject;

  final String? notes;

  final DateTime? dueDate;

  final String? userId;

  final _i3.AssignmentType? assignmentType;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'subject': subject,
        'notes': notes,
        'due_date': dueDate?.toIso8601String(),
        'user_id': userId,
        'assignment_type': assignmentType?.name,
      };
}

class AssignmentsGroupByOutputType {
  const AssignmentsGroupByOutputType({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.$count,
    this.$min,
    this.$max,
  });

  factory AssignmentsGroupByOutputType.fromJson(Map json) =>
      AssignmentsGroupByOutputType(
        assignmentId: json['assignment_id'],
        createDate: switch (json['create_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['create_date']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
        subject: json['subject'],
        notes: json['notes'],
        dueDate: switch (json['due_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['due_date']
        },
        userId: json['user_id'],
        assignmentType: json['assignment_type'] != null
            ? _i3.AssignmentType.values
                .firstWhere((e) => e.name == json['assignment_type'])
            : null,
        $count: json['_count'] is Map
            ? _i2.AssignmentsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AssignmentsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AssignmentsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? assignmentId;

  final DateTime? createDate;

  final DateTime? updatedAt;

  final String? subject;

  final String? notes;

  final DateTime? dueDate;

  final String? userId;

  final _i3.AssignmentType? assignmentType;

  final _i2.AssignmentsCountAggregateOutputType? $count;

  final _i2.AssignmentsMinAggregateOutputType? $min;

  final _i2.AssignmentsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'subject': subject,
        'notes': notes,
        'due_date': dueDate?.toIso8601String(),
        'user_id': userId,
        'assignment_type': assignmentType?.name,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AssignmentsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCountOrderByAggregateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? createDate;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? subject;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? dueDate;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsMaxOrderByAggregateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? createDate;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? subject;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? dueDate;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsMinOrderByAggregateInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? createDate;

  final _i2.SortOrder? updatedAt;

  final _i2.SortOrder? subject;

  final _i2.SortOrder? notes;

  final _i2.SortOrder? dueDate;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsOrderByWithAggregationInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? createDate;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? updatedAt;

  final _i2.SortOrder? subject;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? notes;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? dueDate;

  final _i2.SortOrder? userId;

  final _i2.SortOrder? assignmentType;

  final _i2.AssignmentsCountOrderByAggregateInput? $count;

  final _i2.AssignmentsMaxOrderByAggregateInput? $max;

  final _i2.AssignmentsMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedDateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime,
      _i1.PrismaUnion<_i1.Reference<DateTime>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<DateTime>,
      _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<DateTime>,
          _i1.PrismaUnion<_i1.Reference<Iterable<DateTime>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NestedDateTimeNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDateTimeNullableFilter? $min;

  final _i2.NestedDateTimeNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedEnumassignmentTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumassignmentTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.AssignmentType, _i1.Reference<_i3.AssignmentType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? notIn;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.NestedEnumassignmentTypeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumassignmentTypeFilter? $min;

  final _i2.NestedEnumassignmentTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumassignmentTypeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumassignmentTypeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.AssignmentType, _i1.Reference<_i3.AssignmentType>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.AssignmentType>,
      _i1.Reference<Iterable<_i3.AssignmentType>>>? notIn;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.NestedEnumassignmentTypeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumassignmentTypeFilter? $min;

  final _i2.NestedEnumassignmentTypeFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AssignmentsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final _i1.PrismaUnion<_i2.AssignmentsScalarWhereWithAggregatesInput,
      Iterable<_i2.AssignmentsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.AssignmentsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.AssignmentsScalarWhereWithAggregatesInput,
      Iterable<_i2.AssignmentsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? createDate;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? subject;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userId;

  final _i1.PrismaUnion<_i2.EnumassignmentTypeWithAggregatesFilter,
      _i3.AssignmentType>? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCountAggregateOutputTypeSelect({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.$all,
  });

  final bool? assignmentId;

  final bool? createDate;

  final bool? updatedAt;

  final bool? subject;

  final bool? notes;

  final bool? dueDate;

  final bool? userId;

  final bool? assignmentType;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        '_all': $all,
      };
}

class AssignmentsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsGroupByOutputTypeCountArgs({this.select});

  final _i2.AssignmentsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AssignmentsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsMinAggregateOutputTypeSelect({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final bool? assignmentId;

  final bool? createDate;

  final bool? updatedAt;

  final bool? subject;

  final bool? notes;

  final bool? dueDate;

  final bool? userId;

  final bool? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsGroupByOutputTypeMinArgs({this.select});

  final _i2.AssignmentsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AssignmentsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsMaxAggregateOutputTypeSelect({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
  });

  final bool? assignmentId;

  final bool? createDate;

  final bool? updatedAt;

  final bool? subject;

  final bool? notes;

  final bool? dueDate;

  final bool? userId;

  final bool? assignmentType;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
      };
}

class AssignmentsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsGroupByOutputTypeMaxArgs({this.select});

  final _i2.AssignmentsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AssignmentsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsGroupByOutputTypeSelect({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? assignmentId;

  final bool? createDate;

  final bool? updatedAt;

  final bool? subject;

  final bool? notes;

  final bool? dueDate;

  final bool? userId;

  final bool? assignmentType;

  final _i1.PrismaUnion<bool, _i2.AssignmentsGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.AssignmentsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AssignmentsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateAssignments {
  const AggregateAssignments({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateAssignments.fromJson(Map json) => AggregateAssignments(
        $count: json['_count'] is Map
            ? _i2.AssignmentsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.AssignmentsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.AssignmentsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.AssignmentsCountAggregateOutputType? $count;

  final _i2.AssignmentsMinAggregateOutputType? $min;

  final _i2.AssignmentsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateAssignmentsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAssignmentsCountArgs({this.select});

  final _i2.AssignmentsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAssignmentsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAssignmentsMinArgs({this.select});

  final _i2.AssignmentsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAssignmentsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAssignmentsMaxArgs({this.select});

  final _i2.AssignmentsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateAssignmentsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateAssignmentsSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateAssignmentsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateAssignmentsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateAssignmentsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TasksCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateInput({
    this.completeDate,
    required this.completed,
    required this.assignments,
    this.projects,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.AssignmentsCreateNestedOneWithoutTasksInput assignments;

  final _i2.ProjectsCreateNestedOneWithoutTasksInput? projects;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'projects': projects,
      };
}

class TasksUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedCreateInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
    this.parentProject,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCreateManyInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
    this.parentProject,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class CreateManytasksAndReturnOutputTypeAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytasksAndReturnOutputTypeAssignmentsArgs({
    this.select,
    this.include,
  });

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManytasksAndReturnOutputTypeProjectsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytasksAndReturnOutputTypeProjectsArgs({
    this.where,
    this.select,
    this.include,
  });

  final _i2.ProjectsWhereInput? where;

  final _i2.ProjectsSelect? select;

  final _i2.ProjectsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'select': select,
        'include': include,
      };
}

class CreateManytasksAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytasksAndReturnOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? parentProject;

  final _i1
      .PrismaUnion<bool, _i2.CreateManytasksAndReturnOutputTypeAssignmentsArgs>?
      assignments;

  final _i1
      .PrismaUnion<bool, _i2.CreateManytasksAndReturnOutputTypeProjectsArgs>?
      projects;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments,
        'projects': projects,
      };
}

class CreateManytasksAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManytasksAndReturnOutputTypeInclude({
    this.assignments,
    this.projects,
  });

  final _i1
      .PrismaUnion<bool, _i2.CreateManytasksAndReturnOutputTypeAssignmentsArgs>?
      assignments;

  final _i1
      .PrismaUnion<bool, _i2.CreateManytasksAndReturnOutputTypeProjectsArgs>?
      projects;

  @override
  Map<String, dynamic> toJson() => {
        'assignments': assignments,
        'projects': projects,
      };
}

class TasksUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUpdateInput({
    this.completeDate,
    this.completed,
    this.assignments,
    this.projects,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.AssignmentsUpdateOneRequiredWithoutTasksNestedInput? assignments;

  final _i2.ProjectsUpdateOneWithoutTasksNestedInput? projects;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'projects': projects,
      };
}

class TasksUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksUncheckedUpdateManyInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksCountAggregateOutputType {
  const TasksCountAggregateOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.$all,
  });

  factory TasksCountAggregateOutputType.fromJson(Map json) =>
      TasksCountAggregateOutputType(
        assignmentId: json['assignment_id'],
        completeDate: json['complete_date'],
        completed: json['completed'],
        parentProject: json['parent_project'],
        $all: json['_all'],
      );

  final int? assignmentId;

  final int? completeDate;

  final int? completed;

  final int? parentProject;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        '_all': $all,
      };
}

class TasksMinAggregateOutputType {
  const TasksMinAggregateOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  factory TasksMinAggregateOutputType.fromJson(Map json) =>
      TasksMinAggregateOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        parentProject: json['parent_project'],
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final String? parentProject;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksMaxAggregateOutputType {
  const TasksMaxAggregateOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  factory TasksMaxAggregateOutputType.fromJson(Map json) =>
      TasksMaxAggregateOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        parentProject: json['parent_project'],
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final String? parentProject;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksGroupByOutputType {
  const TasksGroupByOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.$count,
    this.$min,
    this.$max,
  });

  factory TasksGroupByOutputType.fromJson(Map json) => TasksGroupByOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        parentProject: json['parent_project'],
        $count: json['_count'] is Map
            ? _i2.TasksCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TasksMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TasksMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final String? parentProject;

  final _i2.TasksCountAggregateOutputType? $count;

  final _i2.TasksMinAggregateOutputType? $min;

  final _i2.TasksMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'parent_project': parentProject,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TasksCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCountOrderByAggregateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? completeDate;

  final _i2.SortOrder? completed;

  final _i2.SortOrder? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksMaxOrderByAggregateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? completeDate;

  final _i2.SortOrder? completed;

  final _i2.SortOrder? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksMinOrderByAggregateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? completeDate;

  final _i2.SortOrder? completed;

  final _i2.SortOrder? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksOrderByWithAggregationInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? assignmentId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? completeDate;

  final _i2.SortOrder? completed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? parentProject;

  final _i2.TasksCountOrderByAggregateInput? $count;

  final _i2.TasksMaxOrderByAggregateInput? $max;

  final _i2.TasksMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TasksScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final _i1.PrismaUnion<_i2.TasksScalarWhereWithAggregatesInput,
      Iterable<_i2.TasksScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TasksScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TasksScalarWhereWithAggregatesInput,
      Iterable<_i2.TasksScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? completed;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksCountAggregateOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.$all,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? parentProject;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        '_all': $all,
      };
}

class TasksGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksGroupByOutputTypeCountArgs({this.select});

  final _i2.TasksCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TasksMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksMinAggregateOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksGroupByOutputTypeMinArgs({this.select});

  final _i2.TasksMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TasksMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksMaxAggregateOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? parentProject;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
      };
}

class TasksGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksGroupByOutputTypeMaxArgs({this.select});

  final _i2.TasksMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TasksGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TasksGroupByOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? parentProject;

  final _i1.PrismaUnion<bool, _i2.TasksGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TasksGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TasksGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'parent_project': parentProject,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTasks {
  const AggregateTasks({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateTasks.fromJson(Map json) => AggregateTasks(
        $count: json['_count'] is Map
            ? _i2.TasksCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TasksMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TasksMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TasksCountAggregateOutputType? $count;

  final _i2.TasksMinAggregateOutputType? $min;

  final _i2.TasksMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTasksCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTasksCountArgs({this.select});

  final _i2.TasksCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTasksMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTasksMinArgs({this.select});

  final _i2.TasksMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTasksMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTasksMaxArgs({this.select});

  final _i2.TasksMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTasksSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTasksSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTasksCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTasksMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTasksMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum RemindersScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  assignmentId<String>('assignment_id', 'reminders'),
  reminderCategory<_i3.ReminderCategory>('reminder_category', 'reminders');

  const RemindersScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class AssignmentsCreateWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateWithoutRemindersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.assignmentType,
    required this.users,
    this.projects,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final _i3.AssignmentType assignmentType;

  final _i2.UsersCreateNestedOneWithoutAssignmentsInput users;

  final _i2.ProjectsCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.TasksCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedCreateWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedCreateWithoutRemindersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    required this.subject,
    this.notes,
    this.dueDate,
    required this.userId,
    required this.assignmentType,
    this.projects,
    this.tasks,
  });

  final String? assignmentId;

  final DateTime? createDate;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? updatedAt;

  final String subject;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? notes;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? dueDate;

  final String userId;

  final _i3.AssignmentType assignmentType;

  final _i2.ProjectsUncheckedCreateNestedOneWithoutAssignmentsInput? projects;

  final _i2.TasksUncheckedCreateNestedOneWithoutAssignmentsInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'projects': projects,
        'tasks': tasks,
      };
}

class AssignmentsCreateOrConnectWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateOrConnectWithoutRemindersInput({
    required this.where,
    required this.create,
  });

  final _i2.AssignmentsWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutRemindersInput,
      _i2.AssignmentsUncheckedCreateWithoutRemindersInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class AssignmentsCreateNestedOneWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsCreateNestedOneWithoutRemindersInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutRemindersInput,
      _i2.AssignmentsUncheckedCreateWithoutRemindersInput>? create;

  final _i2.AssignmentsCreateOrConnectWithoutRemindersInput? connectOrCreate;

  final _i2.AssignmentsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class RemindersCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCreateInput({
    required this.reminderCategory,
    required this.assignments,
  });

  final _i3.ReminderCategory reminderCategory;

  final _i2.AssignmentsCreateNestedOneWithoutRemindersInput assignments;

  @override
  Map<String, dynamic> toJson() => {
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class RemindersUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedCreateInput({
    required this.assignmentId,
    required this.reminderCategory,
  });

  final String assignmentId;

  final _i3.ReminderCategory reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCreateManyInput({
    required this.assignmentId,
    required this.reminderCategory,
  });

  final String assignmentId;

  final _i3.ReminderCategory reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class CreateManyremindersAndReturnOutputTypeAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyremindersAndReturnOutputTypeAssignmentsArgs({
    this.select,
    this.include,
  });

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyremindersAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyremindersAndReturnOutputTypeSelect({
    this.assignmentId,
    this.reminderCategory,
    this.assignments,
  });

  final bool? assignmentId;

  final bool? reminderCategory;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyremindersAndReturnOutputTypeAssignmentsArgs>? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class CreateManyremindersAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyremindersAndReturnOutputTypeInclude({this.assignments});

  final _i1.PrismaUnion<bool,
      _i2.CreateManyremindersAndReturnOutputTypeAssignmentsArgs>? assignments;

  @override
  Map<String, dynamic> toJson() => {'assignments': assignments};
}

class AssignmentsUpdateWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateWithoutRemindersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.assignmentType,
    this.users,
    this.projects,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.UsersUpdateOneRequiredWithoutAssignmentsNestedInput? users;

  final _i2.ProjectsUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.TasksUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'assignment_type': assignmentType,
        'users': users,
        'projects': projects,
        'tasks': tasks,
      };
}

class AssignmentsUncheckedUpdateWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUncheckedUpdateWithoutRemindersInput({
    this.assignmentId,
    this.createDate,
    this.updatedAt,
    this.subject,
    this.notes,
    this.dueDate,
    this.userId,
    this.assignmentType,
    this.projects,
    this.tasks,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>?
      createDate;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? updatedAt;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? subject;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? notes;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? dueDate;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i1.PrismaUnion<_i3.AssignmentType,
      _i2.EnumassignmentTypeFieldUpdateOperationsInput>? assignmentType;

  final _i2.ProjectsUncheckedUpdateOneWithoutAssignmentsNestedInput? projects;

  final _i2.TasksUncheckedUpdateOneWithoutAssignmentsNestedInput? tasks;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate,
        'updated_at': updatedAt,
        'subject': subject,
        'notes': notes,
        'due_date': dueDate,
        'user_id': userId,
        'assignment_type': assignmentType,
        'projects': projects,
        'tasks': tasks,
      };
}

class AssignmentsUpsertWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpsertWithoutRemindersInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutRemindersInput,
      _i2.AssignmentsUncheckedUpdateWithoutRemindersInput> update;

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutRemindersInput,
      _i2.AssignmentsUncheckedCreateWithoutRemindersInput> create;

  final _i2.AssignmentsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class AssignmentsUpdateToOneWithWhereWithoutRemindersInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateToOneWithWhereWithoutRemindersInput({
    this.where,
    required this.data,
  });

  final _i2.AssignmentsWhereInput? where;

  final _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutRemindersInput,
      _i2.AssignmentsUncheckedUpdateWithoutRemindersInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class AssignmentsUpdateOneRequiredWithoutRemindersNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AssignmentsUpdateOneRequiredWithoutRemindersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.AssignmentsCreateWithoutRemindersInput,
      _i2.AssignmentsUncheckedCreateWithoutRemindersInput>? create;

  final _i2.AssignmentsCreateOrConnectWithoutRemindersInput? connectOrCreate;

  final _i2.AssignmentsUpsertWithoutRemindersInput? upsert;

  final _i2.AssignmentsWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.AssignmentsUpdateToOneWithWhereWithoutRemindersInput,
      _i1.PrismaUnion<_i2.AssignmentsUpdateWithoutRemindersInput,
          _i2.AssignmentsUncheckedUpdateWithoutRemindersInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class RemindersUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUpdateInput({
    this.reminderCategory,
    this.assignments,
  });

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.EnumreminderCategoryFieldUpdateOperationsInput>? reminderCategory;

  final _i2.AssignmentsUpdateOneRequiredWithoutRemindersNestedInput?
      assignments;

  @override
  Map<String, dynamic> toJson() => {
        'reminder_category': reminderCategory,
        'assignments': assignments,
      };
}

class RemindersUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedUpdateInput({
    this.assignmentId,
    this.reminderCategory,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.EnumreminderCategoryFieldUpdateOperationsInput>? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUpdateManyMutationInput({this.reminderCategory});

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.EnumreminderCategoryFieldUpdateOperationsInput>? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {'reminder_category': reminderCategory};
}

class RemindersUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersUncheckedUpdateManyInput({
    this.assignmentId,
    this.reminderCategory,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.EnumreminderCategoryFieldUpdateOperationsInput>? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersCountAggregateOutputType {
  const RemindersCountAggregateOutputType({
    this.assignmentId,
    this.reminderCategory,
    this.$all,
  });

  factory RemindersCountAggregateOutputType.fromJson(Map json) =>
      RemindersCountAggregateOutputType(
        assignmentId: json['assignment_id'],
        reminderCategory: json['reminder_category'],
        $all: json['_all'],
      );

  final int? assignmentId;

  final int? reminderCategory;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        '_all': $all,
      };
}

class RemindersMinAggregateOutputType {
  const RemindersMinAggregateOutputType({
    this.assignmentId,
    this.reminderCategory,
  });

  factory RemindersMinAggregateOutputType.fromJson(Map json) =>
      RemindersMinAggregateOutputType(
        assignmentId: json['assignment_id'],
        reminderCategory: json['reminder_category'] != null
            ? _i3.ReminderCategory.values
                .firstWhere((e) => e.name == json['reminder_category'])
            : null,
      );

  final String? assignmentId;

  final _i3.ReminderCategory? reminderCategory;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory?.name,
      };
}

class RemindersMaxAggregateOutputType {
  const RemindersMaxAggregateOutputType({
    this.assignmentId,
    this.reminderCategory,
  });

  factory RemindersMaxAggregateOutputType.fromJson(Map json) =>
      RemindersMaxAggregateOutputType(
        assignmentId: json['assignment_id'],
        reminderCategory: json['reminder_category'] != null
            ? _i3.ReminderCategory.values
                .firstWhere((e) => e.name == json['reminder_category'])
            : null,
      );

  final String? assignmentId;

  final _i3.ReminderCategory? reminderCategory;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory?.name,
      };
}

class RemindersGroupByOutputType {
  const RemindersGroupByOutputType({
    this.assignmentId,
    this.reminderCategory,
    this.$count,
    this.$min,
    this.$max,
  });

  factory RemindersGroupByOutputType.fromJson(Map json) =>
      RemindersGroupByOutputType(
        assignmentId: json['assignment_id'],
        reminderCategory: json['reminder_category'] != null
            ? _i3.ReminderCategory.values
                .firstWhere((e) => e.name == json['reminder_category'])
            : null,
        $count: json['_count'] is Map
            ? _i2.RemindersCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.RemindersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.RemindersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? assignmentId;

  final _i3.ReminderCategory? reminderCategory;

  final _i2.RemindersCountAggregateOutputType? $count;

  final _i2.RemindersMinAggregateOutputType? $min;

  final _i2.RemindersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory?.name,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class RemindersCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCountOrderByAggregateInput({
    this.assignmentId,
    this.reminderCategory,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersMaxOrderByAggregateInput({
    this.assignmentId,
    this.reminderCategory,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersMinOrderByAggregateInput({
    this.assignmentId,
    this.reminderCategory,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersOrderByWithAggregationInput({
    this.assignmentId,
    this.reminderCategory,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? reminderCategory;

  final _i2.RemindersCountOrderByAggregateInput? $count;

  final _i2.RemindersMaxOrderByAggregateInput? $max;

  final _i2.RemindersMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedEnumreminderCategoryWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumreminderCategoryWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<_i3.ReminderCategory, _i1.Reference<_i3.ReminderCategory>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? notIn;

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.NestedEnumreminderCategoryWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumreminderCategoryFilter? $min;

  final _i2.NestedEnumreminderCategoryFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumreminderCategoryWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumreminderCategoryWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1
      .PrismaUnion<_i3.ReminderCategory, _i1.Reference<_i3.ReminderCategory>>?
      equals;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? $in;

  final _i1.PrismaUnion<Iterable<_i3.ReminderCategory>,
      _i1.Reference<Iterable<_i3.ReminderCategory>>>? notIn;

  final _i1.PrismaUnion<_i3.ReminderCategory,
      _i2.NestedEnumreminderCategoryWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumreminderCategoryFilter? $min;

  final _i2.NestedEnumreminderCategoryFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class RemindersScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.reminderCategory,
  });

  final _i1.PrismaUnion<_i2.RemindersScalarWhereWithAggregatesInput,
      Iterable<_i2.RemindersScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.RemindersScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.RemindersScalarWhereWithAggregatesInput,
      Iterable<_i2.RemindersScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.EnumreminderCategoryWithAggregatesFilter,
      _i3.ReminderCategory>? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersCountAggregateOutputTypeSelect({
    this.assignmentId,
    this.reminderCategory,
    this.$all,
  });

  final bool? assignmentId;

  final bool? reminderCategory;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        '_all': $all,
      };
}

class RemindersGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersGroupByOutputTypeCountArgs({this.select});

  final _i2.RemindersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RemindersMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersMinAggregateOutputTypeSelect({
    this.assignmentId,
    this.reminderCategory,
  });

  final bool? assignmentId;

  final bool? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersGroupByOutputTypeMinArgs({this.select});

  final _i2.RemindersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RemindersMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersMaxAggregateOutputTypeSelect({
    this.assignmentId,
    this.reminderCategory,
  });

  final bool? assignmentId;

  final bool? reminderCategory;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
      };
}

class RemindersGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersGroupByOutputTypeMaxArgs({this.select});

  final _i2.RemindersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class RemindersGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const RemindersGroupByOutputTypeSelect({
    this.assignmentId,
    this.reminderCategory,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? assignmentId;

  final bool? reminderCategory;

  final _i1.PrismaUnion<bool, _i2.RemindersGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.RemindersGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.RemindersGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateReminders {
  const AggregateReminders({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateReminders.fromJson(Map json) => AggregateReminders(
        $count: json['_count'] is Map
            ? _i2.RemindersCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.RemindersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.RemindersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.RemindersCountAggregateOutputType? $count;

  final _i2.RemindersMinAggregateOutputType? $min;

  final _i2.RemindersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateRemindersCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRemindersCountArgs({this.select});

  final _i2.RemindersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateRemindersMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRemindersMinArgs({this.select});

  final _i2.RemindersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateRemindersMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRemindersMaxArgs({this.select});

  final _i2.RemindersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateRemindersSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateRemindersSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateRemindersCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateRemindersMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateRemindersMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

enum ProjectsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  assignmentId<String>('assignment_id', 'projects'),
  completeDate<DateTime>('complete_date', 'projects'),
  completed<bool>('completed', 'projects');

  const ProjectsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class ProjectsCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateInput({
    this.completeDate,
    required this.completed,
    required this.assignments,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.AssignmentsCreateNestedOneWithoutProjectsInput assignments;

  final _i2.TasksCreateNestedManyWithoutProjectsInput? tasks;

  final _i2.ProjectMembersCreateNestedManyWithoutProjectInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedCreateInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
    this.tasks,
    this.projectMembers,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  final _i2.TasksUncheckedCreateNestedManyWithoutProjectsInput? tasks;

  final _i2.ProjectMembersUncheckedCreateNestedManyWithoutProjectInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCreateManyInput({
    required this.assignmentId,
    this.completeDate,
    required this.completed,
  });

  final String assignmentId;

  final _i1.PrismaUnion<DateTime, _i1.PrismaNull>? completeDate;

  final bool completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class CreateManyprojectsAndReturnOutputTypeAssignmentsArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectsAndReturnOutputTypeAssignmentsArgs({
    this.select,
    this.include,
  });

  final _i2.AssignmentsSelect? select;

  final _i2.AssignmentsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyprojectsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectsAndReturnOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.assignments,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyprojectsAndReturnOutputTypeAssignmentsArgs>? assignments;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
      };
}

class CreateManyprojectsAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectsAndReturnOutputTypeInclude({this.assignments});

  final _i1.PrismaUnion<bool,
      _i2.CreateManyprojectsAndReturnOutputTypeAssignmentsArgs>? assignments;

  @override
  Map<String, dynamic> toJson() => {'assignments': assignments};
}

class ProjectsUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateInput({
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.AssignmentsUpdateOneRequiredWithoutProjectsNestedInput? assignments;

  final _i2.TasksUpdateManyWithoutProjectsNestedInput? tasks;

  final _i2.ProjectMembersUpdateManyWithoutProjectNestedInput? projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
        'assignments': assignments,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedUpdateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.tasks,
    this.projectMembers,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  final _i2.TasksUncheckedUpdateManyWithoutProjectsNestedInput? tasks;

  final _i2.ProjectMembersUncheckedUpdateManyWithoutProjectNestedInput?
      projectMembers;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        'tasks': tasks,
        'project_members': projectMembers,
      };
}

class ProjectsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUpdateManyMutationInput({
    this.completeDate,
    this.completed,
  });

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  @override
  Map<String, dynamic> toJson() => {
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsUncheckedUpdateManyInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<
      DateTime,
      _i1.PrismaUnion<_i2.NullableDateTimeFieldUpdateOperationsInput,
          _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsCountAggregateOutputType {
  const ProjectsCountAggregateOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.$all,
  });

  factory ProjectsCountAggregateOutputType.fromJson(Map json) =>
      ProjectsCountAggregateOutputType(
        assignmentId: json['assignment_id'],
        completeDate: json['complete_date'],
        completed: json['completed'],
        $all: json['_all'],
      );

  final int? assignmentId;

  final int? completeDate;

  final int? completed;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        '_all': $all,
      };
}

class ProjectsMinAggregateOutputType {
  const ProjectsMinAggregateOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  factory ProjectsMinAggregateOutputType.fromJson(Map json) =>
      ProjectsMinAggregateOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
      };
}

class ProjectsMaxAggregateOutputType {
  const ProjectsMaxAggregateOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  factory ProjectsMaxAggregateOutputType.fromJson(Map json) =>
      ProjectsMaxAggregateOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
      };
}

class ProjectsGroupByOutputType {
  const ProjectsGroupByOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ProjectsGroupByOutputType.fromJson(Map json) =>
      ProjectsGroupByOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        $count: json['_count'] is Map
            ? _i2.ProjectsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProjectsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProjectsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final _i2.ProjectsCountAggregateOutputType? $count;

  final _i2.ProjectsMinAggregateOutputType? $min;

  final _i2.ProjectsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ProjectsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCountOrderByAggregateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? completeDate;

  final _i2.SortOrder? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsMaxOrderByAggregateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? completeDate;

  final _i2.SortOrder? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsMinOrderByAggregateInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? completeDate;

  final _i2.SortOrder? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsOrderByWithAggregationInput({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? assignmentId;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? completeDate;

  final _i2.SortOrder? completed;

  final _i2.ProjectsCountOrderByAggregateInput? $count;

  final _i2.ProjectsMaxOrderByAggregateInput? $max;

  final _i2.ProjectsMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class ProjectsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final _i1.PrismaUnion<_i2.ProjectsScalarWhereWithAggregatesInput,
      Iterable<_i2.ProjectsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProjectsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectsScalarWhereWithAggregatesInput,
      Iterable<_i2.ProjectsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.DateTimeNullableWithAggregatesFilter,
      _i1.PrismaUnion<DateTime, _i1.PrismaNull>>? completeDate;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? completed;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsCountAggregateOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.$all,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        '_all': $all,
      };
}

class ProjectsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsGroupByOutputTypeCountArgs({this.select});

  final _i2.ProjectsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsMinAggregateOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsGroupByOutputTypeMinArgs({this.select});

  final _i2.ProjectsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsMaxAggregateOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
      };
}

class ProjectsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProjectsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectsGroupByOutputTypeSelect({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? assignmentId;

  final bool? completeDate;

  final bool? completed;

  final _i1.PrismaUnion<bool, _i2.ProjectsGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.ProjectsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ProjectsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate,
        'completed': completed,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProjects {
  const AggregateProjects({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateProjects.fromJson(Map json) => AggregateProjects(
        $count: json['_count'] is Map
            ? _i2.ProjectsCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProjectsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProjectsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProjectsCountAggregateOutputType? $count;

  final _i2.ProjectsMinAggregateOutputType? $min;

  final _i2.ProjectsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateProjectsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectsCountArgs({this.select});

  final _i2.ProjectsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectsMinArgs({this.select});

  final _i2.ProjectsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectsMaxArgs({this.select});

  final _i2.ProjectsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectsSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProjectsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProjectsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProjectsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class ProjectMembersCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateInput({
    this.projectMemberId,
    required this.project,
    required this.users,
  });

  final String? projectMemberId;

  final _i2.ProjectsCreateNestedOneWithoutProjectMembersInput project;

  final _i2.UsersCreateNestedOneWithoutProjectMembersInput users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'project': project,
        'users': users,
      };
}

class ProjectMembersUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedCreateInput({
    this.projectMemberId,
    required this.assignmentId,
    required this.memberUsername,
  });

  final String? projectMemberId;

  final String assignmentId;

  final String memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCreateManyInput({
    this.projectMemberId,
    required this.assignmentId,
    required this.memberUsername,
  });

  final String? projectMemberId;

  final String assignmentId;

  final String memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class CreateManyprojectMembersAndReturnOutputTypeProjectArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectMembersAndReturnOutputTypeProjectArgs({
    this.select,
    this.include,
  });

  final _i2.ProjectsSelect? select;

  final _i2.ProjectsInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyprojectMembersAndReturnOutputTypeUsersArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectMembersAndReturnOutputTypeUsersArgs({
    this.select,
    this.include,
  });

  final _i2.UsersSelect? select;

  final _i2.UsersInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class CreateManyprojectMembersAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectMembersAndReturnOutputTypeSelect({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  final bool? projectMemberId;

  final bool? assignmentId;

  final bool? memberUsername;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyprojectMembersAndReturnOutputTypeProjectArgs>? project;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyprojectMembersAndReturnOutputTypeUsersArgs>? users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project,
        'users': users,
      };
}

class CreateManyprojectMembersAndReturnOutputTypeInclude
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyprojectMembersAndReturnOutputTypeInclude({
    this.project,
    this.users,
  });

  final _i1.PrismaUnion<bool,
      _i2.CreateManyprojectMembersAndReturnOutputTypeProjectArgs>? project;

  final _i1.PrismaUnion<bool,
      _i2.CreateManyprojectMembersAndReturnOutputTypeUsersArgs>? users;

  @override
  Map<String, dynamic> toJson() => {
        'project': project,
        'users': users,
      };
}

class ProjectMembersUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUpdateInput({
    this.projectMemberId,
    this.project,
    this.users,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i2.ProjectsUpdateOneRequiredWithoutProjectMembersNestedInput? project;

  final _i2.UsersUpdateOneRequiredWithoutProjectMembersNestedInput? users;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'project': project,
        'users': users,
      };
}

class ProjectMembersUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersUncheckedUpdateManyInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      projectMemberId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      assignmentId;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersCountAggregateOutputType {
  const ProjectMembersCountAggregateOutputType({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.$all,
  });

  factory ProjectMembersCountAggregateOutputType.fromJson(Map json) =>
      ProjectMembersCountAggregateOutputType(
        projectMemberId: json['project_member_id'],
        assignmentId: json['assignment_id'],
        memberUsername: json['member_username'],
        $all: json['_all'],
      );

  final int? projectMemberId;

  final int? assignmentId;

  final int? memberUsername;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        '_all': $all,
      };
}

class ProjectMembersMinAggregateOutputType {
  const ProjectMembersMinAggregateOutputType({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  factory ProjectMembersMinAggregateOutputType.fromJson(Map json) =>
      ProjectMembersMinAggregateOutputType(
        projectMemberId: json['project_member_id'],
        assignmentId: json['assignment_id'],
        memberUsername: json['member_username'],
      );

  final String? projectMemberId;

  final String? assignmentId;

  final String? memberUsername;

  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersMaxAggregateOutputType {
  const ProjectMembersMaxAggregateOutputType({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  factory ProjectMembersMaxAggregateOutputType.fromJson(Map json) =>
      ProjectMembersMaxAggregateOutputType(
        projectMemberId: json['project_member_id'],
        assignmentId: json['assignment_id'],
        memberUsername: json['member_username'],
      );

  final String? projectMemberId;

  final String? assignmentId;

  final String? memberUsername;

  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersGroupByOutputType {
  const ProjectMembersGroupByOutputType({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.$count,
    this.$min,
    this.$max,
  });

  factory ProjectMembersGroupByOutputType.fromJson(Map json) =>
      ProjectMembersGroupByOutputType(
        projectMemberId: json['project_member_id'],
        assignmentId: json['assignment_id'],
        memberUsername: json['member_username'],
        $count: json['_count'] is Map
            ? _i2.ProjectMembersCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProjectMembersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProjectMembersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? projectMemberId;

  final String? assignmentId;

  final String? memberUsername;

  final _i2.ProjectMembersCountAggregateOutputType? $count;

  final _i2.ProjectMembersMinAggregateOutputType? $min;

  final _i2.ProjectMembersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class ProjectMembersCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCountOrderByAggregateInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i2.SortOrder? projectMemberId;

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersMaxOrderByAggregateInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i2.SortOrder? projectMemberId;

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersMinOrderByAggregateInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i2.SortOrder? projectMemberId;

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersOrderByWithAggregationInput({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? projectMemberId;

  final _i2.SortOrder? assignmentId;

  final _i2.SortOrder? memberUsername;

  final _i2.ProjectMembersCountOrderByAggregateInput? $count;

  final _i2.ProjectMembersMaxOrderByAggregateInput? $max;

  final _i2.ProjectMembersMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class ProjectMembersScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereWithAggregatesInput,
      Iterable<_i2.ProjectMembersScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.ProjectMembersScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.ProjectMembersScalarWhereWithAggregatesInput,
      Iterable<_i2.ProjectMembersScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      projectMemberId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? assignmentId;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersCountAggregateOutputTypeSelect({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.$all,
  });

  final bool? projectMemberId;

  final bool? assignmentId;

  final bool? memberUsername;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        '_all': $all,
      };
}

class ProjectMembersGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersGroupByOutputTypeCountArgs({this.select});

  final _i2.ProjectMembersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectMembersMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersMinAggregateOutputTypeSelect({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final bool? projectMemberId;

  final bool? assignmentId;

  final bool? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersGroupByOutputTypeMinArgs({this.select});

  final _i2.ProjectMembersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectMembersMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersMaxAggregateOutputTypeSelect({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
  });

  final bool? projectMemberId;

  final bool? assignmentId;

  final bool? memberUsername;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
      };
}

class ProjectMembersGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersGroupByOutputTypeMaxArgs({this.select});

  final _i2.ProjectMembersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class ProjectMembersGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const ProjectMembersGroupByOutputTypeSelect({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? projectMemberId;

  final bool? assignmentId;

  final bool? memberUsername;

  final _i1.PrismaUnion<bool, _i2.ProjectMembersGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.ProjectMembersGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.ProjectMembersGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateProjectMembers {
  const AggregateProjectMembers({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateProjectMembers.fromJson(Map json) => AggregateProjectMembers(
        $count: json['_count'] is Map
            ? _i2.ProjectMembersCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.ProjectMembersMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.ProjectMembersMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.ProjectMembersCountAggregateOutputType? $count;

  final _i2.ProjectMembersMinAggregateOutputType? $min;

  final _i2.ProjectMembersMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateProjectMembersCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectMembersCountArgs({this.select});

  final _i2.ProjectMembersCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectMembersMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectMembersMinArgs({this.select});

  final _i2.ProjectMembersMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectMembersMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectMembersMaxArgs({this.select});

  final _i2.ProjectMembersMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateProjectMembersSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateProjectMembersSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateProjectMembersCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateProjectMembersMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateProjectMembersMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
