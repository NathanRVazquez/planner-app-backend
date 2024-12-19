// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

enum AssignmentType implements _i1.PrismaEnum {
  reminder._('Reminder'),
  task._('Task'),
  project._('Project');

  const AssignmentType._(this.name);

  @override
  final String name;
}

enum ReminderCategory implements _i1.PrismaEnum {
  event._('Event'),
  meeting._('Meeting'),
  webinar._('Webinar'),
  interview._('Interview'),
  tutoring._('Tutoring'),
  other._('Other');

  const ReminderCategory._(this.name);

  @override
  final String name;
}

class Reminders {
  const Reminders({
    this.assignmentId,
    this.reminderCategory,
    this.assignments,
  });

  factory Reminders.fromJson(Map json) => Reminders(
        assignmentId: json['assignment_id'],
        reminderCategory: json['reminder_category'] != null
            ? _i2.ReminderCategory.values
                .firstWhere((e) => e.name == json['reminder_category'])
            : null,
        assignments: json['assignments'] is Map
            ? _i2.Assignments.fromJson(json['assignments'])
            : null,
      );

  final String? assignmentId;

  final _i2.ReminderCategory? reminderCategory;

  final _i2.Assignments? assignments;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory?.name,
        'assignments': assignments?.toJson(),
      };
}

class Tasks {
  const Tasks({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  factory Tasks.fromJson(Map json) => Tasks(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        parentProject: json['parent_project'],
        assignments: json['assignments'] is Map
            ? _i2.Assignments.fromJson(json['assignments'])
            : null,
        projects: json['projects'] is Map
            ? _i2.Projects.fromJson(json['projects'])
            : null,
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final String? parentProject;

  final _i2.Assignments? assignments;

  final _i2.Projects? projects;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments?.toJson(),
        'projects': projects?.toJson(),
      };
}

class Assignments {
  const Assignments({
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

  factory Assignments.fromJson(Map json) => Assignments(
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
            ? _i2.AssignmentType.values
                .firstWhere((e) => e.name == json['assignment_type'])
            : null,
        users: json['users'] is Map ? _i2.Users.fromJson(json['users']) : null,
        projects: json['projects'] is Map
            ? _i2.Projects.fromJson(json['projects'])
            : null,
        reminders: json['reminders'] is Map
            ? _i2.Reminders.fromJson(json['reminders'])
            : null,
        tasks: json['tasks'] is Map ? _i2.Tasks.fromJson(json['tasks']) : null,
      );

  final String? assignmentId;

  final DateTime? createDate;

  final DateTime? updatedAt;

  final String? subject;

  final String? notes;

  final DateTime? dueDate;

  final String? userId;

  final _i2.AssignmentType? assignmentType;

  final _i2.Users? users;

  final _i2.Projects? projects;

  final _i2.Reminders? reminders;

  final _i2.Tasks? tasks;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'subject': subject,
        'notes': notes,
        'due_date': dueDate?.toIso8601String(),
        'user_id': userId,
        'assignment_type': assignmentType?.name,
        'users': users?.toJson(),
        'projects': projects?.toJson(),
        'reminders': reminders?.toJson(),
        'tasks': tasks?.toJson(),
      };
}

class Projects {
  const Projects({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.assignments,
    this.tasks,
    this.projectMembers,
    this.$count,
  });

  factory Projects.fromJson(Map json) => Projects(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        assignments: json['assignments'] is Map
            ? _i2.Assignments.fromJson(json['assignments'])
            : null,
        tasks: (json['tasks'] as Iterable?)
            ?.map((json) => _i2.Tasks.fromJson(json)),
        projectMembers: (json['project_members'] as Iterable?)
            ?.map((json) => _i2.ProjectMembers.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.ProjectsCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final _i2.Assignments? assignments;

  final Iterable<_i2.Tasks>? tasks;

  final Iterable<_i2.ProjectMembers>? projectMembers;

  final _i3.ProjectsCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'assignments': assignments?.toJson(),
        'tasks': tasks?.map((e) => e.toJson()),
        'project_members': projectMembers?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class ProjectMembers {
  const ProjectMembers({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  factory ProjectMembers.fromJson(Map json) => ProjectMembers(
        projectMemberId: json['project_member_id'],
        assignmentId: json['assignment_id'],
        memberUsername: json['member_username'],
        project: json['project'] is Map
            ? _i2.Projects.fromJson(json['project'])
            : null,
        users: json['users'] is Map ? _i2.Users.fromJson(json['users']) : null,
      );

  final String? projectMemberId;

  final String? assignmentId;

  final String? memberUsername;

  final _i2.Projects? project;

  final _i2.Users? users;

  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project?.toJson(),
        'users': users?.toJson(),
      };
}

class Users {
  const Users({
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

  factory Users.fromJson(Map json) => Users(
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
        projectMembers: (json['project_members'] as Iterable?)
            ?.map((json) => _i2.ProjectMembers.fromJson(json)),
        assignments: (json['assignments'] as Iterable?)
            ?.map((json) => _i2.Assignments.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.UsersCountOutputType.fromJson(json['_count'])
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

  final Iterable<_i2.ProjectMembers>? projectMembers;

  final Iterable<_i2.Assignments>? assignments;

  final _i3.UsersCountOutputType? $count;

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
        'project_members': projectMembers?.map((e) => e.toJson()),
        'assignments': assignments?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyusersAndReturnOutputType {
  const CreateManyusersAndReturnOutputType({
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

  factory CreateManyusersAndReturnOutputType.fromJson(Map json) =>
      CreateManyusersAndReturnOutputType(
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

class CreateManyassignmentsAndReturnOutputType {
  const CreateManyassignmentsAndReturnOutputType({
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

  factory CreateManyassignmentsAndReturnOutputType.fromJson(Map json) =>
      CreateManyassignmentsAndReturnOutputType(
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
            ? _i2.AssignmentType.values
                .firstWhere((e) => e.name == json['assignment_type'])
            : null,
        users: json['users'] is Map ? _i2.Users.fromJson(json['users']) : null,
      );

  final String? assignmentId;

  final DateTime? createDate;

  final DateTime? updatedAt;

  final String? subject;

  final String? notes;

  final DateTime? dueDate;

  final String? userId;

  final _i2.AssignmentType? assignmentType;

  final _i2.Users? users;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'create_date': createDate?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'subject': subject,
        'notes': notes,
        'due_date': dueDate?.toIso8601String(),
        'user_id': userId,
        'assignment_type': assignmentType?.name,
        'users': users?.toJson(),
      };
}

class CreateManytasksAndReturnOutputType {
  const CreateManytasksAndReturnOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.parentProject,
    this.assignments,
    this.projects,
  });

  factory CreateManytasksAndReturnOutputType.fromJson(Map json) =>
      CreateManytasksAndReturnOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        parentProject: json['parent_project'],
        assignments: json['assignments'] is Map
            ? _i2.Assignments.fromJson(json['assignments'])
            : null,
        projects: json['projects'] is Map
            ? _i2.Projects.fromJson(json['projects'])
            : null,
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final String? parentProject;

  final _i2.Assignments? assignments;

  final _i2.Projects? projects;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'parent_project': parentProject,
        'assignments': assignments?.toJson(),
        'projects': projects?.toJson(),
      };
}

class CreateManyremindersAndReturnOutputType {
  const CreateManyremindersAndReturnOutputType({
    this.assignmentId,
    this.reminderCategory,
    this.assignments,
  });

  factory CreateManyremindersAndReturnOutputType.fromJson(Map json) =>
      CreateManyremindersAndReturnOutputType(
        assignmentId: json['assignment_id'],
        reminderCategory: json['reminder_category'] != null
            ? _i2.ReminderCategory.values
                .firstWhere((e) => e.name == json['reminder_category'])
            : null,
        assignments: json['assignments'] is Map
            ? _i2.Assignments.fromJson(json['assignments'])
            : null,
      );

  final String? assignmentId;

  final _i2.ReminderCategory? reminderCategory;

  final _i2.Assignments? assignments;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'reminder_category': reminderCategory?.name,
        'assignments': assignments?.toJson(),
      };
}

class CreateManyprojectsAndReturnOutputType {
  const CreateManyprojectsAndReturnOutputType({
    this.assignmentId,
    this.completeDate,
    this.completed,
    this.assignments,
  });

  factory CreateManyprojectsAndReturnOutputType.fromJson(Map json) =>
      CreateManyprojectsAndReturnOutputType(
        assignmentId: json['assignment_id'],
        completeDate: switch (json['complete_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['complete_date']
        },
        completed: json['completed'],
        assignments: json['assignments'] is Map
            ? _i2.Assignments.fromJson(json['assignments'])
            : null,
      );

  final String? assignmentId;

  final DateTime? completeDate;

  final bool? completed;

  final _i2.Assignments? assignments;

  Map<String, dynamic> toJson() => {
        'assignment_id': assignmentId,
        'complete_date': completeDate?.toIso8601String(),
        'completed': completed,
        'assignments': assignments?.toJson(),
      };
}

class CreateManyprojectMembersAndReturnOutputType {
  const CreateManyprojectMembersAndReturnOutputType({
    this.projectMemberId,
    this.assignmentId,
    this.memberUsername,
    this.project,
    this.users,
  });

  factory CreateManyprojectMembersAndReturnOutputType.fromJson(Map json) =>
      CreateManyprojectMembersAndReturnOutputType(
        projectMemberId: json['project_member_id'],
        assignmentId: json['assignment_id'],
        memberUsername: json['member_username'],
        project: json['project'] is Map
            ? _i2.Projects.fromJson(json['project'])
            : null,
        users: json['users'] is Map ? _i2.Users.fromJson(json['users']) : null,
      );

  final String? projectMemberId;

  final String? assignmentId;

  final String? memberUsername;

  final _i2.Projects? project;

  final _i2.Users? users;

  Map<String, dynamic> toJson() => {
        'project_member_id': projectMemberId,
        'assignment_id': assignmentId,
        'member_username': memberUsername,
        'project': project?.toJson(),
        'users': users?.toJson(),
      };
}
