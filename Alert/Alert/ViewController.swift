//
//  ViewController.swift
//  Alert
//
//  Created by 오현택 on 2021/03/03.
//

import UIKit

class ViewController: UIViewController {
    let imgOn = UIImage(named: "1.png")
    let imgOff = UIImage(named: "2.png")
    let imgRemove = UIImage(named: "3.png")
    
    var isImgOn = true
    @IBOutlet var lampImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }
    @IBAction func btnLampOn(_ sender: UIButton) {
        if (isImgOn==true) {
            let imgOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            
            imgOnAlert.addAction(onAction)
            present(imgOnAlert, animated: true, completion: nil)
        } else {
            lampImg.image = imgOn
            isImgOn = true
        }
    }
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isImgOn {
            let imgOffAlert = UIAlertController(title: "이미지 전환", message: "이미지를 전환하겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default, handler: {
                ACTION in self.lampImg.image = self.imgOff
                self.isImgOn=false
            })
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            imgOffAlert.addAction(offAction)
            imgOffAlert.addAction(cancelAction)
            
            present(imgOffAlert, animated: true, completion: nil)
        }
    }
    @IBAction func btnDelete(_ sender: UIButton) {
        let imgRemoveAlert = UIAlertController(title: "이미지 제거", message: "이미지를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "아니오, 끝니다(off).", style: UIAlertAction.Style.destructive, handler: {
            ACTION in self.lampImg.image = self.imgOff
            self.isImgOn = true
        })
        
        let onAction = UIAlertAction(title: "아니오, 켭니다(on)", style: UIAlertAction.Style.destructive, handler: {
            ACTION in self.lampImg.image = self.imgOn
            self.isImgOn = false
        })
        
        let removeAction = UIAlertAction(title: "네, 제거합니다.", style: UIAlertAction.Style.destructive, handler: {
            ACTION in self.lampImg.image = self.imgRemove
            self.isImgOn = false
        })
        
        
        imgRemoveAlert.addAction(offAction)
        imgRemoveAlert.addAction(onAction)
        imgRemoveAlert.addAction(removeAction)
        present(imgRemoveAlert, animated: true, completion: nil)
    }
    

}

