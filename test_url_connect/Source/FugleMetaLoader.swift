//
//  FugleMetaLoader.swift
//  test_url_connect
//
//  Created by Nick Chen on 2022/11/14.
//

import Foundation

public class FugleMetaLoader {
    public init() {}
    
    public func load(token: String, symbolId: String, callback: @escaping (Intraday<MetaData>) -> Void) {
        
        guard let url = URL(string: "https://api.fugle.tw/realtime/v0.3/intraday/meta?symbolId=\(symbolId)&apiToken=\(token)") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) {data, response, error in 
            
            guard data != nil else {
                print("data is nil")
                return
            }
            
            let decoder = JSONDecoder()
            
        
            do {
                let decodeData = try decoder.decode(Intraday<MetaData>.self, from: data!)
                print("decode: \(decodeData)")
                DispatchQueue.main.async {
                    callback(decodeData)
                }
            } catch {
                print("decode error: \(error)")
            }
        
        }.resume()
        
        
    }
}
