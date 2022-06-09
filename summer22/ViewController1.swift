//
//  ViewController.swift
//  summer22
//
//  Created by Stéphane Trouvé on 07/06/2022.
//

import UIKit

final class ViewController1: UIViewController {
    static let identifer = "ViewController1"

    @IBOutlet var label: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    var number: Int = 0
    static let idc: Int = 1

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        label.text = String(Int.random(in: 0...10))
        label2.text = String(Int.random(in: 0...10))
        label3.text = String(Int.random(in: 0...10))
    }
}



