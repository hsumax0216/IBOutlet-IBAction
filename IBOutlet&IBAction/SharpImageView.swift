//
//  SharpImageView.swift
//  IBOutlet&IBAction
//
//  Created by t450sMAC on 2019/4/8.
//  Copyright © 2019 VMwareMojave. All rights reserved.
//

import UIKit

class SharpImageView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.width, y: 0))
        path.addLine(to: CGPoint.zero)
        path.addLine(to: CGPoint(x:0, y: bounds.height))
        path.addLine(to: CGPoint(x: bounds.width * 0.8, y: bounds.height * 0.9))
        path.addLine(to: CGPoint(x: bounds.width, y: bounds.height * 0.95))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        layer.mask = shapeLayer
    }    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
