//
//  ViewController.swift
//  TextControlsofHani
//
//  Created by iOS Training on 12/4/18.
//  Copyright © 2018 iOS Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFieldUserName: UITextField!
    
    @IBOutlet weak var TextViewDescription: UITextView!
    
    @IBOutlet weak var LabelDetails: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        txtFieldUserName.delegate = self
        TextViewDescription.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func OnClickofButton(_ sender: Any) {
        self.view.endEditing(true)
        let formattedString = "Hey you entered text in TextField is - \(String(txtFieldUserName.text ?? "")) \n Hey you enterred text in TextView is - \(String(TextViewDescription.text))"
        LabelDetails.text = formattedString
    }
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Inside textFieldShouldBeginEditing")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
         print("Inside textFieldDidBeginEditing")
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Inside shouldChangeCharactersIn range")
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
         print("Inside textFieldShouldEndEditing")
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("Inside textFieldDidEndEditing")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ViewController: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        print("Inside textViewShouldBeginEditing")
        return true
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("Inside textViewDidBeginEditing")
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print("Inside shouldChangeTextIn range")
           return true
    }
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        print("Inside textViewShouldEndEditing")
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        print("Inside textViewDidEndEditing")
    }
    
    func textViewDidChange(_ textView: UITextView) {
         print("Inside textViewDidChange")
    }
    
    func textViewDidChangeSelection(_ textView: UITextView) {
        print("Inside textViewDidChangeSelection")
        
    }
}

