//
//  MoveDogViewController.swift
//  TouchAndMove
//
//  Created by 原田　礼朗 on 2017/11/29.
//  Copyright © 2017年 reo harada. All rights reserved.
//

import UIKit

class MoveDogViewController: UIViewController {

    @IBOutlet weak var 犬の画像: UIImageView!
    // タッチした座標
    var touchPoint = CGPoint(x: 0, y: 0)

    // タッチしたらどうするぅ？
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("タッチしたよ")
        // 背景の白いViewに対しての座標を取得する
        if let point = touches.first?.location(in: view) {
            touchPoint = point
        }
    }
    
    // タッチした後に動かしたらどうするぅ？
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("タッチして動かしたよ")
        // 背景の白いViewに対しての指が動いた先の座標を取得する
        if let point = touches.first?.location(in: view) {
            // 犬の画像を移動させる計算
            犬の画像.frame.origin.x += point.x - touchPoint.x
            犬の画像.frame.origin.y += point.y - touchPoint.y
            // つぎの移動に備えて、touchPointを更新
            touchPoint = point
        }
    }
    
    // 画面からタッチを離した時どうするぅ？
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("タッチ離したよ")
    }
}
