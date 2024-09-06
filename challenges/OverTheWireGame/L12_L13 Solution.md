# Level 12 to 13

The password for progressing to the next level is located within a file named data.txt. This file contains a hexadecimal dump of another file that has been compressed multiple times using various compression methods. For easier handling, it is suggested to work within a temporary directory in /tmp created with a hard-to-guess name. Using the mktemp -d command will generate such a directory. After creating the temporary directory, use cp to copy the data.txt file there, and mv to rename it as needed (refer to the man pages for more information on these commands).


# Solution

```
ssh bandit12@bandit.labs.overthewire.org -p 2220
```
Password: `7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`
List Files in the Current Directory:

```
ll
```
```
cat data.txt
```

Create a Temporary Working Directory:
```
tempdir=$(mktemp -d)
```
The mktemp -d command creates a uniquely named temporary directory. This is essential to prevent file name conflicts and keep your workspace clean. The directory path is stored in the tempdir variable.

```
cp data.txt "$tempdir"
```
```
mv "$tempdir/data.txt" "$tempdir/data.hex"
```
cp copies data.txt to the temporary directory, and mv renames it to data.hex for clarity, indicating it contains hexadecimal data.


Change to the Temporary Directory:
```
cd "$tempdir"
```
Navigate into the temporary directory to work with the copied and renamed file.
Convert Hexdump Back to Binary:
```
xxd -r data.hex data.bin
xxd -r reverses the hexdump, converting data.hex back to its original binary format and saving it as data.bin.
```
Check the File Type:
```
file data.bin
```
The file command identifies the type of data.bin. It returns information indicating the file is a gzip compressed archive.


Rename and Decompress the Gzip File:
```
mv data.bin data.gz
```
```
gunzip data.gz
```
The file is renamed to data.gz to match its type. gunzip is then used to decompress it.
Check the New File Type:

`file data`
The decompressed file is identified as a bzip2 compressed data file.
Rename and Decompress the Bzip2 File:

```
mv data data.bz2
```
`bunzip2 data.bz2`
Rename to data.bz2 and use bunzip2 to decompress.
Repeat the Process for Multiple Compressions:

Continue identifying the file type with file and decompressing using the appropriate tools (gunzip, bunzip2, tar -xvf, etc.), renaming files as needed:
`file data`
Returns another gzip file.
```
mv data data.gz
gunzip data.gz
```
Extracting a tar archive:

file data
tar -xvf data
The file turns out to be another compressed format. Keep repeating the steps until the file is in a readable format.
Eventually, the Final File Type Will Be Plain ASCII Text:

`file data8`
Once you see ASCII text, you have reached the final decompressed file.
Read the Password:


```
cat data8
```

# Password: 
```
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```