//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by muhammet mücahit bulut on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? vs. as!
        //as? storedName i yapabilirsen string olarak cevir (storedName i string objesi gibi kaydet
        //as! storedName i kesin yuzde yuz string olarak cevirebilirsin. Bu projede bunu yapmak cok mantikli olmaz. Aslinda bunun mantikli yolu bu sekilde yapmak degil, if let ile yapmaktir daha guvenli olur.
        //nameLabel.text = storedName as? String
        //yapabilirsen diye if let olusturuyorum
         //storedName i String olarak kaydedebilirsen eger myName diye bir degisken olustur.
        
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        
        if let newBirthday = storedName as? String{
            birthdayLabel.text = newBirthday
        }
        
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
       
        
    
        //UserDefaults.standard.synchronize() -> senkronize eder. Internette karsimiza cikabilir, artik kullanilmiyor
        //.set dememiz ve neyi kaydedecegini soylememiz yeterlidir.
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
        
        
    }
    
}

