# A script that utilises a bunch of different statements, including IF,While and FOR

# The task is: Create a Simple Inventory Management System

declare -A Inventory_list 
echo "Enter a username: "
read username
echo "Welcome, $username"

Inventory_list=( ["fruits"]="apple" ["Misc items"]="pen" ["Other"]="wheel" )

echo "Our current stock is:"
for i in "${!Inventory_list[@]}"
do 
    echo "$i: ${Inventory_list[$i]}"
done

while [ "${#Inventory_list[@]}" -ne 0 ]; do
    echo "What item would you like today?: "
    read item

    item_lower=$(echo "$item" | tr '[:upper:]' '[:lower:]')


    # Check if the item exists in the inventory values
    item_found=false
    for key in "${!Inventory_list[@]}"; do
        inventory_value_lower=$(echo "${Inventory_list[$key]}" | tr '[:upper:]' '[:lower:]')

        if [[ "${Inventory_list[$key]}" == "$item_lower" ]]; then
            echo "You have selected: $item"
            unset Inventory_list["$key"] 
            item_found=true
            break
        fi
    done
    
    if [ "$item_found" = true ]; then
        echo "The updated inventory list is:"
        for i in "${!Inventory_list[@]}"; do 
            echo "$i: ${Inventory_list[$i]}"
        done
    else
        echo "You have selected an invalid item: $item"
        echo "Please select a valid item."
    fi
    
    # Check if the inventory is empty
    if [ "${#Inventory_list[@]}" -eq 0 ]; then
        echo "The inventory is now empty."
        break
    fi
done