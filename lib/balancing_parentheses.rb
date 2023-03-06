require_relative './stack'

# your code here
def balancing_parentheses(string)
    stack = Stack.new
    
    string.chars.each do |char|
        if char == "("
            stack.push(char)
        elsif char == ")" && stack.peek == "("
            stack.pop
        else
            stack.push(char)
        end
    end

    stack.size
    # use size to determine the number of broken parentheses
   # use the last method to check the last parentheses shape
   # needs an iterator to sort through each character
   # the return value must be a number, so need a count variable
end