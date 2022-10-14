//
//  APIExtensions.swift
//  WheaterX
//
//  Created by Fernando dos Santos Motta on 07/08/22.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/2.5/onecall?lang=pt_br&"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)appid=\(API.key)&lat=\(lat)&lon=\(lon)&units=metric"
    }
}
