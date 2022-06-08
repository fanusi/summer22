//
//  ViewController.swift
//  summer22
//
//  Created by Stéphane Trouvé on 07/06/2022.
//

import UIKit

final class ViewController: UIViewController {
    static let identifer = "ViewController"

    @IBOutlet var label: UILabel!

    var number: Int = 0

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.text = number.description
    }
}


