//
//  WeatherController.swift
//  HandyNet
//
//  Created by yang on 2017/10/11.
//  Copyright © 2017年 yang. All rights reserved.
//

import UIKit

class WeatherController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestWeather()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func requestWeather() {
        NetWork.share.getDataWith(homeUrl: "https://free-api.heweather.com", path: WEATHERAPI, parama: ["key":USERKEY, "city":"shanghai"], successHandler: { (weather: HeWeather) in
            print(weather.toJSONString() ?? "")
        }, failureHandler: { (error: NSError) in
            print(error)
        })
    }
    
    @IBAction func refreshNetWork(_ sender: UIBarButtonItem) {
        requestWeather()
    }
    
}

