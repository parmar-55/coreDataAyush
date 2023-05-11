//
//  ViewController.swift
//  CoreDataAyush
//
//  Created by mac on 29/03/23.
//

import UIKit

class ViewController: UIViewController , DataPass {
   
    

    @IBOutlet weak var txtname: UITextField!
    
    @IBOutlet weak var txtaddress: UITextField!
    
    @IBOutlet weak var txtcity: UITextField!
    
    @IBOutlet weak var txtmobile: UITextField!
    var i = Int()
    var isupdate = Bool()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showButtonClick(_ sender: Any) {
        let listVC = self.storyboard?.instantiateViewController(withIdentifier: "listViewController") as! listViewController
        listVC.delegate = self
        self.navigationController?.pushViewController(listVC, animated: true)
    }
    
    @IBAction func ButtonSaveClick(_ sender: Any) {
        var dict = ["name":txtname.text, "address":txtaddress.text , "city":txtcity.text , "mobile":txtmobile.text]
        if isupdate{
            databasehelper.sharinstance.editData(object: dict as! [String:String], i: i)
        }
        else
        {
            databasehelper.sharinstance.save(object: dict as! [String : String])

        }
    }
    func data(object: [String : String], index: Int, isEdit: Bool) {
        txtname.text = object["name"]
        txtaddress.text = object["address"]
        txtcity.text = object["city"]
        txtmobile.text = object["mobile"]
        i = index
        isupdate = isEdit
    }
}

