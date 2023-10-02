//
//  ViewController.swift
//  07_08_2023_BackDataPassingApproach2
//
//  Created by Vishal Jagtap on 02/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stduentFirstNameLabel: UILabel!
    @IBOutlet weak var studentLastNameLabel: UILabel!
    @IBOutlet weak var studentCityLabel: UILabel!
    private let secondViewControllerIdentifier : String = "SecondViewController"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func btnMoveToSVC(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: secondViewControllerIdentifier) as? SecondViewController
        secondViewController?.backDataPassingClosure = {
            (student) in
            self.stduentFirstNameLabel.text = student.studentFirstName
            self.studentLastNameLabel.text = student.studentLastName
            self.studentCityLabel.text = student.studentCity
        }
        
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
}
