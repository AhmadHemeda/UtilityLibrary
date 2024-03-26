//
//  File.swift
//  
//
//  Created by Ahmad Hemeda on 26/03/2024.
//

import Foundation

class BaseAPIRequest<Response: Decodable>: APIRequestProtocol {
    typealias ResponseType = Response
    let baseURL: URL
    let path: String
    let method: String
    let headers: [String: String]?
    let body: Data?
    
    init(baseURL: URL, path: String, method: String, headers: [String: String]? = nil, body: Data? = nil) {
        self.baseURL = baseURL
        self.path = path
        self.method = method
        self.headers = headers
        self.body = body
    }
}
