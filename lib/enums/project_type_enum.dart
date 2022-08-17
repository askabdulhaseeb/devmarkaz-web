enum ProjectTyepEnum {
  mobileApp,
  website,
  desktop,
}

class ProjectTypeConvertor {
 static String fromEnum(ProjectTyepEnum type) {
    if (ProjectTyepEnum.mobileApp == type) {
      return 'Mobile App';
    } else if (ProjectTyepEnum.website == type) {
      return 'Website';
    } else {
      return 'Desktop';
    }
  }

 static ProjectTyepEnum fromJson(String type) {
    if ('mobile_app' == type) {
      return ProjectTyepEnum.mobileApp;
    } else if ('website' == type) {
      return ProjectTyepEnum.website;
    } else {
      return ProjectTyepEnum.desktop;
    }
  }
}
