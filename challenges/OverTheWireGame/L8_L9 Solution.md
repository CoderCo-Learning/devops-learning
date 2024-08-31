# Level 8 to 9

The password for the next level is stored in the file data.txt and is the only line of text that occurs only once

## Solution

```
ssh bandit8@bandit.labs.overthewire.org -p 2220
```

Password: `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`

```
ll
```
This time, the file data.txt has lots of lines of text, some are not unique, so to sort by only unique we use uniq -u
```
cat data.txt | sort | uniq -u
```

# Password:
``` 
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`
```