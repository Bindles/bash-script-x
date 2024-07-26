function x() {
    # Get the command as a string
    command_str="$*"

    # Get the last word from the command and store it in a variable
    last_word="${command_str##* }"

    # Execute the command provided as arguments
    eval "$command_str"

    # Check if the command was successful (exit code 0) and if the last word is a valid directory
    if [ $? -eq 0 ] && [ -d "$last_word" ]; then
        # Change directory to the last word
        cd "$last_word"
    fi
}