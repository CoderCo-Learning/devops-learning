# Level 10 to 11

The password for the next level is stored in the file data.txt, which contains base64 encoded data

## Solution

```
ssh bandit10@bandit.labs.overthewire.org -p 2220
```

Password: `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`

```
ls
```
## Base64 is used to encode data which represents binary data in ASCII string format. The flag -d is used to decode already encoded data.
```
base64 -d data.txt
```

# Output and Password: 
```
The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```