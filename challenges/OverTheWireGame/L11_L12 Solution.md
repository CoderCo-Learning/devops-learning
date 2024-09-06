# Level 11 to 12

The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

## Solution

```
ssh bandit11@bandit.labs.overthewire.org -p 2220
```

Password: `dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`

```
ll
```

As usual, using cat will display all the contents of a file. For example:

```
cat data.txt
```
This outputs: `Gur cnffjbeq vf 7k16JArUVv5LxVuJfsSVdbbtaHGlw9D4`

To decode this, use the tr command. The command tr 'A-Za-z' 'N-ZA-Mn-za-m' instructs tr to transform each uppercase letter (A-Z) into its corresponding ROT13 letter (N-Z and A-M) and each lowercase letter (a-z) into its equivalent ROT13 letter (n-z and a-m). 
```
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

# Password:
```
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`
```

## What is ROT13
ROT13 is a variant of the Caesar cipher where every letter in the alphabet is shifted by 13 positions. Since the alphabet has 26 letters, shifting by 13 positions effectively swaps the first half of the alphabet with the second half. Applying ROT13 a second time on the transformed text will revert it to its original form.