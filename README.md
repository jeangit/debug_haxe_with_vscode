# Debugging Haxe , using Visual Studio Code

## .vscode

_launch.json_ and _tasks.json_ are provided in the hidden _.vscode_ directory.


## Modifying the nadako plugin for multiples haxe installations

In order to use haxe4 on a computer which host also haxe3.x in haxelib, you have to go in haxe configuration (_File_/_Preferences_/_Settings_).

Type _haxe._ in the settings filter.

Then, go to the _Haxe:Executable_ entry, and edit : just replace `haxe` with the name of your haxe4 alias / launching script. (copy to user setting, and then edit with your value).

In my case, i've just created a script called `haxe4` (see below).

## haxe4 sample lauching script
```bash
#!/bin/sh
<<<<<<< HEAD
# $$DATE$$ : mer. 19 décembre 2018 (11:12:54)
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
```

## Building sample provided

### in a terminal
`haxe4 make.hxml`

### in Visual Studio Code
C-S-b , then select _Build_ or _make.hxml_ (same result).


## Debugging

F9 for putting a breakpoint.
F5 for starting debug. At this step, i get _failed to connect to debug port_.

But if i launch hl myself, with the debug port equal to the one defined in _launch.js_ :
`hl --debug 6118 --debug-wait test.hl`
then pressing F5 in VScode will launch the program. Without stopping on breakpoints, alas. It seems that in fact VScode connects and launch, ignoring breakpoints.

