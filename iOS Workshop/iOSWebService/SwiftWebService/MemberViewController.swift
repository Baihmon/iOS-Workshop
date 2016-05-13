//
//  MemberViewController.swift
//  SwiftWebService
//
//  Created by admin on 5/13/2559 BE.
//  Copyright © 2559 Samit Koyom. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController {

    @IBOutlet weak var txtFullnameResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let prefs:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        let fullname = prefs.stringForKey("LOGIN_FULLNAME")
        txtFullnameResult.text = fullname
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
