package main
import "core:fmt"
import "core:os"
import "core:strings"

word_count :: proc() {
    
    fmt.print("enter something: ")
    buf: [256]byte // buffer to store 256 bytes of user input
    num_bytes, err := os.read(os.stdin, buf[:]) // This reads up to 256 bytes from the standard input (os.stdin) into the buffer buf

    str := string(buf[:num_bytes - 1]) // Convert the buffer to a string and trim the newline character

    words := str.split(" ") // split the words in input into an array

    // counts := make(map[string]int) // make map to store key value pairs

    fmt.println("You entered:")
    fmt.printf("%s", buf)
    fmt.println("the string is: ", str)

}

string_to_array :: proc(string) {
    //method to split a string into an array, splitting at " "
    for character in string {
        if character = " " {
            //add new_string to array
            // clear new_string
        }
        new_string := new_string + char
    }
}


main :: proc () {
    word_count()
}



//this works as a way of successfully getting a user input
// main :: proc() {
    // fmt.print("enter something: ")
    // buf: [256]byte //rune
    // rune to byte (u8)
    // num_bytes, err := os.read(os.stdin, buf[:])

    // if err != nil {
    //     fmt.printf("Error reading input: %v\n", err)
    //     return
    // }

    // // Convert the buffer to a string and trim the newline character
    // input := string(buf[0..=num_bytes]).trim("\n")
    // str := string(buf[:num_bytes - 1])

    // input := cstring(buf)// ^u8 to cstring
    // input := transmute(string)buf //u8 to string

    // // Split the input string into words
    // words := strings.split(input, " ")

    // // Print the words
    // fmt.println("You entered the following words:")
    // for word in words {
    //     fmt.printf("%s\n", word)
    // }

//     fmt.println("You entered:")
//     fmt.printf("%s", buf)
//     fmt.print("the string is: ", str)
// }

// word_count :: proc() {
//     // user_input := gets.chomp

//     // fmt.print("Enter some text: ")
//     // user_input := os.input_string() //assign user input
//     // words := user_input.split(" ")// split the words in input into an array

//     fmt.println("Enter text (press Ctrl+D to end):")
//     for {
//         // Read a line of input
//         input := os.input_string()
//         // if err != nil {
//         //     break
//         // }

//         words := input.split(" ")// split the words in input into an array
//     }

//     // what if user input is empty?

//     counts := make(map[string]int) //make map to store key value pairs

//     for word in words {//iterate through string
//         if value, ok := counts[word]; ok { //if word is in dictionary increase count by one
//             value += 1
//         }
//         //add word if not yet in dictionary,
//         counts[word] = 1
//     }

//     fmt.printf(counts) //print word list + count
// }

// main :: proc() {
//     word_count()
// }

/*
    This code counts the number of occurences of each word lists the
    words apphabetically, and prints each word along with its count

    To run copy "odin run word_count.odin -file <input>" into your terminal

*/