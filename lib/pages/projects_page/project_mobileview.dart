import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/project.dart';
import '../../providers/project_provider.dart';
import '../../widgets/custom_widgets/underline_text_button.dart';
import '../../widgets/project_card.dart';

class ProjectMobileview extends StatelessWidget {
  const ProjectMobileview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 20),
        const SelectableText(
          'Our Projects',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            height: 40,
            width: double.infinity,
            child: Consumer<ProjectProvider>(
                builder: (BuildContext context, ProjectProvider projPro, _) {
              final List<String> tabs = projPro.tabs;
              return ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  UnderlineTextButton(
                    title: tabs[0],
                    isSelected: projPro.currentIndex == 0,
                    textColor: Theme.of(context).primaryColor,
                    onTap: () => projPro.onIndexChange(0),
                  ),
                  const SizedBox(width: 40),
                  UnderlineTextButton(
                    title: tabs[1],
                    isSelected: projPro.currentIndex == 1,
                    textColor: Theme.of(context).primaryColor,
                    onTap: () => projPro.onIndexChange(1),
                  ),
                  const SizedBox(width: 40),
                  UnderlineTextButton(
                    title: tabs[2],
                    isSelected: projPro.currentIndex == 2,
                    textColor: Theme.of(context).primaryColor,
                    onTap: () => projPro.onIndexChange(2),
                  ),
                  const SizedBox(width: 40),
                  UnderlineTextButton(
                    title: tabs[3],
                    isSelected: projPro.currentIndex == 3,
                    textColor: Theme.of(context).primaryColor,
                    onTap: () => projPro.onIndexChange(3),
                  ),
                ],
              );
            }),
          ),
        ),
        Consumer<ProjectProvider>(
          builder: (BuildContext context, ProjectProvider projPro, _) {
            final List<Project> projects = projPro.filteredProject();
            return Expanded(
              child: ListView.separated(
                primary: false,
                itemCount: projects.length,
                separatorBuilder: (BuildContext context, _) =>
                    const SizedBox(height: 16),
                itemBuilder: (BuildContext context, int index) {
                  return AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: ProjectCard(project: projects[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
