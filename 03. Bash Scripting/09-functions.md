# Shell function
Sometime shell scripts get complicated. To avoid large and complicated scripts use functions you divide large scripts into a small chunks/entities called functions.

Functions makes shell script modular and easy to use.

## Defining functions

## Syntax
```bash
myfunc() {
    echo "hello $1"
}

OR

# Same as above (alternate syntax)
function myfunc {
    echo "hello $1"
}
```

## Example

Writing the hello() function

```bash
hello() { 
    echo 'Hello world!' ; }
```

To execute, simply type: `hello`


## Removing functions
To unset or remove the function use the unset command as follows:
```bash
unset -f functionName
unset -f hello
declare
```

## Pass arguments into a function

You can pass command line arguments to user defined functions. Define hello as follows:
```bash
hello() { echo "Hello $1, let us be a friend." ; }
```

To execute, simply type: `hello ola`