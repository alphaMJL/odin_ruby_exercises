def caesar_ciper(string, shift_factor)
    if !string.is_a?(String)
        return  "Invalid Word Input: Please enter text"
    elsif !shift_factor.is_a?(Integer)
        return "Invalid Shift Number"
    end
    alphabet_upper = ('A'..'Z').to_a
    alphabet_lower = ('a'..'z').to_a
    encrypt_array = []
    string.each_char do |char|
        if !alphabet_lower.include?(char) && !alphabet_upper.include?(char)
            encrypt_array.push(char)
        elsif alphabet_lower.include?(char)
            new_index = (alphabet_lower.index(char) + shift_factor) % 26
            encrypt_array.push(alphabet_lower.at(new_index))
        elsif alphabet_upper.include?(char)
            new_index = (alphabet_upper.index(char) + shift_factor) % 26
            encrypt_array.push(alphabet_upper.at(new_index))
        end    
    end
    return encrypt_array.join
end

p caesar_ciper('Hello', 101)

