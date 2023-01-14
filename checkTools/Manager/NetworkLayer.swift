//
//  NetworkLayer.swift
//  checkTools
//
//  Created by Markel Juaristi on 14/1/23.
//

import Foundation
enum NetworkError: Error {
    case malformedURL
    case noData
    case statusCode(code: Int?)
    case decodingFailed
    case unKnown 
}

final class NetworkLayer {
    static let shared = NetworkLayer()
    
    /*video 4 3:12:59*/
    
    
    
}
