//
//  ConversionViewController.swift
//  ConversionCalculator
//
//  Created by Roland Oruche on 4/12/19.
//  Copyright © 2019 University of Missouri. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    // Creating an array of struct instancecs
    var convert = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                   Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                   Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                   Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func converterButton(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        
        let celToFar = UIAlertAction(title: convert[0].label, style: .default)
        let farToCel = UIAlertAction(title: convert[1].label, style: .default)
        let miToKm = UIAlertAction(title: convert[2].label, style: .default)
        let kmToMi = UIAlertAction(title: convert[3].label, style: .default)
        
        optionMenu.addAction(celToFar)
        optionMenu.addAction(farToCel)
        optionMenu.addAction(miToKm)
        optionMenu.addAction(kmToMi)
        
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputDisplay.text = convert[0].inputUnit
        outputDisplay.text = convert[0].outputUnit
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
