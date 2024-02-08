def caesar_cipher(string, shift_factor)
    encrypted_string = ""
    #iterate over string
    string.chars.each do |char|
        #find char code of letter
        curr_char_code = char.ord
        shifted_char_code = curr_char_code + shift_factor

        # handle uppercaae
        if curr_char_code >= 65 && curr_char_code <= 90
            if shifted_char_code > 90
                encrypted_string += (shifted_char_code - 26).chr
            else
                encrypted_string += shifted_char_code.chr
            end
        # handle lowercase
        elsif curr_char_code >= 97 && curr_char_code <= 122
            if shifted_char_code > 122
                encrypted_string += (shifted_char_code - 26).chr
            else
                encrypted_string += shifted_char_code.chr
            end
        # handle space    
        elsif curr_char_code == 32
            encrypted_string += " "
        # handle our of range i.e symbols
        else
            encrypted_string += char
            # account for letter wrap
        end
    end
    encrypted_string
end

p caesar_cipher("What a string!", 5 ) # => "Bmfy f xywnsl!"