# Level 7 to 8

The password for the next level is stored in the file data.txt next to the word millionth

## Solution


```
ssh bandit7@bandit.labs.overthewire.org -p 2220
```

Password: `morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj`

Print all files and their perms:
```
ll
```
We use cat data.txt (this returns all the data in the file) - using 'grep "millionth"' returns only the line with the word 'millionth' before it which has the desired password
```
cat data.txt | grep "millionth"
```
# Output + Password
`millionth dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`