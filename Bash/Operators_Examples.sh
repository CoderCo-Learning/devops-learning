# List of Bash Comparison Operators

### Numeric Comparison Operators

`-eq`
Description: Checks if two numbers are equal.
Example: [ $a -eq $b ] returns true if a is equal to b.

`-ne`
Description: Checks if two numbers are not equal.
Example: [ $a -ne $b ] returns true if a is not equal to b.

`-gt`
Description: Checks if one number is greater than another.
Example: [ $a -gt $b ] returns true if a is greater than b.

`-lt`
Description: Checks if one number is less than another.
Example: [ $a -lt $b ] returns true if a is less than b.

`-ge`
Description: Checks if one number is greater than or equal to another.
Example: [ $a -ge $b ] returns true if a is greater than or equal to b.

`-le`
Description: Checks if one number is less than or equal to another.
Example: [ $a -le $b ] returns true if a is less than or equal to b.

### String Comparison Operators

`=`
Description: Checks if two strings are equal.
Example: [ "$a" = "$b" ] returns true if a is equal to b.

`!=`
Description: Checks if two strings are not equal.
Example: [ "$a" != "$b" ] returns true if a is not equal to b.

`-z`
Description: Checks if a string is empty (zero length).
Example: [ -z "$a" ] returns true if a is an empty string.

`-n`
Description: Checks if a string is not empty (non-zero length).
Example: [ -n "$a" ] returns true if a is not an empty string.

### File Comparison Operators

`-e`
Description: Checks if a file exists.
Example: [ -e "$file" ] returns true if the file exists.

`-f`
Description: Checks if a file is a regular file (not a directory or other special type).
Example: [ -f "$file" ] returns true if it is a regular file.

`-d`
Description: Checks if a file is a directory.
Example: [ -d "$dir" ] returns true if it is a directory.

`-r`
Description: Checks if a file has read permission.
Example: [ -r "$file" ] returns true if the file is readable.

`-w`
Description: Checks if a file has write permission.
Example: [ -w "$file" ] returns true if the file is writable.

`-x`
Description: Checks if a file has execute permission.
Example: [ -x "$file" ] returns true if the file is executable.

### Logical Operators

`&&`
Description: Logical AND. Both conditions must be true.
Example: [ $a -eq 1 ] && [ $b -eq 2 ] returns true if both conditions are true.

`||`
Description: Logical OR. At least one condition must be true.
Example: [ $a -eq 1 ] || [ $b -eq 2 ] returns true if either condition is true.

`!`
Description: Logical NOT. Reverses the condition.
Example: [ ! -e "$file" ] returns true if the file does not exist.
