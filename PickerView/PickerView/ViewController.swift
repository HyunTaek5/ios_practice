//
//  ViewController.swift
//  PickerView
//
//  Created by 오현택 on 2021/03/01.
//

import UIKit

class ViewController: UIViewController, UIDocumentPickerDelegate, UIPickerViewDataSource {
    
    let MAX_ARRAY_NUM = 2
    let PICKER_VIEW_COLUMN = 1
    let PICKER_VIEW_HEIGHT: CGFloat = 80
    var imageArray = [UIImage?]()
    var imageFileName = ["1.png", "2.png"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var ImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        ImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x:0, y:0, width: 100, height: 150)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return PICKER_VIEW_HEIGHT
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectedRow row: Int, inComponent component: Int){
        ImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
}

                                                                                         
