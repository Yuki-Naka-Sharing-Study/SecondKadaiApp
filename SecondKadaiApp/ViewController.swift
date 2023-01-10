//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 仲優樹 on 2023/01/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.placeholder = "名前を入力してください。"
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext" {
            let nextView = segue.destination as! ResultViewController
            nextView.nameData = nameTextField.text!
        }
    }

}
