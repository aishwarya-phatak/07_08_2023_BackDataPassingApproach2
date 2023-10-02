//
//  SecondViewController.swift
//  07_08_2023_BackDataPassingApproach2
//
//  Created by Vishal Jagtap on 02/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var studentFirstNameTextField: UITextField!
    @IBOutlet weak var studentLastNameTextField: UITextField!
    @IBOutlet weak var studentCityTextField: UITextField!
    
    var backDataPassingClosure : ((Student)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        guard let backDataPass = backDataPassingClosure else { return }
        
        let studentFirstName = self.studentFirstNameTextField.text
        let studentLastName = self.studentLastNameTextField.text
        let studentCity = self.studentCityTextField.text
        
        let studentObjectToBePassed = Student(
            studentFirstName: studentFirstName!,
            studentLastName: studentLastName!,
            studentCity: studentCity!)
        
        backDataPass(studentObjectToBePassed)
        
        navigationController?.popViewController(animated: true)
    }
}
