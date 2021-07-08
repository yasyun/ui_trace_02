//
//  ViewController.swift
//  practice4
//
//  Created by Sakai Syunya on 2021/07/08.
//  Copyright © 2021 Sakai Syunya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var button: Custombutton!
    @IBAction func continueButton(_ sender: Any) {
        let nextVC = storyboard?.instantiateViewController(identifier: "next")
        nextVC?.modalPresentationStyle = .fullScreen
        self.present(nextVC!, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        // グラデーションレイヤーの領域の設定
        gradientLayer.frame = CGRect(x: 0, y: 0, width: 375, height: 200)
        // グラデーションカラーの設定
        gradientLayer.colors = [UIColor(red: 235/255, green: 69/255, blue: 136/255, alpha: 1).cgColor,
                                UIColor(red: 234/255, green: 54/255, blue: 183/255, alpha: 1).cgColor]
        // 上から下へグラデーション向きの設定
        gradientLayer.startPoint = CGPoint.init(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint.init(x: 0.5, y:1.0)
        // ビューにグラデーションレイヤーを追加
        button.layer.insertSublayer(gradientLayer, at:0)
    }


}

