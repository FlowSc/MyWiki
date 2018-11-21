//
//  CalendarViewController.swift
//  MyWiki
//
//  Created by Seongchan Kang on 21/11/2018.
//  Copyright © 2018 Seongchan Kang. All rights reserved.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController {

    
    let calendarView = FSCalendar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(calendarView)
        
        calendarView.delegate = self
        calendarView.snp.makeConstraints { (make) in
            make.edges.equalTo(view.safeArea.edges)
        }
        // Do any additional setup after loading the view.
    }


}

extension CalendarViewController:FSCalendarDelegate {
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        print(date)
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController1") as? MainViewController else {return}
        
        vc.selectedDate = date
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
