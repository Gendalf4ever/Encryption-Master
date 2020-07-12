//
//  ViewController.swift
//  Encryption Master
//
//  Created by Master on 31/01/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import UIKit

var someshit:String = "0"

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

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    var Encryptions = ["Двойная перестановка","Одиночная перестановка","Простая перестановка","Магический квадрат","Полибианский квадрат","Шифр Цезаря","Шифр Гронсфельда","Многоалфавитная замена"]
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Encryptions.count
      }
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return Encryptions[row]
      }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        someLabel.text = Encryptions[row]
        someshit = Encryptions[row]
    }
    @IBOutlet weak var someLabel: UILabel!
 @IBOutlet weak var Key: UITextField!
    
    @IBOutlet weak var somePicker: UIPickerView!


    override func viewDidLoad() {
        super.viewDidLoad()
//        textFieldConfigure()
    somePicker.delegate=self
//      somePicker.dataSoure=self
      
    }
    
//    private func textFieldConfigure() {
//        Message.delegate=self
//        Key.delegate=self
//    }
    @IBOutlet weak var Message: UITextField?
  
    @IBOutlet weak var EncryptedMessage: UITextField?
    
    @IBAction func Button(_ sender: UIButton) {
//        let message = String(describing:Message.text)
//        var message = Message.text
//        var arrayMessage:[String]=[(Message?.text ?? "something went wrong")]
//        print(arrayMessage)
        guard let text = Message?.text else {return}
        guard let key=Key?.text else {return}
        switch someshit{
        case "Двойная перестановка":
//             Key.isHidden=true
            print(1)
        case "Одиночная перестановка":
//             Key.isHidden=true
             print(2)
        case "Простая перестановка":
//             Key.isHidden=true
             print(3)
            case "Магический квадрат":
//                 Key.isHidden=true
             print(4)
            case "Полибианский квадрат":
//                 Key.isHidden=true
             print(5)
            case "Шифр Цезаря":
             print(6)
            case "Шифр Гронсфельда":
//                Key.isHidden=false
                print(key)
//                for chary in key {
//                    print("Found character: \(chary)")
//                }
//                for char in text {
//                    print("Found character: \(char)")
//                }
                print(text.count)
            case "Многоалфавитная замена":
//                 Key.isHidden=true
             print(8)
        default:
            print("none")
        }

    }
    
}
//extension UIViewController:UITextFieldDelegate{
//
//    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder() // почему не работает?
//        return true
//    }
//}
