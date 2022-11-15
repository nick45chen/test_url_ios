//
//  Intraday.swift
//  test_url_connect
//
//  Created by Nick Chen on 2022/11/14.
//

import Foundation

public struct Intraday<T: Codable>: Codable {
    let apiVersion: String
    let data: T
}

public struct MetaData: Codable {
    let info: Info
    let meta: Meta
}
