module WOoo
  module Utility
    class CodeGenerator
      # ----------------------------------------------------------------
      def self.new_human_code(number_elements = 6)
        code = ''
        number_elements.times {
          code += CodeGenerator.human_code_elements[Kernel::rand(@@human_code_elements.length)]
        }

        return code
      end

      # ----------------------------------------------------------------
      def self.new_computer_code(char_count = 30)
        code = ''
        char_count.times {
          code += @@computer_code_elements[Kernel::rand(@@computer_code_elements.length)]
        }
        
        return code
      end

      # ----------------------------------------------------------------
      # ----------------------------------------------------------------
      # ----------------------------------------------------------------
      
      protected
      @@consonants = ['b', 'c', 'd', 'f', 'l', 'm', 'n', 'p', 'r', 's', 't', 'v', 'x']
      @@vowels = ['a', 'e', 'i', 'o', 'u']
      @@computer_code_elements = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
          's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
          'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

      @@human_code_elements = nil
      
      # ----------------------------------------------------------------
      def self.human_code_elements
        if @@human_code_elements == nil
          @@human_code_elements = []
          for consonant in @@consonants
            for vowel in @@vowels
              @@human_code_elements << consonant + vowel
            end
          end

          0.upto(9) {|index|
            @@human_code_elements << index.to_s
          }
        end

        return @@human_code_elements
      end
    end
  end
end