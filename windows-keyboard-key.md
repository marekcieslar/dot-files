## how to remap keyboard key in windows

- WIN + r
- regedit
- Komputer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout
- in window -> new -> binary
- change name to Scancode Map
- edit

```
00 00 00 00 00 00 00 00
02 00 00 00 XX 00 YY 00 // XX code what we wont, YY code on whitch key
00 00 00 00
```

- Esc on CapsLock

```
00 00 00 00 00 00 00 00
02 00 00 00 01 00 3A 00
00 00 00 00
```
