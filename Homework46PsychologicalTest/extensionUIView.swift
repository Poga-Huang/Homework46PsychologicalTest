//
//  extensionUIView.swift
//  Homework46PsychologicalTest
//
//  Created by 黃柏嘉 on 2021/12/27.
//

import Foundation
import UIKit

extension UIView{
    func makeGradientLayer(view:UIView){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemBlue.cgColor,UIColor.systemGreen.cgColor]
        gradientLayer.locations = [0,0.8,1]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
