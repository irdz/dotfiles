# Developer Setup

## Sublime


### Package Control

To install package control hit ctrl ` and you should paste the following code:

```
  import urllib2,os; pf='Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler( ))); open( os.path.join( ipp, pf), 'wb' ).write( urllib2.urlopen( 'http://sublime.wbond.net/' +pf.replace( ' ','%20' )).read()); print( 'Please restart Sublime Text to finish installation')
```


Packages to install:

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

### Sublime User Settings

In user preferences add the following JSON code:

```
  {
    "close_windows_when_empty": true,
    "color_scheme": "Packages/Color Scheme - Default/Monokai Soda.tmTheme",
    "highlight_line": true,
    "ignored_packages":
    [
      "Vintage"
    ],
    "tab_size": 2,
    "theme":
    [
      "Soda Dark.sublime-theme"
    ],
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true,
    "trailing_spaces_include_current_line": false,
    "word_separators": "./\\()\"':,.;<>~!@#$%^&*|+=[]{}`~?"
  }
```

### Command Line

```
$ ~/ sudo mkdir -p /usr/local/bin
$ ~/ sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin
```

### Icon

	$ mv ~/Downloads/st2.icns /Applications/Sublime\ Text\ 2.app/Contents/Resources/Sublime\ Text\ 2.icns


### Pasting

Add the following to the Key Bindings - User file:
```
  [
    { "keys": ["super+v"], "command": "paste_and_indent" },
    { "keys": ["super+shift+v"], "command": "paste" }
  ]
```

