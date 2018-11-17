//
//  ViewController.swift
//  Window-shopper
//
//  Created by Mohammed Mohsin Sayed on 11/4/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var priceTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageTextField.text = ""
        priceTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(UIColor.white, for: .normal)
        calculateButton.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calculateButton
        priceTextField.inputAccessoryView = calculateButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    @objc func calculate() {
        if let wageText = wageTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                
                view.endEditing(true)
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

