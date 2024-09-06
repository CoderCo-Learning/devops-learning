# Level 3 to 4

The password for the next level is stored in a hidden file in the inhere directory.

## Solution

# exit level 2 and into level 3
```
exit
```

```
ssh bandit3@bandit.labs.overthewire.org -p 2220
```

Password from previous: `MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`

```
ls            | # we are checking files present in current working directory
```

```
cd inhere/
```
The file is hidden because a unix-like system, anything with a '.' before the file name is hidden
```
cat ...Hiding-From-You
```

You can also do `ls-a` to list all files including hidden files
# Password
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```