//
//  WeatherData.swift
//  MyWeather
//
//  Created by Валентина Евдокимова on 02.07.2022.
//

import Foundation

struct Welcome: Decodable {
    let main: Main
    let visibility: Int
    let sys: Sys
    let name: String
    let weather : [Weathers]
}


// MARK: - Main
struct Main: Decodable {
    let temp, feelsLike: Double

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}

// MARK: - Sys
struct Sys: Decodable {
    let country: String
}

struct Weathers: Decodable {
    let id: Int
}
