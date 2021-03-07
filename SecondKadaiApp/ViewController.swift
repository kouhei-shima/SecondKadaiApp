//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 島浩平 on 2021/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var namename: UITextField!
    var namenameString = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているnameinputに文字列を代入して渡す
        namenameString = namename.text!
        resultViewController.nameinput = namenameString
       }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

