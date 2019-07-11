//
//  ViewController.swift
//  Belajar_Gesture
//
//  Created by Annisa Nabila Nasution on 11/07/19.
//  Copyright © 2019 Annisa Nabila Nasution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tapGesture: UITapGestureRecognizer!
    
    @IBOutlet var rect: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ke kanan
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipped(_:)))
        rightSwipe.direction = .right
        
        //ke kiri
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipped(_:)))
        leftSwipe.direction = .left
        
        //ke atas
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipped(_:)))
        upSwipe.direction = .up
        
        //ke bawah
        let bottomSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipped(_:)))
        bottomSwipe.direction = .down
        
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(bottomSwipe)
    }


    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        rect.backgroundColor = .blue
    }
    
    
    
    @IBAction func swipped(_ sender: UISwipeGestureRecognizer) {
        if sender.state == .ended{
            switch sender.direction {
            case .right:
                rect.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                break
            case .left:
                rect.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
                break
            case .up:
                rect.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                break
            case .down:
                rect.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
                break
            default:
                break
            }
        }
    }

}

