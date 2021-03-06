//
//  ViewController.swift
//  DatePicker
//
//  Created by 오현택 on 2021/02/28.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.selectTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var nowTime: UILabel!
    @IBOutlet var selectedTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
    }
    @IBAction func selectTime(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        selectedTime.text = "선택 시간:" + formatter.string(from: datePickerView.date)
    }
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        nowTime.text = "현재 시간:" + formatter.string(from: date as Date)
    }

}

