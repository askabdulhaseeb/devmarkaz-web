import 'package:flutter/material.dart';

import '../enums/project_type_enum.dart';
import '../models/project.dart';
import '../utilities/app_images.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, Key? key}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: SizedBox(
          width: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    AppImages.demoImageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 56,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        project.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ProjectTypeConvertor.fromEnum(project.type),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
