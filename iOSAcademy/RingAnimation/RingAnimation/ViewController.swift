//
//  ViewController.swift
//  RingAnimation
//
//  Created by Lawrence Dizon on 1/25/21.
//

import UIKit

class ViewController: UIViewController {
    let shape = CAShapeLayer()
    
    //anonymous closure pattern
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Calorie Goal "
        label.font = .systemFont(ofSize: 36, weight: .light)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
        
        let circlePath = UIBezierPath(arcCenter: view.center, radius: 150, startAngle: -(.pi/2), endAngle: 2 * .pi, clockwise: true)
        
        let trackShape = CAShapeLayer()
        trackShape.path = circlePath.cgPath
        trackShape.fillColor = UIColor.clear.cgColor
        trackShape.lineWidth = 15
        trackShape.strokeColor = UIColor.lightGray.cgColor
        view.layer.addSublayer(trackShape)
        
        shape.fillColor = UIColor.clear .cgColor
        shape.path = circlePath.cgPath
        shape.lineWidth = 15
        shape.strokeColor = UIColor.blue.cgColor
        shape.strokeEnd = 0
        view.layer.addSublayer(shape)
        
        let button = UIButton(frame: CGRect(x: 25, y: view.frame.size.height - 100, width: view.frame.size.width - 50, height: 50))
        
        view.addSubview(button)
        
        button.setTitle("Animate", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton(){
        //Animate
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 1
        animation.duration = 3
        animation.isRemovedOnCompletion = false
        animation.fillMode = .forwards
        shape.add(animation, forKey: "animation")
    }


}

