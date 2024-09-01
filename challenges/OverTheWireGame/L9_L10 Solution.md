# Level 9 to 10

The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.

## Solution

```
ssh bandit9@bandit.labs.overthewire.org -p 2220
```

Password: `4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`

```
ls or ll 
```
## Since the hint indicated its preceded by several '=' we can use grep (global regular expression print) to search and match to what we specify
```
cat data.txt | strings | grep ==
```

# Output and Password:

`\a!;========== the`<br>
`========== passwordf`<br>
`========== isc`<br>
`========== FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`<br>