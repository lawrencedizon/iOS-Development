//
//  ViewController.swift
//  CalendarApp
//
//  Created by Lawrence Dizon on 7/6/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate {
    var calendar = FSCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        calendar.frame = CGRect(x: 0, y: 100, width: view.frame.size.width, height: view.frame.size.width)
        view.addSubview(calendar)
    }
    
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY at h:mm a"
        let string = formatter.string(from: date)
        
        print("\(string)")
    }


}

