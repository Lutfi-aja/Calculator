//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 11/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var input2: UITextField!
    
    @IBOutlet weak var hasil: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnTambah(_ sender: UIButton) {
        hitung(atitmatik: "+")
    }
    
    @IBAction func btnKurang(_ sender: UIButton) {
        hitung(atitmatik: "-")
    }
    
    @IBAction func btnKali(_ sender: UIButton) {
        hitung(atitmatik: "*")
    }
    
    @IBAction func btnBagi(_ sender: UIButton) {
        hitung(atitmatik: "/")
    }
    
    func hitung(atitmatik: String){
        if input1.text == "" || input2.text == ""{
            hasil.text = "Isi kolom terlebih dahulu"
        }else{
            
            let wan1 = Double(input1.text!)
            let cuh2 = Double(input2.text!)
            var jumlah: Double?
            switch atitmatik {
            case "+":
                jumlah = wan1! + cuh2!
            case "-":
                jumlah = wan1! - cuh2!
            case "*":
                jumlah = wan1! * cuh2!
            case "/":
                jumlah = wan1! / cuh2!
            default:
                break
            }
            hasil.text = String(jumlah!)
        }
    }
}

