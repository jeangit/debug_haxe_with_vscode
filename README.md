# Debugging Haxe , using Visual Studio Code

## .vscode

_launch.json_ and _tasks.json_ are provided in the hidden _.vscode_ directory.


## Modifying the nadako plugin for haxe 4

In order to use haxe4 on a computer which host also haxe3.x in haxelib, you must edit nadako plugin.

package.json must be copied to ~/.vscode-oss/extensions/nadako.vshaxe-2.4.5 .

It contains the name of the script for setting environment and calling haxe4.

In my case, i just created a script called `haxe4` (see below) and put its name in the _package.json_ , in replacement of the `haxe` command.

## haxe4 sample lauching script
```bash
#!/bin/sh
<<<<<<< HEAD
# $$DATE$$ : mar. 18 décembre 2018 (20:06:10)
=======
# $$DATE$$ : mar. 18 décembre 2018 (20:04:57)
>>>>>>> d9d9b77829c495c72427d6a1730b6ff0dcab1f50

#  ~$ ls ~/haxelib/haxe4/ -lh
#   28  5 oct.  11:29 current -> haxe_20180612063724_1e3e5e0/                             
# 4,0K 12 juin   2018 haxe_20180612063724_1e3e5e0
# 4,0K 12 oct.  15:33 haxe_20181012132630_7eb789f 

path_to_haxe4="$HOME"/haxelib/haxe4/
current="$path_to_haxe4"$(readlink $path_to_haxe4/current)

HAXE_STD_PATH="$current"/std "$current"haxe $@
<<<<<<< HEAD
```
=======

>>>>>>> d9d9b77829c495c72427d6a1730b6ff0dcab1f50

## Building sample provided

### in a terminal
`haxe4 make.hxml`

### in Visual Studio Code
C-S-b , then select _Build_ or _make.hxml_ (same result).


## Debugging
HAHA ! That's the trick!

C-F5 will pop a windows with error message _Failed to connect on debug port_

