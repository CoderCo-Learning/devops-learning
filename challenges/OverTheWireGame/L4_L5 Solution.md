# Level 4 to 5

The password for the next level is stored in the only human-readable file in the inhere directory. Tip: if your terminal is messed up, try the “reset” command.

## Solution

```
ssh bandit4@bandit.labs.overthewire.org -p 2220
```

Password : `2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ`

```
ll
```

```
file inhere/*
```
returns all files in the 'inhere' directory

`inhere/-file00: data` <br>
`inhere/-file01: data`<br>
`inhere/-file02: data`<br>
`inhere/-file03: data`<br>
`inhere/-file04: data`<br>
`inhere/-file05: data`<br>
`inhere/-file06: data`<br>
`inhere/-file07: ASCII text`<br>
`inhere/-file08: data`<br>
`inhere/-file09: data`<br>

move into the inhere
```
cd inhere
```
Check each file manually (slow + not recommended) by doing cat ./(filename) or doing cat ./-file0[0-9]. File with human read-able
```
cat ./-file07
```
# Password: 
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```