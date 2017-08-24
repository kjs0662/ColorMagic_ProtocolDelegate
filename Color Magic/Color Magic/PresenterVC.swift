//
//  PresenterVC.swift
//  Color Magic
//
//  Created by 김진선 on 2017. 8. 23..
//  Copyright © 2017년 김진선. All rights reserved.
//

import UIKit

class PresenterVC: UIViewController, colorTransferDelegate {

    @IBOutlet weak var colorNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func userPickColor(color: UIColor, colorName: String) {
        view.backgroundColor = color
        colorNameLabel.text = colorName
        colorNameLabel.textColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToChooseColor" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else {
                return
            }
            colorPickerVC.delegate = self
        }
    }

}

