library samplechat.globals.settings;

bool isDarkMode = false;
Function changeTheme = true as Function;

class Settings {
  static late void Function() changeTheme;
  static bool isDarkMode = false;
  
  static void initialize({required void Function() themeChanger}) {
    changeTheme = themeChanger;
  }
}
class initialize {
}
