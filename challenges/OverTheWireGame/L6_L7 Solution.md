# Level 6 to 7

The password for the next level is stored somewhere on the server and has all of the bytes in size following properties:

owned by user bandit7 <br>
owned by group bandit6 <br>
33 bytes in size <br>

## Solution

```
ssh bandit6@bandit.labs.overthewire.org -p 2220
```

Password: `HWasnPhtq9AVKe0dmk45nxy20cvUa6EG`

We use the 'll' command to output more details compared to 'ls' command however you can use 'ls' if you're more comfortable but since the question is asking for certain properties, this ll command is more useful here

```
ll
```

Using information from previous level regarding what we need we can use:

```
find / -type f -user bandit7 -group bandit6 -size 33c
```

The command will output us the password location but since we're scanning the entire server we'll encounter permission denied errors because we don't have the correct privs to 'read':

`find: ‘/sys/kernel/tracing’: Permission denied` <br>
`find: ‘/sys/kernel/debug’: Permission denied` <br>
`find: ‘find: ‘/sys/fs/pstore’: Permission denied`<br>

### Correct commands

```
find / -type f -user bandit7 -group bandit6 -size 33c 2> /dev/null
```

Outputs: `/var/lib/dpkg/info/bandit7.password`

```
cat /var/lib/dpkg/info/bandit7.password
```

Password:
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```