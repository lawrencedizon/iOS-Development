//
//  ViewController.swift
//  DoubleTapFeature
//
//  Created by Lawrence Dizon on 7/27/20.
//  Copyright © 2020 Lawrence Dizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        imageView.isUserInteractionEnabled = true
        imageView.image = UIImage(named: "image")
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width)
        imageView.center = view.center
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didDoubeTap(_:)))
        
        tapGesture.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tapGesture)
        
        
    }
    
    @objc private func didDoubeTap(_ gesture: UITapGestureRecognizer){
        guard let gestureView = gesture.view else {
            return
        }
        
        // create a heart, add it, show with fade, hide with fade, remove heart.
        
        let heart = UIImageView(image: UIImage(systemName: "heart.fill"))
        let size = gestureView.frame.size.width/4
        heart.frame = CGRect(x: (gestureView.frame.size.width-size)/2, y: (gestureView.frame.size.height-size)/2,
                             width: size,
                             height: size)
        
        heart.tintColor = .white
        heart.alpha = 0
      
        gestureView.addSubview(heart)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
            UIView.animate(withDuration: 1, animations: {
                heart.alpha = 1
            }, completion: { done in
                if done {
                    heart.removeFromSuperview()
                }
            })
        })
    }


}


