# Developer Setup

## Sublime


### Package Control

If it does not come as a default, install package control via [the package control website](https://packagecontrol.io/installation).

Afterwards, install the following packages:

1. SideBar Enhancements
2. All Autocomplete
3. Trailing Spaces
4. Git
5. CoffeeScript
6. Sass
7. SublimeLinter
8. Emmet
9. GitHubinator
10. Bracket Highlighter
11. Flatland Theme

### Sublime User Settings

In user preferences add the following JSON code:

```javascript
  {
    "close_windows_when_empty": true,
    "color_scheme": "Packages/Theme - Flatland/Flatland Monokai.tmTheme",
    "flatland_square_tabs": true,
    "font_size": 12.0,
    "highlight_line": true,
    "ignored_packages":
    [
      "Vintage"
    ],
    "tab_size": 2,
    "theme": "Flatland Dark.sublime-theme",
    "trailing_spaces_include_current_line": false,
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true,
    "word_separators": "./\\()\"':,.;<>~!@#$%^&*|+=[]{}`~?"
  }
```

### Command Line

Create an alias for Sublime.

```
$ ~/ sudo mkdir -p /usr/local/bin
$ ~/ sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin
```

### Icon

```
$ mv ~/Downloads/st2.icns /Applications/Sublime\ Text\ 2.app/Contents/Resources/Sublime\ Text\ 2.icns
```

### Pasting

Add the following to the Key Bindings - User file:
```
  [
    { "keys": ["super+v"], "command": "paste_and_indent" },
    { "keys": ["super+shift+v"], "command": "paste" },
    { "keys": ["super+b"], "command": "goto_definition" }
  ]
```

