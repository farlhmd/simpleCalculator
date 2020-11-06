//
//  ViewController.swift
//  latihanConstraint
//
//  Created by Farhan Ilhamdi on 06/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfAngkaPertama: UITextField!
    @IBOutlet weak var tfAngkaKedua: UITextField!
    @IBOutlet weak var btnHitung: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var lbHasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnHitung.layer.cornerRadius = 10
        btnHitung.clipsToBounds = true
        btnReset.layer.cornerRadius = 10
        btnReset.clipsToBounds = true
    }

    @IBAction func btnHitungOnClick(_ sender: Any) {
        lbHasil.text = "0"
        if let angkaPertama = Double(tfAngkaPertama.text ?? "0") , let angkaKedua = Double(tfAngkaKedua.text ?? "0") {
            let hasilPerkalian = angkaPertama * angkaKedua
            lbHasil.text = "\(Int(hasilPerkalian))"
        }
    }
    @IBAction func btnResetOnClick(_ sender: Any) {
        tfAngkaPertama.text = ""
        tfAngkaKedua.text = ""
        lbHasil.text = "0"
    }
    
}


