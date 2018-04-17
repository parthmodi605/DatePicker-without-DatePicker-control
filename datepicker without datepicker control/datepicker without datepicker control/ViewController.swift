//
//  ViewController.swift
//  datepicker without datepicker control
//
//  Created by TOPS on 1/27/18.
//  Copyright © 2018 tops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt2: UITextField!
   
    @IBOutlet weak var txt1: UITextField!
   
    let date = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createDatePicker()
    {
        // format for picker
        date.datePickerMode = .dateAndTime
        
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil,action: #selector(donePressed))
        toolbar.setItems([doneButton], animated: false)
        
        txt1.inputAccessoryView = toolbar
        txt2.inputAccessoryView = toolbar
        
        //assigning datepicker to text field
        txt1.inputView = date
        txt2.inputView = date
    }
       
    func donePressed()
    {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM dd, YYYY"
    txt1.text = formatter.string(from: date.date)
    formatter.dateFormat = "hh:mm a"
    txt2.text = formatter.string(from: date.date)
    self.view.endEditing(true)
 }

}

