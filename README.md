# triangular-message
Decoding messages using triangular numbers

## MessageDecoder Class Explanation

The `MessageDecoder` class in Ruby is designed to decode messages from a text file. the idea is to find the triangular numbers within the range of the numbers listed in the encoded message. those are the numbers that correspond to the words of the decoded message. the triangular numbers are calculated using formula: `n * (n+1) / 2`

Here's a step-by-step explanation of the code:

1. The `initialize` method sets up an instance of the class with a specific message file.

2. The `message_triangular_numbers` method generates a map where the keys are the triangular numbers (in a consecutive order) less than or equal to the number of lines in the file.

2. The `decode` method reads each line of the file, splits it into a number and a word, and if the number is a key in the `message_map` (which contains the triangular numbers), it replaces the value at that key with the word. Finally, it outputs the decoded message.

4. At the end of the script, an instance of `MessageDecoder` is created with and passed the "message.txt" as a parameter, and the `decode` method is called to decode the message.

## Testing

paste your encoded message in the message.txt file and simply run `ruby message_decoder.rb`