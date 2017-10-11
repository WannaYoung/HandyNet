//
//  Response.swift
//  HandyNet
//
//  Created by yang on 2017/10/11.
//  Copyright © 2017年 yang. All rights reserved.
//

import UIKit
import HandyJSON

class GetData: HandyJSON {
    var url  = ""
    var args = ""
    var origin = ""
    var headers = Header()
    required init() {}
}

class Header: HandyJSON {
    var Host = ""
    var Accept = ""
    var Connection = ""
    required init() {}
}

