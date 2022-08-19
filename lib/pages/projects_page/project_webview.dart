import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/project.dart';
import '../../providers/project_provider.dart';
import '../../widgets/custom_widgets/underline_text_button.dart';
import '../../widgets/project_card.dart';

class ProjectWebview extends StatelessWidget {
  const ProjectWebview({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.all(32),
          child: SizedBox(
            height: 40,
            child: Consumer<ProjectProvider>(
                builder: (BuildContext context, ProjectProvider projPro, _) {
              final List<String> tabs = projPro.tabs;
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
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
        SizedBox(
          height: 240,
          child: Consumer<ProjectProvider>(
            builder: (BuildContext context, ProjectProvider projPro, _) {
              final List<Project> projects = projPro.filteredProject();
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: projects.length,
                  separatorBuilder: (BuildContext context, _) =>
                      const SizedBox(width: 32),
                  itemBuilder: (BuildContext context, int index) {
                    return ProjectCard(project: projects[index]);
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32),
          child: Icon(
            Icons.keyboard_double_arrow_down,
            size: 120,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
          ),
        )
      ],
    );
  }
}
