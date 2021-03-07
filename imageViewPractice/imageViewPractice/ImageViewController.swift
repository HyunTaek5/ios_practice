//
//  ViewController.swift
//  imageViewPractice
//
//  Created by 오현택 on 2021/02/28.
//

import UIKit

class ImageViewController: UIViewController {
    
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var resizeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "charGlass.png")
        imgOff = UIImage(named: "charNoGlass.png")
        
        
        imageView.image = imgOff
    }

    @IBAction func resizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0
        var newWidth: CGFloat, newHeight: CGFloat
        
        if (isZoom) {
            newWidth = imageView.frame.width/scale
            newHeight = imageView.frame.height/scale
            resizeBtn.setTitle("확대", for: .normal)
        } else {
            newWidth = imageView.frame.width*scale
            newHeight = imageView.frame.height*scale
            resizeBtn.setTitle("축소", for: .normal)
        }
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func glassOnSwitch(_ sender: UISwitch) {
        if sender.isOn {
            imageView.image = imgOn
        } else {
            imageView.image = imgOff
        }
    }
}
