//
//  CodableBundleExtention.swift
//  MyCity
//
//  Created by Роман Замолотов on 02.06.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //locate json
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate \(file) in bundle")
        }
        //create data property
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) from bundle")
        }
        //create a decoder
        let decoder = JSONDecoder()
        //create property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("dailed to decode \(file) from bundle")
        }
        //return redy to use data
        return loaded
    }
}
