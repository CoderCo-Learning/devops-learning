# Level 5 to 6

The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

human-readable <br>
1033 bytes in size <br>
not executable

## Solution

```
ssh bandit5@bandit.labs.overthewire.org -p 2220
```

Password: `4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`

Can use the 'ls' command to find directories if unsure whats present
```
ls
```
the output will show what is available

```
cd inhere/
```
Can run the 'ls' command to view files that are present

```
find . -type f -size 1033c ! -perm /a+x
```

`./maybehere07/.file2`


The find command searches in all sub-directories <br>
The -type f specifies that only look for 'files' not directories etc <br>
The -size 1033c filters for exactly a file of size 1033 bytes in size <br>
The -perm /a+x filters based on permissions that are NOT (!) executable for any of the user classes (owner, group, others) because it's negated by the !

```
cat ./maybehere07/.file2
```
Password
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```