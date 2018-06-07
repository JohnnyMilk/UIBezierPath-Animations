//
//  AnimationView.swift
//  UIBezierPathAnimations
//
//  Created by Johnny Wang on 2018/6/7.
//  Copyright © 2018年 Johnny Wang. All rights reserved.
//

import UIKit

class AnimationView: UIView {
    
    override func draw(_ rect: CGRect) {
        // Set up the appearance of the path.
        let newLayer = CAShapeLayer()
        newLayer.path = getPath().cgPath
        newLayer.strokeEnd = 0
        newLayer.lineWidth = 4
        newLayer.strokeColor = UIColor(red: 0.835, green: 0.718, blue: 0.506, alpha: 1.000).cgColor
        newLayer.fillColor = UIColor.clear.cgColor
        layer.addSublayer(newLayer)
        
        // Create the infinity animation
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 5
        animation.autoreverses = true
        animation.repeatCount = .infinity
        newLayer.add(animation, forKey: "line")
    }
    
    private func getPath() -> UIBezierPath {
        let path2Path = UIBezierPath()
        path2Path.move(to: CGPoint(x: 113.15, y: 327.81))
        path2Path.addCurve(to: CGPoint(x: 155.82, y: 294.38), controlPoint1: CGPoint(x: 133.77, y: 319.06), controlPoint2: CGPoint(x: 148, y: 307.91))
        path2Path.addCurve(to: CGPoint(x: 147.68, y: 209.8), controlPoint1: CGPoint(x: 167.55, y: 274.07), controlPoint2: CGPoint(x: 170.56, y: 244.28))
        path2Path.addCurve(to: CGPoint(x: 109.78, y: 160.24), controlPoint1: CGPoint(x: 124.79, y: 175.32), controlPoint2: CGPoint(x: 124.83, y: 179.97))
        path2Path.addCurve(to: CGPoint(x: 98.12, y: 41.01), controlPoint1: CGPoint(x: 67.31, y: 104.54), controlPoint2: CGPoint(x: 76.43, y: 68.88))
        path2Path.addCurve(to: CGPoint(x: 139.61, y: 7), controlPoint1: CGPoint(x: 112.58, y: 22.42), controlPoint2: CGPoint(x: 126.41, y: 11.09))
        path2Path.addCurve(to: CGPoint(x: 104.69, y: 73.34), controlPoint1: CGPoint(x: 112.94, y: 23.88), controlPoint2: CGPoint(x: 101.3, y: 45.99))
        path2Path.addCurve(to: CGPoint(x: 98.12, y: 189.52), controlPoint1: CGPoint(x: 109.78, y: 114.37), controlPoint2: CGPoint(x: 134.12, y: 156.85))
        path2Path.addCurve(to: CGPoint(x: 31.84, y: 235.27), controlPoint1: CGPoint(x: 86.36, y: 200.19), controlPoint2: CGPoint(x: 45.84, y: 213.36))
        path2Path.addCurve(to: CGPoint(x: 47.09, y: 303.86), controlPoint1: CGPoint(x: 17.84, y: 257.18), controlPoint2: CGPoint(x: 26.49, y: 294.14))
        path2Path.addCurve(to: CGPoint(x: 113.15, y: 259.89), controlPoint1: CGPoint(x: 88.81, y: 323.53), controlPoint2: CGPoint(x: 117.68, y: 292.3))
        path2Path.addCurve(to: CGPoint(x: 71.85, y: 195.95), controlPoint1: CGPoint(x: 108.61, y: 227.48), controlPoint2: CGPoint(x: 94.48, y: 211.07))
        path2Path.addCurve(to: CGPoint(x: 38.57, y: 156.85), controlPoint1: CGPoint(x: 49.23, y: 180.83), controlPoint2: CGPoint(x: 42.17, y: 166.17))
        path2Path.addCurve(to: CGPoint(x: 49.72, y: 124.52), controlPoint1: CGPoint(x: 36.17, y: 150.63), controlPoint2: CGPoint(x: 39.89, y: 139.85))
        path2Path.addCurve(to: CGPoint(x: 31.84, y: 227.66), controlPoint1: CGPoint(x: 7.71, y: 158.74), controlPoint2: CGPoint(x: 1.74, y: 193.13))
        path2Path.addCurve(to: CGPoint(x: 31.84, y: 319.14), controlPoint1: CGPoint(x: 76.98, y: 279.46), controlPoint2: CGPoint(x: 67.33, y: 315.08))
        path2Path.miterLimit = 4
        path2Path.stroke()
        
        return path2Path
    }

}
