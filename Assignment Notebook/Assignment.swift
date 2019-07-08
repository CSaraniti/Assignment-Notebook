//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Carlo Saraniti on 7/8/19.
//  Copyright © 2019 Carlo Saraniti. All rights reserved.
//

import UIKit

class Assignment: Codable {
    var period: String
    var assignmentName: String
    var dueDate: String
    
    init(period: String, assignmentName: String, dueDate: String) {
        self.period = period
        self.assignmentName = assignmentName
        self.dueDate = dueDate
    }
}
