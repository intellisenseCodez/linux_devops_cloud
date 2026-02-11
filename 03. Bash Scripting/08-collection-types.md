# Arrays and Dictionaries

## Defining arrays

```bash
Fruits=('Apple' 'Banana' 'Orange')

Fruits[0]="Apple"   # access first item
Fruits[1]="Banana"  # access second item
Fruits[2]="Orange"  # access third item
```

### Working with arrays

```bash
echo "${Fruits[0]}"           # Element #0
echo "${Fruits[-1]}"          # Last element
echo "${Fruits[@]}"           # All elements, space-separated
echo "${#Fruits[@]}"          # Number of elements
echo "${#Fruits}"             # String length of the 1st element
echo "${#Fruits[3]}"          # String length of the Nth element
echo "${Fruits[@]:3:2}"       # Range (from position 3, length 2)
echo "${!Fruits[@]}"          # Keys of all elements, space-separated
```

## Operations

```bash
Fruits=("${Fruits[@]}" "Watermelon")    # Push
Fruits+=('Watermelon')                  # Also Push
Fruits=( "${Fruits[@]/Ap*/}" )          # Remove by regex match
unset Fruits[2]                         # Remove one item
Fruits=("${Fruits[@]}")                 # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
words=($(< datafile))                   # From file (split by IFS)
```

## Iteration

```bash
for i in "${arrayName[@]}"; do
  echo "$i"
done
```

## Defining Dictionaries

```bash
declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"
```

## Working with dictionaries

```bash
echo "${sounds[dog]}" # Dog's sound
echo "${sounds[@]}"   # All values
echo "${!sounds[@]}"  # All keys
echo "${#sounds[@]}"  # Number of elements
unset sounds[dog]     # Delete dog
```

## Iteration

### Iterate over values

```bash
for val in "${sounds[@]}"; do
  echo "$val"
done
```

### Iterate over keys
```bash
for key in "${!sounds[@]}"; do
  echo "$key"
done
```