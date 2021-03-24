//
//  ViewController.swift
//  Programmatic AutoLayout
//
//  Created by Lawrence Dizon on 3/23/21.
//

import UIKit

class ViewController: UIViewController {

    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .link
        return myView
    }()
    
    private let secondView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .red
        return myView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        view.addSubview(secondView)
        addConstraints()
    }
    
    //MARK: - NSLayoutConstraint Class
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        //Add
        
        //Pin myView to entire screen and respects safeArea
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        
        //Second UIView
//        constraints.append(secondView.leadingAnchor.constraint(
//                            equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 120))
//        constraints.append(secondView.trailingAnchor.constraint(
//                            equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 120))
//        constraints.append(secondView.topAnchor.constraint(
//                            equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120))
//        constraints.append(secondView.bottomAnchor.constraint(
//                            equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 120))
        
        // Constraint for width and height
        constraints.append(secondView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(secondView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        
        //Constraint center horizontally and vertically
        constraints.append(secondView.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        constraints.append(secondView.centerXAnchor.constraint(equalTo: myView.centerXAnchor))
        
        //Activate (applying)
        NSLayoutConstraint.activate(constraints)
    }


}

