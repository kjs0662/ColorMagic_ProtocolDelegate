//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by 김진선 on 2017. 8. 23..
//  Copyright © 2017년 김진선. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate : colorTransferDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func colorController(sender: UIButton) {
        delegate?.userPickColor(color: sender.backgroundColor!, colorName: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)
        
        
    }



}
