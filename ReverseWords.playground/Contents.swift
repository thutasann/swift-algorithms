import UIKit

var sampleSentence = "Let starts today by completing a very interesting challenge"

func reverseWordsInSentence(sentence: String) -> String{
    let allWords = sentence.components(separatedBy: " ")
    var newSentence = ""
    
    for index in 0...allWords.count - 1{
        let word = allWords[index]
        if newSentence != ""{
            newSentence += " "
        }
        
        if index % 2 == 1{
            let reverseWord = String(word.reversed())
            newSentence += reverseWord.stringByRemovingVowels()
        } else{
            newSentence += word.stringByRemovingVowels()
        }
    }
    
    return newSentence
}

extension String{
    
    func stringByRemovingVowels() -> String{
        var newWord = self
        
        for vowel in ["a", "e", "i", "o", "u"]{
            newWord = newWord.replacingOccurrences(of: vowel, with: "")
        }
        return newWord
    }
    
}


// MARK: - PLAYGROUND
print(reverseWordsInSentence(sentence: sampleSentence))
