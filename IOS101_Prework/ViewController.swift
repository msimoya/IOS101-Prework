//
//  ViewController.swift
//  IOS101_Prework
//
//  Created by Menard Simoya(MacBook) on 8/25/25.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var displayImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.isUserInteractionEnabled = true
        roleLabel.isUserInteractionEnabled = true
        
       

        let roleTap = UITapGestureRecognizer(target: self, action: #selector(showComputer))
        roleLabel.addGestureRecognizer(roleTap)
    }
    

    @objc func showComputer() {
        displayImageView.image = UIImage(named: "roleLabel")
    }

    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }

   
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
}
