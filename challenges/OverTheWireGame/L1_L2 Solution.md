# Level 1 to 2

The password for the next level is stored in a file called - located in the home directory

## Solution

```
exit  
```
 We exited to ssh into the next level which is bandit lvl 1 instead of bandit0 (minor change but crucial!)

```
ssh bandit1@bandit.labs.overthewire.org -p 2220
```

Password `ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If`

Check the working directory
```
pwd 
```
Cat treats ./- as a file named - located in the current directory (./). In Unix-like systems, - is often used as a special character to represent standard input (stdin). When prefixed with ./, it is interpreted as a literal file named -.
```
cat ./-
```
# Password:
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```