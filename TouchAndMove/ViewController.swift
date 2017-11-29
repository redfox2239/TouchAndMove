//
//  ViewController.swift
//  TouchAndMove
//
//  Created by 原田　礼朗 on 2017/11/29.
//  Copyright © 2017年 reo harada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var 犬の画像: UIImageView!

    // タッチし始めたらどうするぅ？
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 背景の白いViewに対しての座標を取得
        if let point = touches.first?.location(in: view) {
            // 犬の画像をタッチした位置に移動する
            犬の画像.center = point
        }
    }
    
}

