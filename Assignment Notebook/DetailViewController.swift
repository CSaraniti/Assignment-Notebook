//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Carlo Saraniti on 7/8/19.
//  Copyright © 2019 Carlo Saraniti. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var periodTextField: UITextField!
    @IBOutlet weak var assignmentTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    var detailItem: Assignment? {
        didSet {
            configureView()
        }
    }
    func configureView() {
        if let assignment = self.detailItem {
            if periodTextField != nil {
                periodTextField.text = Assignment.period
                assignmentTextField.text = Assignment.assignmentName
                dueDateTextField.text = Assignment.dueDate
                }
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.period = periodTextField.text!
            assignment.assignmentName = assignmentTextField.text!
            assignment.dueDate = dueDateTextField.text!
        }
    }
}
