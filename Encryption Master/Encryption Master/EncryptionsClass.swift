//
//  EncryptionsClass.swift
//  Encryption Master
//
//  Created by Master on 11/06/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import UIKit

class EncryptionsClass: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    class Caesar{
        var messageToEncryption:String = "", key:Int=3
      func Caesar(messageToEncryption: String, shift: Int = 3) {
              var encryptedMessage = ""
              for char in messageToEncryption.unicodeScalars {
                  var unicode = Int(char.value)
                  if unicode > 64 && unicode < 123 {
                      var modifiedShift = shift
                      if unicode >= 65 && unicode <= 90 {
                          while unicode + modifiedShift > 90 {
                              //return to A
                              modifiedShift -= 26
                          }
                      } else if unicode >= 97 && unicode <= 122 {
                          while unicode + modifiedShift > 122 {
                              //return to a
                              modifiedShift -= 26
                          }
                      }
                      unicode += modifiedShift
                  }
                  encryptedMessage += String(UnicodeScalar(unicode)!)
              }
             print(encryptedMessage)
          }
        var description: String {
                    return "messageToEncryption-\(messageToEncryption), key-\(key)"
                }
        
    }

}
