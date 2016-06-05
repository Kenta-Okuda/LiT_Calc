//
//  ViewController.swift
//  calc
//
//  Created by Kenta Okuda on 6/5/16.
//  Copyright © 2016 Kenta Okuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var number: Int = 0
    var number2: Int = 0
    var oparation: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initCalc() {
        number = 0
        number2 = 0
        oparation = 0
        label.text = "0"
    }
    
    func disp(num:Int) {
        number = number * 10
        number += num
        label.text = String(number)
    }
    
    
    @IBAction func select0() {
        disp(0)
    }
    @IBAction func select1() {
        disp(1)
    }
    @IBAction func select2() {
        disp(2)
    }
    @IBAction func select3() {
        disp(3)
    }
    @IBAction func select4() {
        disp(4)
    }
    @IBAction func select5() {
        disp(5)
    }
    @IBAction func select6() {
        disp(6)
    }
    @IBAction func select7() {
        disp(7)
    }
    @IBAction func select8() {
        disp(8)
    }
    @IBAction func select9() {
        disp(9)
    }
   
    @IBAction func plus() {
        label.text = "0"
        oparation = 1
        number2 = number
        number = 0
    }
    
    @IBAction func minus() {
        label.text = "0"
        oparation = 2
        number2 = number
        number = 0
    }
    
    @IBAction func waru() {
        label.text = "0"
        oparation = 3
        number2 = number
        number = 0
    }
    
    @IBAction func kakeru() {
        label.text = "0"
        oparation = 4
        number2 = number
        number = 0
    }
    
    @IBAction func equal() {
        
#if true
        switch(oparation) {
            case 1: 
                label.text = String(number2 + number)
                number = number2 + number
            case 2:
                label.text = String(number2 - number)
                number = number2 - number
            case 3:
                label.text = String(number2 / number)
                number = number2 / number
            case 4:
                label.text = String(number2 * number)
                number = number2 * number
            default:
                label.text = "Error"
                initCalc()
        }
#endif
 
#if false
        if (oparation == 1) {
            label.text = String(number2 + number)
            number = number2 + number
        } else if (oparation == 2) {
            label.text = String(number2 - number)
            number = number2 - number
        } else if (oparation == 3) {
            label.text = String(number2 / number)
            number = number2 / number
        } else if (oparation == 4) {
            label.text = String(number2 * number)
            number = number2 * number
        } else {
            label.text = "Error"
            initCalc()
        }
#endif
        
    }

    @IBAction func clear() {
        initCalc()
    }

}

