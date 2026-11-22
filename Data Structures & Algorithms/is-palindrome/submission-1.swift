class Solution {
    func isPalindrome(_ s: String) -> Bool {
      let characters = Array(s)
      var left = 0
      var right = characters.count - 1

      while left < right {

        while left < right && !nonAlphna(character: characters[left]) {
          left += 1
        } 

         while right > left && !nonAlphna(character: characters[right]) {
          right -= 1
        } 
        if characters[left].lowercased() != characters[right].lowercased() {
          return false
        }
        left += 1
        right -= 1

      }
      return true

    }

    func nonAlphna(character: Character) -> Bool {
      return character.isLetter || character.isNumber
    }
}
