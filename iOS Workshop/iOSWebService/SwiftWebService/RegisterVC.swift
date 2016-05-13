//
//  RegisterVC.swift
//  SwiftWebService
//
//  Created by Samit Koyom on 14/1/59.
//  Copyright © พ.ศ. 2559 Samit Koyom. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class RegisterVC: UIViewController {

    @IBOutlet weak var txtFirstname: UITextField!
    @IBOutlet weak var txtLastname: UITextField!
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerTapped(sender: UIButton) {
        // รับค่าจากฟอร์ม
        let firstname = txtFirstname.text!
        let lastname = txtLastname.text!
        let username = txtUsername.text!
        let password = txtPassword.text!
        
        if firstname == "" || lastname == "" || username == "" || password == ""{
            // สร้าง Alert View เตือน
            let alertView:UIAlertView = UIAlertView()
            alertView.title = "Invalid Data Input"
            alertView.message = "กรุณาป้อนข้อมูลให้ครบก่อน"
            alertView.delegate = self
            alertView.addButtonWithTitle("OK")
            alertView.show()
        
        }
        else{
           
            
            // กำหนด parameters
            let parameters = ["firstname":firstname,
                              "lastname":lastname,
                              "username":username,
                              "password":password]
            
            // ส่งข้อมูลแบบ POST ไปยัง Server
            Alamofire.request(.POST, "http://localhost/ioswebapi/addpersonal.php", parameters: parameters).responseJSON { (responseData) in
                
                switch responseData.result{
                    case .Success:
                        
                        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
                        
                        prefs.setObject(firstname+" "+lastname, forKey: "LOGIN_FULLNAME")
                        prefs.synchronize()
                        
                        
                        let alert = UIAlertController(
                            title: "Insert Message",
                            message: "ลงทะเบียนเรียบร้อย",
                            preferredStyle: UIAlertControllerStyle.Alert)
                        
                        alert.addAction(UIAlertAction(
                            title: "Ok",
                            style: UIAlertActionStyle.Default,
                            handler: {(action:UIAlertAction!) in
                            //print("Insert Data Success")
                                self.performSegueWithIdentifier("gotoMember", sender: nil)
                        
                    
                        }))
                        
                        self.presentViewController(alert, animated: true, completion: nil)
                        
                    break
                    
                case .Failure(let error):
                    print(error)
                    
                
                }
            }
        
        }
    }

    @IBAction func gotoLogin(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}








