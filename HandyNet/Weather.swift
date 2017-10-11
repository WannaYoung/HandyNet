//
//  Weather.swift
//  HandyNet
//
//  Created by yang on 2017/10/11.
//  Copyright © 2017年 yang. All rights reserved.
//

import UIKit
import HandyJSON

class HeWeather: HandyJSON {
    var HeWeather5 = [Weather]()
    required init() {}
}

class Weather: HandyJSON {
    var status = ""
    var aqi = Aqi()
    var basic = Basic()
    var now = Now()
    var daily_forecast = [Forecast]()
    var hourly_forecast = [Forecast]()
    var suggestion = Suggestion()
    required init() {}
}

class Aqi: HandyJSON {
    var city = AqiCity()
    required init() {}
}

class AqiCity: HandyJSON {
    var aqi = ""
    var co = ""
    var no2 = ""
    var o3 = ""
    var pm10 = ""
    var pm25 = ""
    var qlty = ""
    var so2 = ""
    required init() {}
}

class Basic: HandyJSON {
    var city = ""
    var cnty = ""
    var id = ""
    var lat = ""
    var lon = ""
    var update = Update()
    required init() {}
}

class Update: HandyJSON {
    var loc = ""
    var utc = ""
    required init() {}
}


class Now: HandyJSON {
    var fl = ""
    var hum = ""
    var pcpn = ""
    var pres = ""
    var tmp = ""
    var vis = ""
    var wind = Wind()
    var cond = Condition()
    required init() {}
}

class Forecast: HandyJSON {
    var date = ""
    var hum = ""
    var pcpn = ""
    var pop = ""
    var pres = ""
    var uv = ""
    var vis = ""
    var astro = Astro()
    var wind = Wind()
    var cond = Condition()
    var tmp = Temperature()
    required init() {}
}

class Temperature: HandyJSON {
    var max = ""
    var min = ""
    required init() {}
}

class Astro: HandyJSON {
    var mr = ""
    var ms = ""
    var sr = ""
    var ss = ""
    required init() {}
}

class Condition: HandyJSON {
    var code = ""
    var txt = ""
    var code_d = ""
    var code_n = ""
    var txt_d = ""
    var txt_n = ""
    required init() {}
}

class Wind: HandyJSON {
    var deg = ""
    var dir = ""
    var sc = ""
    var spd = ""
    required init() {}
}

class Suggestion: HandyJSON {
    var air = SugDetail()
    var comf = SugDetail()
    var cw = SugDetail()
    var drsg = SugDetail()
    var flu = SugDetail()
    var sport = SugDetail()
    var trav = SugDetail()
    var uv = SugDetail()
    required init() {}
}

class SugDetail: HandyJSON {
    var brf = ""
    var txt = ""
    required init() {}
}
