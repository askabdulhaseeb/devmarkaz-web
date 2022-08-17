import '../enums/project_type_enum.dart';

class Project {
  Project(this.pid, this.name, this.type, this.time);

  final String pid;
  final String name;
  final ProjectTyepEnum type;
  final DateTime time;
}
