//
//  ViewController.swift
//  Rescue Operation
//
//  Created by 林郁琦 on 2024/1/7.
//

import UIKit

class ViewController: UIViewController {
    
    //把slider、太空船、太空人拉outlet
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var spaceshuttle: UIImageView!
    
    @IBOutlet weak var astronaut: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //加入背景
        let backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 852, height: 393))
        backgroundImage.image = UIImage(named: "universe")
        backgroundImage.contentMode = .scaleToFill
        
        //把背景設定在最底層
        view.insertSubview(backgroundImage, at: 0)
        
        //加入太空船、太空人圖片
        astronaut.frame = CGRect(x: 613, y: 69, width: 198, height: 106)
        view.addSubview(astronaut)
        let astronautAnimatedView = UIImage.animatedImageNamed("animated-astronaut-image-0013-", duration: 2)
        astronaut.image = astronautAnimatedView
        
        spaceshuttle.frame = CGRect(x: 79, y: 210, width: 177, height: 162)
    }
    
    //拉IBAction執行slider
    @IBAction func moveSlider(_ sender: UISlider) {
        
        //設定太空船、太空人位置移動
        spaceshuttle.frame.origin = CGPoint(x: CGFloat(79 + 189 * sender.value), y: CGFloat(210 - 48 * sender.value))
        astronaut.frame.origin = CGPoint(x: CGFloat(613 - 210 * sender.value), y: 69 + CGFloat(74 * sender.value))
        
        //設定太空船、太空人靠近時透明度
        spaceshuttle.alpha = CGFloat(sender.value * 1)
        astronaut.alpha = CGFloat(sender.value * 1)
    }
    
}

