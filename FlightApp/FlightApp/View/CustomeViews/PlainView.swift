//
//  PlainView.swift
//  FlightApp
//
//  Created by Raman Krutsiou on 8/13/21.
//

import UIKit

class AirplainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
    }
    
    required init?(coder Decoder: NSCoder) {
        super.init(coder:Decoder)
        backgroundColor = .clear
    }
   
    
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 200/1.5, y: 60))
        path.addQuadCurve(to: CGPoint(x: 180/1.5, y: 40), controlPoint: CGPoint(x: 200/1.5, y: 40))
        path.addLine(to: CGPoint(x: 130/1.5, y: 40))
        path.addLine(to: CGPoint(x: 110/1.5, y: 10))
        path.addQuadCurve(to: CGPoint(x: 90/1.5, y: 0), controlPoint: CGPoint(x: 100/1.5, y: 0))
        path.addLine(to: CGPoint(x: 105/1.5, y: 40))
        path.addLine(to: CGPoint(x: 40/1.5, y: 40))
        path.addLine(to: CGPoint(x: 27/1.5, y: 30))
        path.addLine(to: CGPoint(x: 20/1.5, y: 30))
        path.addLine(to: CGPoint(x: 40/1.5, y: 60))
        path.addLine(to: CGPoint(x: 105/1.5, y: 60))
        path.addLine(to: CGPoint(x: 90/1.5, y: 100))
        path.addQuadCurve(to: CGPoint(x: 110/1.5, y: 90), controlPoint: CGPoint(x: 100/1.5, y: 100))
        path.addLine(to: CGPoint(x: 130/1.5, y: 60))
        path.addLine(to: CGPoint(x: 200/1.5, y: 60))
        path.close()
        UIColor.systemBlue.set()
        path.fill()
        path.lineWidth = 1
        
    }
}
