//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Mokshagna Balabhadrapatruni on 12/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year =  yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = """
        My name is \(firstNameTextField.text!) \(lastNameTextField.text!).
        I am in my \(year!) year at \(schoolNameTextField.text!).
        I own \(numberOfPetsLabel.text!) pets and it is \(morePetsSwitch.isOn) that i want more pets.
        """
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default,handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true,completion: nil)
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

