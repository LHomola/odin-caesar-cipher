def caesar_cipher(string, key)
    shifted_chars = []

    string.each_char do |char|    
        if char.between?("a", "z")
            if char.ord + key <= "z".ord 
                shifted_chars.push((char.ord + key).chr)
            else
                shifted_chars.push(("a".ord - 1 + (key - ("z".ord - char.ord))).chr)
            end
        elsif char.between?("A", "Z")
            if char.ord + key <= "Z".ord 
                shifted_chars.push((char.ord + key).chr)
            else
                shifted_chars.push(("A".ord - 1 + (key - ("Z".ord - char.ord))).chr)
            end
        else
            shifted_chars.push(char)
        end
    end

    result = shifted_chars.join("")
    p result
end

print "Enter string to be encrypted: "
string = gets.chomp

print "Enter number by which the string will be shifted: "
key = gets.chomp.to_i

caesar_cipher(string, key)
