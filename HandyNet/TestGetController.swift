//
//  ViewController.swift
//  HandyNet
//
//  Created by yang on 2017/10/11.
//  Copyright © 2017年 yang. All rights reserved.
//

import UIKit

class TestGetController: UIViewController {
    
    @IBOutlet weak var responseText: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testGetMethod()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func testGetMethod() {
        NetWork.share.getDataWith(path: GETAPI, parama: [:], successHandler: { (getData: GetData) in
            self.responseText.text = "\(getData.headers.Host)\n\(getData.headers.Accept)\n\(getData.headers.Connection)\n"
        }, failureHandler: { (error: NSError) in
            print(error)
        })
    }
    
    @IBAction func refreshNetWork(_ sender: UIBarButtonItem) {
        testGetMethod()
    }

}

